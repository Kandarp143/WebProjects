using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net.Mail;
using System.Web.Mail;

public partial class user_contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("~/user/user/home1.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       try
        {
            SmtpMail.Send("angel_bhoomi@ymail.com", txtemail.Text, "Your Suggesion","Name:" + txtname.Text + ",<br> Mobile_no=" + txtcno.Text + "<br>Suggesion=" + TextBox3.Text);
            Label1.Text = "Thank You for suggest us";
        }
        catch (Exception exc)
        {
            Label1.Text = "Send failure: " + exc.ToString();
        }
    }
}
