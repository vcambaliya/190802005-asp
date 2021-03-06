<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="_Default" %>

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
               <li>Contact</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--contact -->
      <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container-fluid py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Contact US</h3>
            <div class="row agile-info-para">
               <!--contact-map -->
               <div class="col-lg-6 address_mail_footer_grids">
                  <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3539.812628729253!2d153.014155!3d-27.4750921!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b915a0835840a2f%3A0xdd5e3f5c208dc0e1!2sMelbourne+St%2C+South+Brisbane+QLD+4101%2C+Australia!5e0!3m2!1sen!2sin!4v1492257477691"></iframe>
               </div>
               <!--//contact-map -->
               <!--contact-form-->
               <div class="col-lg-6 contact-form ">
                  <div class=" row mb-lg-4 mb-3">
                     <div class="col-lg-7 col-md-6 col-sm-6 contact-list-grid">
                        <h4> Get In Touch </h4>
                        <div class="footer_grid_left">
                           <ul>
                              <li>
                                 <span class="fas fa-map-marker"> </span>
                                 <p>3481 Melrose Place, Beverly Hills
                              </li>
                              <li>
                                 <span class="fas fa-envelope"> </span>
                                 <p ><a href="mailto:info@example.com">info@example1.com</a> 
                                 </p>
                              </li>
                              <li>
                                 <span class="fas fa-fax"></span>
                                 <p>(000)1122333</p>
                              </li>
                              <li>
                                 <span class="fas fa-phone-volume"> </span>
                                 <p>+(000) 123 4565 32</p>
                              </li>
                           </ul>
                        </div>
                     </div>
                     <div class="col-lg-5 col-md-6 col-sm-6 contact-list-grid">
                        <h4>About Us </h4>
                        <div class="contact-about">
                           <p>incididunt ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt Lorem ipsum dolor</p>
                        </div>
                     </div>
                  </div>
                  <form action="#" method="post">
                     <div class=" agile-wls-contact-mid">
                        <div class="form-group contact-forms">
                           <input type="text" class="form-control" placeholder="Name" required="" >
                        </div>
                        <div class="form-group contact-forms">
                           <input type="email" class="form-control" placeholder="Email" required="">
                        </div>
                        <div class="form-group contact-forms">
                           <input type="text" class="form-control" placeholder="Phone" required="">
                        </div>
                        <div class="form-group contact-forms">
                           <textarea class="form-control" rows="3" placeholder="Message" required=""></textarea>
                        </div>
                        <button type="submit" class="btn btn-block sent-butnn">Submit</button>
                     </div>
                  </form>
               </div>
            </div>
            <!--//contact-map -->
         </div>
      </section>
      <!--//contact  -->
      
      
      </asp:Content>

