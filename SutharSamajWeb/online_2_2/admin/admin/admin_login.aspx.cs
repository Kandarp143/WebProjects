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

public partial class admin_admin_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        
       //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\onlinesocnwg\App_Data\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
       //.APISTUDIOUS
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        
        con.Open();
        SqlCommand cmd = new SqlCommand("select *from admin_login where username='" + txtu_name.Text + "' and password='" + txtpswrd.Text + "'", con);
        SqlDataReader read;
        read = cmd.ExecuteReader();
        if (read.HasRows == true)
        {
            read.Read();
            txtu_name.Text = (string)read["username"];
            Session["name"] = txtu_name.Text;
            Response.Redirect("admin_home.aspx");
        }
        else
        {
            Label1.Text = "Login Fail try again";
        }

    }
}
