<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="final.aspx.cs" Inherits="BikeZone_JoaoVicente.final" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BikeZone</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <!-- mobile metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="viewport" content="initial-scale=1, maximum-scale=1" />
  <!-- site metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <!-- bootstrap css -->
  <link rel="stylesheet" type="text/css" href="Loja/css/bootstrap.min.css" />
  <!-- style css -->
  <link rel="stylesheet" type="text/css" href="Loja/css/style.css" />
  <!-- Responsive-->
  <link rel="stylesheet" href="Loja/css/responsive.css" />
  <!-- fevicon -->
  <link rel="icon" href="Loja/images/fevicon.png" type="image/gif" />
  <!-- Scrollbar Custom CSS -->
  <link rel="stylesheet" href="Loja/css/jquery.mCustomScrollbar.min.css" />
  <!-- Tweaks for older IEs-->
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
  <!-- owl stylesheets --> 
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700|Raleway:400,700,800&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="Loja/css/owl.carousel.min.css" />
  <link rel="stylesoeet" href="Loja/css/owl.theme.default.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen" />
</head>
<body>
    <form id="form1" runat="server">
         <div>
     <!-- header section start -->
   <div class="header_section header_bg">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
         <a href="#" class="logo"><img src="Loja/images/BikeZoneLogo.jpg" /></a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                                      <li class="nav-item">
                           <p></p>
                       </li>
                       <li class="nav-item">
    <p></p>
</li>
                       <li class="nav-item">
    <p></p>
</li>
                       <li class="nav-item">
    <p></p>
</li>
                       <li class="nav-item">
    <p></p>
</li>
                       <li class="nav-item">
    <p></p>
</li>
                       <li class="nav-item">
    <p></p>
