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

public partial class admin_addmember : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        string user, pswd;
       // user = txtusername.Text;
       // pswd = txtpswrd.Text;
        cn.Open();
        string query1 = "select * from user_login where username='"+txtusername.Text+"'";
        SqlCommand cmd1 = new SqlCommand(query1, cn);
        SqlDataReader read;
        read = cmd1.ExecuteReader();
        if (read.HasRows == true)
        {
            lblerror.Text = "already registered.";

        }
        else
        {
            cn.Close();

            cn.Open();
            string query = "insert into user_login (username,password) values('" + txtusername.Text + "','" + txtpswrd.Text + "')";
            SqlCommand cmd = new SqlCommand(query, cn);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Redirect("memberlist.aspx");
            }
            else
            {
                lblerror.Text = "Member Not Added";
            }
            cn.Close();
        }

   }
}
