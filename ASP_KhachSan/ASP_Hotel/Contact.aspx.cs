using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
	lienhe data = new lienhe();
	protected void btnthem_Click(object sender, EventArgs e)
	{
		try
		{
			contacts s = new contacts();
			s.fullname = txtfullname.Text;
			s.phone = txtphone.Text;
			s.email = txtemail.Text;
			s.message = Message.Text;

			data.Themlh(s);
			msg.ForeColor = System.Drawing.Color.Green;
			msg.Text = "Bạn đã gửi liên hệ thành công!";
			Response.Write("<script>alert('Bạn đã gửi liên hệ thành công!')</script>");

		}
		catch (Exception ex)
		{
			msg.ForeColor = System.Drawing.Color.Red;
			msg.Text = " khong them duoc, co loi:" + ex.Message;
		}
	}
}