<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <!-- banner -->
      <div class="inner_page-banner">
      </div>
      <!--//banner -->
      <!-- short -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
                  <a href="Home.aspx">Home</a>
                  <span>/ /</span>
               </li>
               <li>service</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
    
     <section>
         <div class="ser-middle-service">
            <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
               <div class="using-ser-text">
                  <p>Our team of highly trained jewellers perform a range of jewellery repairs. In fact, we perform more repairs than any other workshop in New Zealand, over 400 a day! We have a wide range of services available. Contact us if you require something .</p>
               </div>
               <div class="row service-inner-agile">
                 <asp:Repeater ID="Repeater1" runat="server">
                 <ItemTemplate>
                  <div class="col-md-4 col-sm-12 ser-w3l-jst-abt">
                     <div class="ser-back-ground p-3 text-center">
                        <div class="ser-agile-para px-0">
                           <h5><%# Eval("title") %></h5>
                           <p class="text-center"><%# Eval("discription").ToString().Length> 180 ?Eval("discription").ToString().Substring(0,180) +" ....": Eval("discription").ToString() %></p>
                           <div class="outs_more-buttn">
                              <a href="#">Read More</a>
                           </div>
                        </div>
                     </div>
                  </div></ItemTemplate></asp:Repeater>
               </div>
            </div>
         </div>
      </section>
      <!--//services-->
      
</asp:Content>

