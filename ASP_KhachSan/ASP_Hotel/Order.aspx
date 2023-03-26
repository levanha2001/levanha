<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
      <title>Đặt dịch vụ</title>
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
         .{font-family: verdana;}
         h5 { font-family: verdana;}
		 .ddlAdd {
		    width: 80%;
			padding: 10px;
		 }
      </style>
   </head>
   <body>
      <form id="form1" runat="server">
         
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
               <div class="top-left">
                  <div class="top-nav">
                     <nav class="navbar navbar-default">
                  
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                           <nav class="linkEffects linkHoverEffect_2">
                              <ul>
                                 <li><a href="index.aspx" data-link-alt="Home" class="scroll"><span>Trang chủ</span></a></li>
                                 <li><a href="Order.aspx" data-link-alt="Service" class="active"><span>Dịch vụ</span></a></li>
                                 <li><a href="news.aspx" data-link-alt="News" class="scroll"><span>Tin tức</span></a></li>
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
            </div>
         </div>

         <div class="slider">
            <div class="callbacks_container">
               <ul class="rslides" id="slider">

                  <li>
                    <div class="slider-info" style="right: 50%; top: 20%; left: 10%; background-color: #008080">
                        <h3 class="auto-style1">Hunbel Hotel</h3>
                        <p style="color:#fff; font-size: 16px; margin-left:5%; height: auto; left: 10%; bottom: 10%;">Hunbel tiêu chuẩn bao gồm các khách sạn 3-4 sao, nằm ở trung tâm
                            của các thành phố, thị trấn trên khắp cả nước. Với giá cả hợp lý cùng dịch vụ đạt chuẩn, khách sạn thuộc nhóm Hunbel với không gian 
                            gần gũi, ấm cúng mang đến cho khách hàng những trải nghiệm thân thiết, gần gũi như “ngôi nhà phương xa” của chính mình. Được thiết kế cho
                            cả các chuyến du lịch nghỉ ngơi và công tác, Hunbel Hotel cũng đề xuất thêm rất nhiều thiết bị làm kì nghỉ của bạn ở Vinh thêm
                            tiện lợi. Miễn phí wifi tất cả các phòng, quầy lễ tân 24 giờ, nhận/trả phòng nhanh, giữ hành lý, wifi công cộng chỉ là một vài trong số
                            những thiết bị được lắp đặt tại Hunbel Hotel ngoài một số khách sạn khác trong thành phố. Bước vào một trong 108 phòng khách,
                            bạn như rũ bỏ một ngày dài căng thẳng với một loạt tiện nghi như tivi màn hình phẳng.</p>
                     </div>
                  </li>
               </ul>
            </div>
            <div class="clearfix"></div>
         </div>
         
         <div class="main" id="main" style="width: 530px;  right:13%; border-radius:5%; height: 476px; bottom: 0%; top: 50%;">
            <div class="w3layouts_main_grid" style="background-color: #C0C0C0; border-radius: 5%; width: 500px; height: 420px; right: 10%; bottom: 15%; top: 40%; color: #000000;">
               <div style="color:aliceblue">
                  <h3 style="color: #000000">Đặt dịch vụ tại phòng</h3>
               </div>
               <div>
                  <div class="wthree_grid">
                     <h5 style="color: #000000">Chọn phòng </h5>
                     <asp:DropDownList class="ddlAdd" ID="drppickroom" required="" runat="server" Width="400px">
                     </asp:DropDownList>
                  </div>
               </div>
               <div>
                  <div class="wthree_grid">
                     <h5 style="color: #000000">Chọn dịch vụ</h5>
                     <asp:DropDownList class="ddlAdd" ID="drppickservice" required="" runat="server" Width="400px">
                     </asp:DropDownList>
                  </div>
               </div>
               <div>
                  <div class="agileinfo_grid">
                     <h5 style="color: #000000">Số lượng</h5>
                     <div class="agileits_w3layouts_main_gridl">
                        <asp:TextBox ID="txtpickquantity" runat="server" required="" Width="84px" />
                     </div>
                  </div>
               </div>
               <div>
                  <asp:Label ID="err_msg" runat="server" />
                  <div class="w3_main_grid_right">
                     <asp:Button ID="btnOderUser" runat="server" Text="Đặt ngay" OnClientClick="return confirm('Chắc chắn đặt dịch vụ ?')" OnClick="btnOderUser_Click"/>
                  </div>
               </div>
            </div>
         </div>
		  
         
         <!--footer-->
     <div class="footer-w3" style="background-color: #C0C0C0; bottom: 0px">
            <p style="color: #000000">&copy; 2022 Website Hotel</p>
         </div>
      </form>
   </body>
</html>