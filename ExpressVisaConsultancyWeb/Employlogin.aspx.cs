using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Employlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    String str;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         str = " SELECT * From emp_login WHERE name='" + txtuname.Text + "' And pass='" + txtpass.Text + "'";
        con.Open();
        SqlCommand sqlcmd = new SqlCommand(str, con);
        SqlDataReader sqldr = sqlcmd.ExecuteReader();

        if (sqldr.Read() == true)
        {
            Response.Redirect("Searchpage.aspx");
        }
        else
        {
            lblmessage.Text = "The Username Or Password is Wrong";

        }
        sqldr.Close();
        con.Close();
    }
    }

