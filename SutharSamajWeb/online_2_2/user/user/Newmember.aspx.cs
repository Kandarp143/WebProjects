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

public partial class user_newmember1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((txtuser.Text == "") || (txtpswd.Text == ""))
        {
            Label1.Text = "Fill the both text box";
        }
        else
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from main_member_detail where username='" + txtuser.Text + "' and password='" + txtpswd.Text + "'", con);
            SqlDataReader read;
            read = cmd1.ExecuteReader();
            if (read.HasRows == true)
            {
                Label1.Text = "your already member of Samaj.<br>Enter Your User ID and Password in Member Login Form.";
                con.Close();
            }
            else
            {
                con.Close();
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from user_login where username='" + txtuser.Text + "' and password='" + txtpswd.Text + "'", con);
                SqlDataReader read1;
                read1 = cmd.ExecuteReader();
                if (read1.HasRows == true)
                {
                    read1.Read();
                    txtuser.Text = (string)read1["username"];
                    Session["name"] = txtuser.Text;
                    txtpswd.Text = (string)read1["password"];
                    Session["password"] = txtpswd.Text;
                    con.Close();
                    Response.Redirect("~/user/user/newregistration.aspx");
                }
                else
                {
                    Label1.Text = "Login Fail try again.<br>If You want to be a member of it Contact to our office.";
                }
                con.Close();
            }
            
        }
    }
}
