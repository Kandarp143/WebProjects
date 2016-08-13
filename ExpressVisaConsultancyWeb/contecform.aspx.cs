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
using System.Net.Mail;

public partial class contecform : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    String str;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        str = "insert into contectus(name,email,subject,message)VALUES('" + txtname.Text + "','" + txtemail .Text + "','" + txtsubject .Text + "','" + txtmessage .Text + "')";
        con.Open();
        SqlCommand sqlcmd = new SqlCommand(str, con);
        sqlcmd.ExecuteNonQuery();
        con.Close();


        String Username = "pratikjayswal9@gmail.com";
        String Password = "pratik007";


        String To = txtemail.Text;
        String name = txtname.Text;
       String Body = txtmessage.Text;
        String Subject = "We will Contact soon";
        MailSender.SendEmail(Username, Password, To, Subject, Body, System.Web.Mail.MailFormat.Html, "");

        lblmessage.Text = "Your Requvest Will be Recived.";
        txtname.Text = "";
        txtemail.Text = "";
        txtsubject.Text ="";
        txtmessage.Text ="";

    }
}
