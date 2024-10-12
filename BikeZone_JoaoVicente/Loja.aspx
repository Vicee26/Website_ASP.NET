<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loja.aspx.cs" Inherits="BikeZone_JoaoVicente.LojaTeste" %>

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
                            <h1 class="request_text">Selecione os produtos</h1>
                            <div>
                            <div class="form-group">
                                <asp:TextBox ID="tb_nome" class="email-bt" placeholder="Name" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RV_nome" runat="server" ErrorMessage="Falta preencher o nome." Text="*" ControlToValidate="tb_nome" ForeColor="#CC0000" style="font-size:20px"></asp:RequiredFieldValidator>
                                
                            

                                <div>
                                <asp:TextBox ID="tb_morada" class="massage-bt" placeholder="Morada" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RV_morada" runat="server" Text="*" ControlToValidate="tb_morada" ForeColor="#CC0000" style="font-size:20px" ErrorMessage="Falta preencher a morada."></asp:RequiredFieldValidator>
                                </div>

                                <div>
                                <asp:TextBox ID="tb_email" class="email-bt" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RV_email" runat="server" ErrorMessage="Falta preencher o email." Text="*" ControlToValidate="tb_email" ForeColor="#CC0000" style="font-size:20px"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="REV_email" runat="server" ErrorMessage="O email não está correto." ControlToValidate="tb_email" Text="*" ForeColor="#CC0000" style="font-size:20px"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>

                                <div>
                                <asp:TextBox ID="tb_codPost" class="email-bt" placeholder="Código Postal" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RV_codPost" runat="server" ErrorMessage="Falta preencher o código postal." Text="*" ControlToValidate="tb_codPost" ForeColor="#CC0000"  style="font-size:20px"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="REV_cod_Post" runat="server" ErrorMessage="O código postal não está correto." ControlToValidate="tb_codPost" ForeColor="#CC0000" style="font-size:20px" ValidationExpression="^\d{4}(-\d{3})?$">*</asp:RegularExpressionValidator>
                                </div>

                                <div>
                                <h1 class="request_text">Insira a sua data de nascimento</h1>
                                <asp:TextBox ID="tb_dtNasc" class="email-bt" placeholder="Data de Nascimento" runat="server" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RV_dtNasc" runat="server" ErrorMessage="Falta preencher a data de nascimento." Text="*" ForeColor="#CC0000" ControlToValidate="tb_dtNasc"></asp:RequiredFieldValidator>
                                </div>

                                <div>
                                <h1 class="request_text">Selecione o seu género</h1>
                                    <div style="text-align:center;">
                                    <asp:RadioButtonList ID="RB_gender" runat="server" RepeatDirection="Vertical">
                                        <asp:ListItem Text="Masculino" Value="Masculino" style="font-size:20px; color:white"></asp:ListItem>
                                        <asp:ListItem Text="Feminino" Value="Feminino" style="font-size:20px; color:white"></asp:ListItem>
                                    </asp:RadioButtonList>
                                    </div>
                                </div>
                                <asp:RequiredFieldValidator ID="RV_gender" runat="server" ErrorMessage="Falta preencher o género." Text="*" ForeColor="#CC0000" ControlToValidate="RB_gender"></asp:RequiredFieldValidator>
                                

                                <div>
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <h1 class="request_text">Selecione o tipo do artigo</h1>
                                            <asp:DropDownList ID="ddl_tipo" class="email-bt" runat="server" style="padding-bottom:5px" AutoPostBack="True" OnSelectedIndexChanged="ddl_tipo_SelectedIndexChanged1">
                                                <asp:ListItem Selected="True" Value="">---</asp:ListItem>
                                                <asp:ListItem>BTT</asp:ListItem>
                                                <asp:ListItem>BMX</asp:ListItem>
                                                <asp:ListItem>Elétricas</asp:ListItem>
                                                <asp:ListItem>Trotinetes</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RV_tipo" runat="server" ErrorMessage="Falta preencher o tipo do produto" Text="*" ForeColor="#CC0000" ControlToValidate="ddl_tipo"></asp:RequiredFieldValidator>

                                            <h1 class="request_text">Selecione a marca da bicicleta</h1>
                                            <asp:DropDownList ID="ddl_marca" runat="server" style="padding-bottom:5px" class="email-bt" AutoPostBack="True" OnSelectedIndexChanged="ddl_marca_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RV_marca" runat="server" Text="*" ControlToValidate="ddl_marca" ForeColor="#CC0000"  style="font-size:20px" ErrorMessage="Falta preencher a marca do produto."></asp:RequiredFieldValidator>

                                            <h1 class="request_text">Selecione o modelo da bicicleta</h1>
                                            <asp:DropDownList ID="ddl_modelo" runat="server" style="padding-bottom:5px" class="email-bt"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RV_modelo" runat="server" ErrorMessage="Falta preencher o modelo do produto." Text="*" ControlToValidate="ddl_modelo" ForeColor="#CC0000"  style="font-size:20px"></asp:RequiredFieldValidator>


                                            <p></p>
                                            <p></p>

                                            <p></p>

                                            <p></p>


                                            <asp:ImageButton ID="btn_cart" runat="server" ImageUrl="~/Loja/images/cart.png" style="margin-top:30px; margin-bottom:10px" OnClick="btn_cart_Click" />
                                            <br />
                                            <asp:Label ID="lbl_prod" runat="server" class="request_text"></asp:Label>
                                            <br />
                                            <asp:Label ID="lbl_cart" runat="server" style="color:white;font-size:20px"></asp:Label>
                                        </ContentTemplate>

                                    </asp:UpdatePanel>

                  
                                </div>
                                </div>
                            </div>
    
                            <p></p>
                            <p>

                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" style="font-size:20px"/>

                            <p>

                            <asp:Button ID="btn_enviar"  runat="server" Text="Enviar" class="send_btn" style="margin-top:20px" OnClick="btn_enviar_Click"/>
           
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
                            <div class="call_text"><a href="#"><img src="Loja/images/map-icon.png"/><span class="padding_left_0">Page when looking at its layou_0">Page when looking at its layou            <div class="call_text"><a href="#"><img src="Loja/images/call-icon.png"/><span class="padding_left_0">Call Now  +01 123467890</span></a></div>
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
