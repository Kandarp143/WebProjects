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
using System.Data.SqlClient;

public partial class user_mainMasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if ((txtuname.Text == "") || (txtpswrd.Text == ""))
        {
            Label1.Text = "Username & Password are require.";
        }
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from main_member_detail where username='" + txtuname.Text + "'and password='" + txtpswrd.Text + "'", con);
            SqlDataReader read;
            read = cmd.ExecuteReader();
            if ((read.HasRows == true))
            {
                read.Read();
                txtuname.Text = (string)read["username"];
                Session["name"] = txtuname.Text;
                Response.Redirect("~/user/user/profile.aspx");
            }
            else
            {
                Label1.Text = "Login Fail.<br/>If You are new member then click on new member.";
            }
        }
    }
    protected void search_Click(object sender, EventArgs e)
    {
        Session["search"] = txtsearch.Text;
        Response.Redirect("~/user/user/msearch.aspx");
    }

    protected void btnlogin_Click(object sender, ImageClickEventArgs e)
    {
        if ((txtuname.Text == "") || (txtpswrd.Text == ""))
        {
            Label1.Text = "Username & Password are require.";
        }
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from user_login where username='" + txtuname.Text + "'and password='" + txtpswrd.Text + "'", con);
            SqlDataReader read;
            read = cmd.ExecuteReader();
            if ((read.HasRows == true))
            {
                read.Read();
                txtuname.Text = (string)read["username"];
                Session["name"] = txtuname.Text;
                Response.Redirect("~/user/user/profile.aspx");
            }
            else
            {
                Label1.Text = "Login Fail.<br/>If You are new member then click on new member.";
            }
        }
    }
}
