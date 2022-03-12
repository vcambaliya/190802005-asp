<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="_Default" %>

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
               <li>Gallery</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--Gallery-->
      <section class="gallery py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Our Gallery</h3>
            <div class="row grid gallery-info">
               <div class="col-lg-7 col-md-7 gallery-grids">
                  <figure class="effect-steve">
                     <img src="client_src/images/g1.jpg" alt="img15"/>
                     <figcaption>
                        <h2>Jeweler<span>Designs</span></h2>
                        <p>Lorem ipsum dolor sit ips</p>
                        <a href="client_src/images/g1.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        </a>
                     </figcaption>
                  </figure>
               </div>
               <div class="col-lg-5 col-md-5 gallery-grids">
                  <figure class="effect-steve">
                     <img src="client_src/images/g2.jpg" alt="img15"/>
                     <figcaption>
                        <h2>Jeweler<span>Designs</span></h2>
                        <p>Lorem ipsum dolor sit ips</p>
                        <a href="client_src/images/g2.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        </a>
                     </figcaption>
                  </figure>
               </div>
            </div>
            <div class="row grid gallery-info">
               <div class="col-lg-6 col-md-6 gallery-grids">
                  <figure class="effect-steve">
                     <img src="client_src/images/g3.jpg" alt="img15"/>
                     <figcaption>
                        <h2>Jeweler<span>Designs</span></h2>
                        <p>Lorem ipsum dolor sit ips</p>
                        <a href="client_src/images/g3.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        </a>
                     </figcaption>
                  </figure>
               </div>
               <div class="col-lg-6 col-md-6 gallery-grids">
                  <figure class="effect-steve">
                     <img src="client_src/images/g4.jpg" alt="img15"/>
                     <figcaption>
                        <h2>Jeweler<span>Designs</span></h2>
                        <p>Lorem ipsum dolor sit ips</p>
                        <a href="client_src/images/g4.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        </a>
                     </figcaption>
                  </figure>
               </div>
            </div>
            <div class="row grid gallery-info">
               <div class="col-lg-5 col-md-5 gallery-grids">
                  <figure class="effect-steve">
                     <img src="client_src/images/g6.jpg" alt="img15"/>
                     <figcaption>
                        <h2>Jeweler<span>Designs</span></h2>
                        <p>Lorem ipsum dolor sit ips</p>
                        <a href="client_src/images/g6.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        </a>
                     </figcaption>
                  </figure>
               </div>
               <div class="col-lg-7 col-md-7 gallery-grids">
                  <figure class="effect-steve">
                     <img src="client_src/images/g7.jpg" alt="img15"/>
                     <figcaption>
                        <h2>Jeweler<span>Designs</span></h2>
                        <p>Lorem ipsum dolor sit ips</p>
                        <a href="client_src/images/g7.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        </a>
                     </figcaption>
                  </figure>
               </div>
            </div>
         </div>
      </section>
      <!--//Gallery-->
      
    


</asp:Content>

