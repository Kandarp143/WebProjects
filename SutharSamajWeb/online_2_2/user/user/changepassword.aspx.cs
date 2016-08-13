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
using System.Data.SqlClient;
public partial class user_changepassword1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("~/user/user/home1.aspx");
        }
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select username,password from main_member_detail where username='" + Session["name"].ToString() + "' and password='" + txtopswrd.Text + "'", con);
        SqlDataReader read;
        read = cmd1.ExecuteReader();
        if (read.HasRows == true)
        {
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("update main_member_detail set password='" + ttnpswrd.Text + "' where username='" + txtuser.Text + "'", con);
            cmd.ExecuteNonQuery();
            int i = cmd.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand("update user_login set password='" + ttnpswrd.Text + "' where username='" + txtuser.Text + "'", con);
            cmd2.ExecuteNonQuery();

            if (i > 0)
            {
                lbl1.Text = "Password is Changed";
            }
            else
            {
                lbl1.Text = "Password is not Changed try again";
            }
            con.Close();

        }
        else
        {
            lbl1.Text = "User Id or Oldpassword is Wrong.Try again.";
        }
        con.Close();
    }
}
