<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
      <title>Tin tức mới</title>
      <!-- css files -->
      <link rel="stylesheet" href="assets/css/bootstrap.css">
      <!-- Bootstrap-Core-CSS -->
      <link rel="stylesheet" href="assets/css/style.css" type="text/css" media="all" />
      <!-- Style-CSS --> 
      <!-- //css files -->
      <!-- js -->
      <script type="text/javascript" src="assets/js/jquery-2.1.4.min.js"></script>
      <script type="text/javascript" src="assets/js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
      <!-- //js -->
      <style type="text/css">
     
         .footer-w3 {margin-top: 3px;}
         . {font-family: verdana;}
         h5 { font-family: verdana;}
         .portfolio-grids img {
            max-width: 70%;
        }
      </style>
   </head>
   <body style="background-color: #008080">
      <form id="form1" runat="server">
         <!-- header -->
         <div class="header">
            <div class="agile-top-header">
               <div class="banner-agile-top">
                  <div class="number">
                     <h3><i class="fa fa-phone" aria-hidden="true"></i>Lê Văn Hà</h3>
                  </div>
                  <div class="clearfix"></div>

               </div>
                <center>
               <div class="logo">
                  <h1><a href="Order.aspx"><span style="color: #FFFFFF">Hunbel Hotel</span></a></h1>
               </div>
    </center>
               <!-- navigation -->
               <div class="top-left">
                  <div class="top-nav">
                     <nav class="navbar navbar-default">
                        <!-- navbar-header -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                           <nav class="linkEffects linkHoverEffect_2">
                              <ul>
                                 <li><a href="index.aspx" data-link-alt="Home" class="scroll"><span>Trang chủ</span></a></li>
                                 <li><a href="Order.aspx" data-link-alt="Service" class="scroll"><span>Dịch vụ</span></a></li>
                                 <li><a href="news.aspx" data-link-alt="News" class="active"><span>Tin tức</span></a></li>
                                 <li><a href="Contact.aspx" data-link-alt="Contact" class="scroll"><span>Liên hệ</span></a></li>
                                 <li><a href="Admin/Dangnhap.aspx" data-link-alt="Admin" class="scroll"><span>Admin</span></a></li>
                              </ul>
                           </nav>
                        </div>
                     </nav>
                     <div class="clearfix"> </div>
                  </div>
               </div>
               <div class="clearfix"> </div>
               <!-- //navigation -->
            </div>
         </div>
  
         <!-- //header -->
         <!-- Gallery -->
         <div id="gallery" class="gallery" >
            <div class="container" style=" margin-top:100px">
                <center>
               <div class="agileits-gal-title">
                  <h3 style="color: #FFFFFF">Tin tức</h3>
               </div>
                    </center>
               <div class="sap_tabs">
                  <div id="horizontalTab">
                     <div class="clearfix"> </div>
                     <div class="resp-tabs-container" style="margin-top:20px; ">
                         <%
                             var news = new DataUtil().getAllNews();
                             foreach(var tin in news)
                             {
                                 Response.Write("<div class='tab-1'>");
                                 Response.Write("<div class='clearfix'></div>");
                                 Response.Write("<div class='col-md-6 portfolio-grids offer-gal-images offer-gal-img2'>");
                                 Response.Write("<img src='Admin/images/"+tin.news_avatar+"' />");
                                 Response.Write("</div>");
                                 Response.Write("<div class='col-md-6 portfolio-grids'>");
                                 Response.Write("<div class='gallery-text-agile agile-offer1'>");
                                 Response.Write("<h3>"+tin.news_title+"</h3>");
                                 Response.Write("<p>"+tin.news_description+"</p>");
                                 Response.Write("<p>"+tin.news_content+"</p>");
                                 Response.Write("</div>");
                                 Response.Write(" </div>");
                                 Response.Write(" <div class='clearfix'></div>");
                                 Response.Write(" </div>");
                             }
                             %>
                         
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- //Gallery -->
         <!--footer-->
       <div class="footer-w3" style="background-color: #C0C0C0; bottom: 0px">
            <p style="color: #000000">&copy; 2022 Website Hotel</p>
         </div>
      </form>
   </body>
</html>