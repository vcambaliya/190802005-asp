using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Print();
    }
    public void Print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id],[fullname],[email],[password] FROM [userdata1]",con);
        DataTable dt=new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource=dt;
        GridView1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [userdata1] WHERE [id]=@id",con);
        cmd.Parameters.AddWithValue("@id",btn.CommandArgument);
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id] ,[fullname],[email],[password] FROM [userdata1] WHERE [id]="+btn.CommandArgument,con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][2].ToString();
        TextBox3.Text = dt.Rows[0][3].ToString();
        ViewState["user_id"] = btn.CommandArgument;
        Button3.Text = "Update";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Button3.Text == "Update")
        {
            SqlCommand cmd = new SqlCommand("UPDATE [userdata1] SET [fullname]=@fullname,[email]=@email,[password]=@password WHERE [id]=@id ", con);
            cmd.Parameters.AddWithValue("@fullname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@password", TextBox3.Text);
            cmd.Parameters.AddWithValue("@id", ViewState["user_id"]);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();
            if (a == 1)
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                Button3.Text = "Submit";
                Literal1.Text = "Data Update successfully completed!";
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                Button3.Text = "Submit";
                Literal1.Text = "Error!";
            }
        }
        else
        { 
        SqlCommand cmd = new SqlCommand("INSERT INTO [userdata1]([fullname],[email],[password])VALUES (@fullname,@email,@password)",con);
           cmd.Parameters.AddWithValue("@fullname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@password", TextBox3.Text);
           con.Open();
           int a = cmd.ExecuteNonQuery();
           con.Close();
           if (a == 1)
           {
               TextBox1.Text = string.Empty;
               TextBox2.Text = string.Empty;
               TextBox3.Text = string.Empty;
               Literal1.Text = "Data Insert successfully completed!";
           }
           else
           {
               TextBox1.Text = string.Empty;
               TextBox2.Text = string.Empty;
              TextBox3.Text = string.Empty;
               Literal1.Text = "Error!";
           }
        }
        
        Print();
        
    }
}