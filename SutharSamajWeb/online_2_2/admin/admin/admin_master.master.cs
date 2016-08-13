using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class admin_admin_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            user.Text = "<b>--- Please Login--- </b>";
            home1.Enabled = false;
            member1.Enabled = false;
            Committee1.Enabled = false;
            email1.Enabled = false;
            chat1.Enabled = false;
            home2.Enabled = false;
            member2.Enabled = false;
            committee2.Enabled = false;
            email2.Enabled = false;
            chat2.Enabled=false;
            login.Enabled = true;
            addcmember.Enabled = false;
            changepswd.Enabled = false;
            memberid.Enabled = false;
            logout.Enabled = false;
            delmember.Enabled = false;
        }
        else
        {
            user.Text = "Welcome : <b> " + Session["name"]+"</b>";
            home1.Enabled = true;
            member1.Enabled = true;
            Committee1.Enabled = true;
            email1.Enabled = true;
            chat1.Enabled=true;
            home2.Enabled = true;
            member2.Enabled = true;
            committee2.Enabled = true;
            email2.Enabled = true;
            chat2.Enabled=true;
            login.Enabled = false;
            addcmember.Enabled = true;
            changepswd.Enabled = true;
            memberid.Enabled = true;
            logout.Enabled = true;
            delmember.Enabled = true;
            
        }

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("admin_login.aspx");
    }
   
}
