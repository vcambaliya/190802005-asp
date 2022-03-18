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
     //DeleteCommand="DELETE FROM [Product] WHERE [id] = @id" 
     //InsertCommand="INSERT INTO [Product] ([ParoductName], [Category_id], [Discription], [Image], [Status]) VALUES (@ParoductName, @Category_id, @Discription, @Image, @Status)" 
     //ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
     //SelectCommand="SELECT [id], [ParoductName], [Category_id], [Discription], [Image], [Status] FROM [Product]" 
     //UpdateCommand="UPDATE [Product] SET [ParoductName] = @ParoductName, [Category_id] = @Category_id, [Discription] = @Discription, [Image] = @Image, [Status] = @Status WHERE [id] = @id">
                                        
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDrop();
            Print();
        }
    }
    public void BindDrop()
    {
        SqlDataAdapter adpt= new SqlDataAdapter("SELECT [id],[Category_Name],[Status] FROM [Category] WHERE [Status]=1", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        DropDownList1.DataTextField = "Category_Name";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataSource = dt;
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("Please select category", ""));
        DropDownList1.Items[0].Selected = true;
        DropDownList1.Items[0].Attributes["disabled"] = "disabled";
    }
    public void Clear()
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        DropDownList1.ClearSelection();
        RadioButtonList1.ClearSelection();
    }
    public void Print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT Product.id, [ProductName], [Category_id], [Discription], [Image], Product.Status,[Category_Name] FROM [Product], [Category] WHERE [Category_id]=Category.id ", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn=(Button)sender;
        FileUpload1.SaveAs(Server.MapPath("~/Uploads/"+FileUpload1.FileName));
        SqlCommand cmd = new SqlCommand("INSERT INTO [Product] ([ProductName], [Category_id], [Discription], [Image], [Status]) VALUES (@ProductName, @Category_id, @Discription, @Image, @Status)", con);
        cmd.Parameters.AddWithValue("@ProductName",TextBox1.Text);
        cmd.Parameters.AddWithValue("@Category_id",DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@Discription",TextBox2.Text);
        cmd.Parameters.AddWithValue("@Image",FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@Status",RadioButtonList1.SelectedValue);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Clear();
            Literal1.Text = "Data Upload Successfully";
            Print();
        }
        else
        {
            Clear();
            Literal1.Text = "Error";
            Print();
        }
        ViewState["product_id"] = btn.CommandArgument;

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("DELETE FROM [Product] WHERE [id] = @id", con);
        
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //edit
    }
    
}