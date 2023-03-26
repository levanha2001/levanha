<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <titleWebsite khách sạn</title>
      <!-- css files -->
      <link rel="stylesheet" href="assets/css/bootstrap.css">
      <!-- Bootstrap-Core-CSS -->
      <link rel="stylesheet" href="assets/css/style.css" type="text/css" media="all" />
      <!-- Style-CSS --> 
      <!-- //css files -->
      <!-- js -->
      <script type="text/javascript" src="assets/js/jquery-2.1.4.min.js"></script>
      <script type="text/javascript" src="assets/js/bootstrap.js"></script> 
      <!-- //js -->
      <style type="text/css">
    
         .footer-w3 {margin-top: 3px;}
         . {font-family: verdana;}
         h5 { font-family: verdana;}
		 .get-touch-bottom {
				text-align: center;
			}
      </style>
   </head>
   <body style="background-color: #008080">
      <form id="form1" runat="server">

         <div class="header">
            <div class="agile-top-header">
               <div class="banner-agile-top">
                  <div class="number">
                     <h3><i class="fa fa-phone" aria-hidden="true"></i>Lê Văn Hà</h3>
                     <div class="top-icons">
                        <ul>
                        </ul>
                     </div>
                  </div>
                  <div class="clearfix"></div>
               </div>
                <center>
               <div class="logo">
                  <h1><a href="index.aspx"><span style="color: #FFFFFF">Hunbel Hotel</span></a></h1>
               </div>
                    </center>
               <div class="top-left">
                  <div class="top-nav">
                     <nav class="navbar navbar-default">

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                           <nav class="linkEffects linkHoverEffect_2">
                              <ul>
                                 <li><a href="index.aspx" data-link-alt="Home" class="scroll"><span>Trang chủ</span></a></li>
                                 <li><a href="Order.aspx" data-link-alt="Service" class="scroll"><span>Dịch vụ</span></a></li>
                                 <li><a href="news.aspx" data-link-alt="News" class="scroll"><span>Tin tức</span></a></li>
                                 <li><a href="Contact.aspx" data-link-alt="Contact" class="active"><span>Liên hệ</span></a></li>
                                 <li><a href="Admin/Dangnhap.aspx" data-link-alt="Admin" class="scroll"><span>Admin</span></a></li>
                              </ul>
                           </nav>
                        </div>
                     </nav>
                     <div class="clearfix"> </div>
                  </div>
               </div>
               <div class="clearfix"> </div>

            </div>
         </div>

		<div class="contact-form" id="contact-form">
			<div class="container" style="margin-top:100px ; margin-bottom:130px">
				<center>
                <div class="contact-agileits-title">
					<h3 style =" color: #FFFFFF">Đóng góp ý kiến</h3>
				</div>
                    </center>
				<div class="clearfix"></div>

				<div class="get-touch" id="contact1">
					<div class="get-touch-main">
                        <center>
						<div class="get-touch-bottom" style="border-color: #008080; border-style: solid; width:60%;">
			
                            <form action="#" method="post">
								<asp:TextBox ID="txtfullname" runat="server" placeholder="Họ và tên" required="" ForeColor="White" Width="100%" BorderColor="#CCFFFF"></asp:TextBox>
								<asp:TextBox ID="txtphone" runat="server" placeholder="Số điện thoại" required="" ForeColor="White" Width="100%" BorderColor="#CCFFFF"></asp:TextBox>
								<asp:TextBox ID="txtemail" runat="server" placeholder="Email" required="" ForeColor="White" Width="100%" BorderColor="#CCFFFF"></asp:TextBox>
                                <asp:TextBox ID="Message" runat="server" placeholder="Ý kiến phản hồi của bạn" required="" TextMode="MultiLine" BorderColor="#CCFFFF" ForeColor="White" Height="200px" Width="100%"></asp:TextBox>
								<asp:Label ID="msg" runat="server" ForeColor="Black"></asp:Label>
								<asp:Button ID="btnthem" runat="server" Text="Submit" OnClick="btnthem_Click"  OnClientClick="return confirm('Bạn có muốn gửi liên hệ?')"/>
							</form>
                   
						</div>
                            </center>
					</div>
				</div>

			</div>
		</div>

           <div class="footer-w3" style="background-color: #C0C0C0; bottom: 0px">
            <p style="color: #000000">&copy; 2022 Website Hotel</p>
         </div>

      </form>
   </body>
</html>