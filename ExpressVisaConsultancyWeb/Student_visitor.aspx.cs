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

public partial class Users : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    String str;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        str = " SELECT * From login WHERE emailid='" + txtemail.Text + "' And pass='" + txtpass.Text + "'";
        con.Open();
        SqlCommand sqlcmd = new SqlCommand(str, con);
        SqlDataReader sqldr = sqlcmd.ExecuteReader();

        if (sqldr.Read() == true)
        {
            Response.Redirect("Entryform.aspx");
        }
        else
        {
            lblmessage.Text = "The Username Or Password is Wrong";

        }
        sqldr.Close();
        con.Close();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        str = "insert into login(name,emailid,pass,phno)VALUES('" + txtuname.Text + "','" + txtemailid.Text + "','" + txtpassword.Text + "','" + txtphono.Text + "')";
        con.Open();
        SqlCommand sqlcmd = new SqlCommand(str, con);
        sqlcmd.ExecuteNonQuery();
        con.Close();


        String Username = "pratikjayswal9@gmail.com";
        String Password = "pratik007";
        String To = txtemailid .Text;
        String Body = "Welcome user to our site";
        String Subject = "You are successfully registered";
        MailSender.SendEmail(Username, Password, To, Subject, Body, System.Web.Mail.MailFormat.Html, "");
       
        lblmsg.Text = "You are Register.";
        txtuname.Text = "";
        txtemail.Text = "";
        txtpass.Text = "";
        txtphono.Text = "";
        Panel1.Visible = true;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;

    }
}
