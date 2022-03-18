<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Manage_Category.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

	<section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Manage Service
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <div class="form-group">
                                    <label for="exampleInputFullName">Category_Name</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"  placeholder="Enter Category Name"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Status</label>
                                   <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        RepeatDirection="Horizontal">
                                       <asp:ListItem Value="1">Active</asp:ListItem>
                                       <asp:ListItem Value="0">Deactive</asp:ListItem>
                                    </asp:RadioButtonList>                    
                                   
                                </div>
                                
                                <asp:Button ID="Button3" runat="server" Text="Submit" class="btn btn-info" 
                                    onclick="Button3_Click"></asp:Button>
                                
                                <div class="form-group">
                                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                       <Columns>
                                           <asp:TemplateField HeaderText="Id">
                                               <ItemTemplate>
                                                   <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Id") %>'></asp:Literal>
                                               </ItemTemplate>
                                           </asp:TemplateField>
                                           <asp:TemplateField HeaderText="Category">
                                               <ItemTemplate>
                                                   <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("Category_Name") %>'></asp:Literal>
                                               </ItemTemplate>
                                           </asp:TemplateField>
                                           <asp:TemplateField HeaderText="Status">
                                               <ItemTemplate>
                                                   <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("Status") %>'></asp:Literal>
                                               </ItemTemplate>
                                           </asp:TemplateField>
                                           <asp:TemplateField HeaderText="Delete">
                                               <ItemTemplate>
                                                   <asp:Button ID="Delete" runat="server" CommandArgument='<%# Eval("Id") %>' 
                                                       onclick="Delete_Click" Text="Delete" />
                                               </ItemTemplate>
                                           </asp:TemplateField>
                                           <asp:TemplateField HeaderText="Edit">
                                               <ItemTemplate>
                                                   <asp:Button ID="Button4" runat="server" CommandArgument='<%# Eval("Id") %>' 
                                                       onclick="Button4_Click" Text="Edit" />
                                               </ItemTemplate>
                                           </asp:TemplateField>
                                       </Columns>
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

