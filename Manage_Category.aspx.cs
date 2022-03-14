using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Print();
    }
    public void Print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id],[Category_Name],[Status] FROM [Category]",con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Button3.Text == "Submit")
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [Category]([Category_Name],[Status]) VALUES (@category_name,@status)",con);
            cmd.Parameters.AddWithValue("@category_name",TextBox1.Text);
            cmd.Parameters.AddWithValue("@status",RadioButtonList1.SelectedValue);
            con.Open();
            int s=cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                Literal1.Text = "Date Inserted SuccessFully";
            }
            else
            {
                TextBox1.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                Literal1.Text = "Date Not Insert";
            }
            Print();
        }
        else 
        {
            SqlCommand cmd = new SqlCommand("UPDATE [Category] SET [Category_Name]=@category,[Status]=@status WHERE [id]=@id",con);
            cmd.Parameters.AddWithValue("@category",TextBox1.Text);
            cmd.Parameters.AddWithValue("@status",RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@id",ViewState["category_id"]);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                TextBox1.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                Literal1.Text = "Data Updated Successfully";
                Button3.Text = "Submit";
            }
            else
            {
                TextBox1.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                Literal1.Text = "Data  Not Update";
                Button3.Text = "Submit";
            }
           
        }
        Print();
    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [Category] WHERE [id]=@id",con);
        cmd.Parameters.AddWithValue("@id",btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Literal1.Text = "Data Deleted Successfull";
        }
        else 
        {
            Literal1.Text = "Error";
        }
        Print();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [Id],[Category_Name],[Status] FROM [Category] WHERE [id]= "+btn.CommandArgument,con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        RadioButtonList1.SelectedValue=dt.Rows[0][2].ToString();
        ViewState["category_id"] = btn.CommandArgument;
        Button3.Text = "UPDATE";
    }
   
}