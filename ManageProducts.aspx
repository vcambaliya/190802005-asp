<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageProducts.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

	<section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Manage Products
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <div class="form-group">
                                    <label for="exampleInputFullName">Product Name</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"  placeholder="Enter Title"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputFullName">Category</label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"  placeholder="Select Category"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Discription</label>
                                   <asp:TextBox ID="TextBox2" runat="server" class="form-control"  
                                        placeholder="Enter Discription" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Image</label>       
                                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"  ></asp:FileUpload>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Status</label>
                                   <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        RepeatDirection="Horizontal">
                                       <asp:ListItem Value="1">Active</asp:ListItem>
                                       <asp:ListItem Value="0">Deactive</asp:ListItem>
                                    </asp:RadioButtonList>                    
                                   
                                </div>
                                
                                <asp:Button ID="Button3" runat="server" Text="Submit" class="btn btn-info" onclick="Button3_Click" 
                                    ></asp:Button>
                                
                                <div class="form-group">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        HorizontalAlign="Center">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Id">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Product_Name">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("ProductName") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Category">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("Category_Name") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Discription">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("Discription") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Image">
                                                <ItemTemplate>
                                                    <asp:Image ID="Image1" runat="server" Height="100px" 
                                                        ImageUrl='<%# Eval("image","~/Uploads/{0}") %>' Width="100px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("Status") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button4" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                        Text="Button" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button5" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                        Text="Delete" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:GridView>
                                           
                                </div>
                                <div class="form-group">
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                </div>
                               
                            </div>

                        </div>
                    </section>

            </div>
           
        </div>
        <!-- page end-->
        </div>
</section>

</asp:Content>

