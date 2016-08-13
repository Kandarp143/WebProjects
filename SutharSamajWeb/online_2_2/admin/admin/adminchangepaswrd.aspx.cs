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
public partial class admin_adminchangepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
         
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select username,password from admin_login where username='" + Session["name"] + "' and password='" +txtopswrd.Text+ "'", con);
        SqlDataReader read;
        read = cmd1.ExecuteReader();
        if (read.HasRows == true)
        {
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("update admin_login set password='" + txtnpswrd.Text + "' where username='" + Session["name"].ToString() + "'", con);
            cmd.ExecuteNonQuery();
            int i = cmd.ExecuteNonQuery();

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
    }
   

   
}