</li>
                      <li class="nav-item">
                         <a class="nav-link" href="gestao_utilizadores.aspx">Gerir Utilizadores</a>
                      </li>
            </ul>
            <div class="form-inline my-2 my-lg-0">
               <div class="login_menu">
                  <ul>
                     <li><a href="Login.aspx">Login</a></li>
                     <li><a href="Login.aspx"><img src="Loja/images/search-icon.png" /></a></li>
                  </ul>
               </div>
               <div></div>
            </div>
         </div>
         <div id="main">
            <span style="font-size:36px;cursor:pointer; color: #fff" onclick="openNav()"><img src="Loja/images/toggle-icon.png" style="height: 30px;"/></span>
         </div>
      </nav>
      <!-- banner section start -->
      <div class="banner_section layout_padding">
         <div id="main_slider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container">
                     <div class="row">
                        <div class="col-md-7">
                           <div class="best_text">Best</div>
                           <div class="image_1"><img src="Loja/images/img-1.png"/></div>
                        </div>
                        <div class="col-md-5">
                           <h1 class="banner_taital">New Model Cycle</h1>
                           <p class="banner_text">It is a long established fact that a reader will be distracted by the readable content </p>
                           <div class="contact_bt"><a href="#">Shop Now</a></div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <div class="row">
                        <div class="col-md-7">
                           <div class="best_text">Best</div>
                           <div class="image_1"><img src="Loja/images/img-1.png"/></div>
                        </div>
                        <div class="col-md-5">
                           <h1 class="banner_taital">New Model Cycle</h1>
                           <p class="banner_text">It is a long established fact that a reader will be distracted by the readable content </p>
                           <div class="contact_bt"><a href="#">Shop Now</a></div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <div class="row">
                        <div class="col-md-7">
                           <div class="best_text">Best</div>
                           <div class="image_1"><img src="Loja/images/img-1.png"/></div>
                        </div>
                        <div class="col-md-5">
                           <h1 class="banner_taital">New Model Cycle</h1>
                           <p class="banner_text">It is a long established fact that a reader will be distracted by the readable content </p>
                           <div class="contact_bt"><a href="#">Shop Now</a></div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
            <i class="fa fa-angle-left"></i>
            </a>
            <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
            <i class="fa fa-angle-right"></i>
            </a>
         </div>
      </div>
      <!-- banner section end -->
   </div>
   <!-- header section end -->
      <!---------------------------------------------------->


          <div class="contact_section layout_padding"> 
             <div class="container"> 
                 <div class="contact_main"> 
                     <h1 class="request_text">Informações</h1>
                     <div>
                        <div class="form-group">
                            <div style="font-size:80px; color:white">
                                <p>Nome: <asp:Label ID="lbl_nome" runat="server"></asp:Label></p>
                            </div>
                            <div style="font-size:80px; color:white">
                                <p>Morada: <asp:Label ID="lbl_morada" runat="server"></asp:Label></p>
                            </div>
                            <div style="font-size:80px; color:white">
                                <p>Email: <asp:Label ID="lbl_email" runat="server"></asp:Label></p>
                            </div>
                            <div style="font-size:80px; color:white">
                                <p>Código Postal: <asp:Label ID="lbl_codPost" runat="server"></asp:Label></p>
                            </div>
                            <div style="font-size:80px; color:white">
                                <p>Data de Nascimento: <asp:Label ID="lbl_dtNasc" runat="server"></asp:Label></p>
                            </div>
                            <div style="font-size:80px; color:white">
                                <p>Género: <asp:Label ID="lbl_gender" runat="server"></asp:Label></p>
                            </div>
                            
                            <h1 style="color:white">Produtos no carrinho:</h1>
                            <div style="font-size:30px; color:white">
                                
                                <asp:Label ID="lbl_produtos" runat="server"></asp:Label>
                            </div>
                            
                            <div>
                                <br />
                                <br />
                                <br />
                                <asp:ImageButton ID="btn_pdf" runat="server" ImageUrl="~/Loja/images/pdf.jpg" style="margin-right: 5px" OnClick="btn_pdf_Click" />
                                <asp:ImageButton ID="btn_excel" runat="server" ImageUrl="~/Loja/images/excel.png" style="margin-left: 5px" OnClick="btn_excel_Click" />
                            </div>


                         </div>
                     </div>
        
                     <p></p>
                     <p>

                     
                     </p>

    
                 </div>
                 </div> 
         </div>
         <!---------------------------------------------------->
         <div class="footer_section layout_padding">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-lg-8 col-sm-12 padding_0">
                     <div class="map_main">
                        <div class="map-responsive">
                          <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&amp;q=Eiffel+Tower+Paris+France" width="600" height="400" frameborder="0" style="border:0; width: 100%;" allowfullscreen=""></iframe>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-4 col-sm-12">
                     <div class="call_text"><a href="#"><img src="Loja/images/map-icon.png"/><span class="padding_left_0">Page when looking at its layou</span></a></div>
                     <div class="call_text"><a href="#"><img src="Loja/images/call-icon.png"/><span class="padding_left_0">Call Now  +01 123467890</span></a></div>
                     <div class="call_text"><a href="#"><img src="Loja/images/mail-icon.png"/><span class="padding_left_0">demo@gmail.com</span></a></div>
                     <div class="social_icon">
                        <ul>
                           <li><a href="#"><img src="Loja/images/fb-icon1.png"/></a></li>
                           <li><a href="#"><img src="Loja/images/twitter-icon.png"/></a></li>
                           <li><a href="#"><img src="Loja/images/linkedin-icon.png"/></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- footer section end -->
         <!-- copyright section start -->
         <div class="copyright_section">
            <div class="container">
               <p class="copyright_text">&#169 2024 - ATEC - João Vicente</p>
            </div>
         </div>
         <!-- copyright section end -->    
         <!-- Javascript files-->
  
         <script src="Loja/js/jquery.min.js"></script>
         <script src="Loja/js/popper.min.js"></script>
         <script src="Loja/js/bootstrap.bundle.min.js"></script>
         <script src="Loja/js/jquery-3.0.0.min.js"></script>
         <script src="Loja/js/plugin.js"></script>
         <!-- sidebar -->
         <script src="Loja/js/jquery.mCustomScrollbar.concat.min.js"></script>
         <script src="Loja/js/custom.js"></script>
         <!-- javascript  -->
         <script src="Loja/js/owl.carousel.js"></script>
         <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
         <script>
            function openNav() {
              document.getElementById("mySidenav").style.width = "250px";
              document.getElementById("main").style.marginLeft = "250px";
            }
   
            function closeNav() {
              document.getElementById("mySidenav").style.width = "0";
              document.getElementById("main").style.marginLeft= "0";
    
            }

            $("#main").click(function(){
                $("#navbarSupportedContent").toggleClass("nav-normal")
            })
         </script>
                 </div>
    </form>
</body>
</html>
