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

public partial class course_detail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    String str;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        str = "insert into course_detail(duration,eligibility,netfee,application,coursefee,awardingbody,accomadation,food,ielts_tofels,intake,deadline,bankbalance)VALUES('" + txtduration.Text + "','" + txteligibility.Text + "','" + txtnetfees.Text + "','" + txtapplicationfee.Text + "','"+txtcoursefee.Text +"','"+txtawarding.Text +"','"+txtaccomodation.Text +"','"+txtfood.Text +"','"+txtielts.Text +"','"+txtintake.Text +"','"+txtdeadline.Text  +"','"+txtbankbalance.Text +"')";
        con.Open();
        SqlCommand sqlcmd = new SqlCommand(str, con);
        sqlcmd.ExecuteNonQuery();
        con.Close();
        lblmessage.Text = "Data will be saved";
        txtduration.Text = "";
        txteligibility.Text = "";
        txtnetfees.Text = "";
        txtapplicationfee.Text = "";
        txtcoursefee.Text = "";
        txtawarding.Text = "";
        txtaccomodation.Text = "";
        txtfood.Text = "";
        txtielts.Text = "";
        txtintake.Text = "";
        txtdeadline.Text = "";
        txtbankbalance.Text = ""; 
    }
}
