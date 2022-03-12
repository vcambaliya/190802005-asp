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
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id],[title],[discription],[status] FROM [service]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if(Button3.Text=="Update")
        {
           SqlCommand cmd = new SqlCommand("UPDATE [service] SET [title]=@title, [discription]=@discription, [status]=@status WHERE [id]=@id", con);
            cmd.Parameters.AddWithValue("@title", TextBox1.Text);
            cmd.Parameters.AddWithValue("@discription", TextBox2.Text);
            cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@id",ViewState["service_id"]);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();
            if (a == 1)
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                Button3.Text="Submit";
                Literal1.Text = "Data Update successfully completed!";
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                RadioButtonList1.ClearSelection();
                 Button3.Text="Submit";
                Literal1.Text = "Error!";
            }
        }
        else
        {
           SqlCommand cmd = new SqlCommand("INSERT INTO [service]([title],[discription],[status])VALUES (@title,@discription,@status)",con);
           cmd.Parameters.AddWithValue("@title", TextBox1.Text);
           cmd.Parameters.AddWithValue("@discription", TextBox2.Text);
           cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
           con.Open();
           int a = cmd.ExecuteNonQuery();
           con.Close();
           if (a == 1)
           {
               TextBox1.Text = string.Empty;
               TextBox2.Text = string.Empty;
               RadioButtonList1.ClearSelection();
               Literal1.Text = "Data Insert successfully completed!";
           }
           else
           {
               TextBox1.Text = string.Empty;
               TextBox2.Text = string.Empty;
               RadioButtonList1.ClearSelection();
               Literal1.Text = "Error!";
           }
        }
        Print();
        
    }
    
    protected void Button5_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id] ,[title],[discription],[status] FROM [service] WHERE [id]=" + btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][2].ToString();
        RadioButtonList1.SelectedValue = dt.Rows[0][3].ToString();
        ViewState["service_id"] = btn.CommandArgument;
        Button3.Text = "Update";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [service] WHERE [id]=@id", con);
        cmd.Parameters.AddWithValue("@id", btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Literal1.Text = "User Data DELETE Successfully";
        }
        else
        {
            Literal1.Text = "Data not DELETE";
        }
        Print();
    }
    
}