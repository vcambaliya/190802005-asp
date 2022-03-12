<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="slider">
            <div class="callbacks_container">
               <ul class="rslides" id="slider4">
                  <li>
                     <div class="slider-img one-img">
                        <div class="container">
                           <div class="slider-info ">
                              <h5>Jewelry Collection</h5>
                              <div class="bottom-info">
                                 <h4 class="text-right">Turn Your Dream</h4>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
                  <li>
                     <div class="slider-img two-img">
                        <div class="container">
                           <div class="slider-info ">
                              <h5>Beautiful Jewelry</h5>
                              <div class="bottom-info">
                                 <h4 class="text-right">New Classic Items</h4>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
                  <li>
                     <div class="slider-img three-img">
                        <div class="container">
                           <div class="slider-info">
                              <h5>Unique Jewelry</h5>
                              <div class="bottom-info">
                                 <h4 class="text-right">
                                    Shine With Luxury
                                 </h4>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
               </ul>
            </div>
            <!-- This is here just to demonstrate the callbacks -->
            <!-- <ul class="events">
               <li>Example 4 callback events</li>
               </ul>-->
            <div class="clearfix"></div>
         </div>
      </div>
      <!-- //banner -->
 <!--about -->
      <section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-4">
            <div class="row agile-abt-info ">
               <div class="col-lg-6 w3layouts-left-side-img">
                  <img src="client_src/images/ab1.jpg" class="img-thumbnail" alt="">
               </div>
               <div class="col-lg-5 offset-lg-1 info-sub-w3 pb-lg-3 pb-md-2 pb-2">
                  <div class="jst-wthree-text">
                     <h2>PERFECT<br>JEWERLY FOR<br>
                        YOU
                     </h2>
                  </div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                     Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                     Lorem ipsum dolor sit amet
                  </p>
                  <div class="outs_more-buttn">
                     <a href="AboutUs.aspx">Read More</a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--//about -->
      <!--services-->
      <section class="service py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title clr text-center mb-lg-5 mb-md-4  mb-sm-4 mb-3">services</h3>
            <div class="row agile-service-grids-all">
               <div class="col-lg-6 col-md-6 w3layouts-service-list">
                  <div class="row white-shadow mb-3">
                     <div class="col-md-3 col-sm-3 col-3 white-left">
                        <span class="fas fa-gem banner-icon"></span>
                     </div>
                     <div class="col-md-9 col-sm-9 col-9 white-right">
                        <h4>Jewelry<br>Design</h4>
                        <p>delectus reiciendis maiores alias consequatur aut.maiores alias</p>
                     </div>
                  </div>
                  <div class="row white-shadow">
                     <div class="col-md-3 col-sm-3 col-3 white-left">
                        <span class="fas fa-magic banner-icon"></span>
                     </div>
                     <div class="col-md-9 col-sm-9 col-9 white-right">
                        <h4>Jewelry <br>Cleaning</h4>
                        <p>delectus reiciendis maiores alias consequatur aut.maiores alias</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-6 col-md-6  w3layouts-service-list">
                  <div class="row white-shadow  mb-3">
                     <div class="col-md-3 col-sm-3 col-3 white-left">
                        <span class="fas fa-golf-ball banner-icon"></span>
                     </div>
                     <div class="col-md-9 col-sm-9 col-9 white-right">
                        <h4>Jewelry <br>Appraisal</h4>
                        <p>delectus reiciendis maiores alias consequatur aut.maiores alias</p>
                     </div>
                  </div>
                  <div class="row white-shadow">
                     <div class="col-md-3 col-sm-3 col-3 white-left">
                        <span class="fas fa-cogs banner-icon"></span>
                     </div>
                     <div class="col-md-9 col-sm-9 col-9 white-right">
                        <h4>Jewelry <br>Repair</h4>
                        <p>delectus reiciendis maiores alias consequatur aut.maiores alias</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--//services-->
       <!--Our Design-->
      <section class="blog py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Our Designs</h3>
            <!--Horizontal Tab-->
            <div id="horizontalTab">
               <ul class="resp-tabs-list">
                  <li>Designs-1</li>
                  <li>Designs-2</li>
                  <li>Designs-3</li>
                  <li>Designs-4</li>
               </ul>
               <div class="resp-tabs-container">
                  <div class="tab1">
                     <div class="latest-blog">
                        <div class=" blog-jewel-agile-left">
                           <h4 class="mb-3"> Bracelets</h4>
                           <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor. Integer laoreet placerat suscipit. Sed sodales scelerisque commodo. Nam porta</p>
                        </div>
                        <div class="blog-txt-img">
                           <img src="client_src/images/ab3.jpg" class="img-thumbnail" alt="">
                        </div>
                     </div>
                  </div>
                  <div class="tab2">
                     <div class="latest-blog">
                        <div class=" blog-jewel-agile-left">
                           <h4 class="mb-3">Bangles</h4>
                           <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor. Integer laoreet placerat suscipit. Sed sodales scelerisque commodo. Nam porta</p>
                        </div>
                        <div class="blog-txt-img">
                           <img src="client_src/images/ab2.jpg" class="img-thumbnail" alt="">
                        </div>
                     </div>
                  </div>
                  <div class="tab3">
                     <div class="latest-blog">
                        <div class=" blog-jewel-agile-left">
                           <h4 class="mb-3">Rings</h4>
                           <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor. Integer laoreet placerat suscipit. Sed sodales scelerisque commodo. Nam porta</p>
                        </div>
                        <div class="blog-txt-img">
                           <img src="client_src/images/ab4.jpg" class="img-thumbnail" alt="">
                        </div>
                     </div>
                  </div>
                  <div class="tab4">
                     <div class="latest-blog">
                        <div class=" blog-jewel-agile-left">
                           <h4 class="mb-3">NeckLess</h4>
                           <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor. Integer laoreet placerat suscipit. Sed sodales scelerisque commodo. Nam porta</p>
                        </div>
                        <div class="blog-txt-img">
                           <img src="client_src/images/abb1.jpg" class="img-thumbnail" alt="">
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--//Our Design -->
      <!-- Lates Design -->
      <section class="latest-design py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-4">
            <h3 class="title text-center clr mb-lg-5 mb-md-4 mb-sm-4 mb-3">Latest Designs</h3>
            <div class="state-us ">
               <div class="row">
                  <div class="col-lg-4 col-md-4 col-sm-4 latest-jewel-grid">
                    <figure class="snip1321">
                        <img src="client_src/images/4.jpg" class="img-thumbnail" alt="">
                      <figcaption>
                           <i class="ion-upload"></i>
                           <h4>Jeweler</h4>
                           <h2>Designs</h2>
                        </figcaption>
                       <a href="AboutUs.aspx"></a>                     </figure>
                  </div>
                  <div class="col-lg-4 col-md-4 col-sm-4 latest-jewel-grid">
                    <figure class="snip1321">
                        <img src="client_src/images/1.jpg" class="img-thumbnail" alt="">
                      <figcaption>
                           <i class="ion-upload"></i>
                           <h4>Jeweler</h4>
                           <h2>Designs</h2>
                        </figcaption>
                       <a href="about.html"></a>                     </figure>
                  </div>
                  <div class="col-lg-4 col-md-4 col-sm-4 latest-jewel-grid">
                    <figure class="snip1321">
                        <img src="client_src/images/2.jpg" class="img-thumbnail" alt="">
                      <figcaption>
                           <i class="ion-upload"></i>
                           <h4>Jeweler</h4>
                           <h2>Designs</h2>
                        </figcaption>
                       <a href="AboutUs.aspx"></a>                     </figure>
                  </div>
               </div>
               <div class="row mt-lg-5 mt-md-3 mt-3">
                  <div class="col-lg-4 col-md-4 col-sm-4 latest-jewel-grid">
                    <figure class="snip1321">
                        <img src="client_src/images/3.jpg" class="img-thumbnail" alt="">
                      <figcaption>
                           <i class="ion-upload"></i>
                           <h4>Jeweler</h4>
                           <h2>Designs</h2>
                        </figcaption>
                       <a href="AboutUs.aspx"></a>                     </figure>
                  </div>
                  <div class="col-lg-4 col-md-4 col-sm-4 latest-jewel-grid">
                    <figure class="snip1321">
                        <img src="client_src/images/4.jpg" class="img-thumbnail" alt="">
                      <figcaption>
                           <i class="ion-upload"></i>
                           <h4>Jeweler</h4>
                           <h2>Designs</h2>
                        </figcaption>
                       <a href="AboutUs.aspx"></a>                     </figure>
                  </div>
                  <div class="col-lg-4 col-md-4 col-sm-4 latest-jewel-grid">
                    <figure class="snip1321">
                        <img src="client_src/images/1.jpg" class="img-thumbnail" alt="">
                      <figcaption>
                           <i class="ion-share"></i>
                           <h4>Jeweler</h4>
                           <h2>Designs</h2>
                        </figcaption>
                       <a href="AboutUs.aspx"></a>                     </figure>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--//Lates Design -->
      <!--Go to Shop -->
      <section class="go-to-shop">
         <div class="container-fluid">
            <div class="row">
               <div class="col-md-6 agile-img-design-left">
                  <div class="shopping-degine">
                     <h4 class=" mb-lg-4 mb-3">PERFECT
                        JEWERLY FOR
                        YOU  
                     </h4>
                     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet</p>
                     <div class="w3layouts-jewel-shop">
                        <a href="AboutUs.aspx">Get More</a>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 agile-img-design-right">
                  <div class="shopping-degine">
                     <h4 class=" mb-lg-4 mb-3">PERFECT
                        JEWERLY FOR
                        YOU  
                     </h4>
                     <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet</p>
                     <div class="w3layouts-jewel-shop">
                        <a href="AboutUs.aspx">Get More</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--//Go to Shop-->
      
     
</asp:Content>

