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
using System.Net;

public partial class admin_admin_adminemail : System.Web.UI.Page
{
    public String toAddress = "";
    public String to;
        
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        Label1.Visible = true;
    }

    protected void SendMail()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "smdss.ridhi@gmail.com";
        // any address where the email will be sending
        var toAddress = this.toAddress;
        //Password of your gmail address
        //const string fromPassword = "appubaa@05";
        const string fromPassword = "ridhisuthar";
        // Passing the values and make a email formate to display
        string subject = YourSubject.Text.ToString();
        string body = "From: " + fromAddress + "\n";
        body += "Subject: " + YourSubject.Text + "\n";
        body += "Message: \n" + Comments.Text + "\n";
        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {   
        var stype = RadioButtonList1.SelectedValue;
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        con.Open();
        if (stype == "1")
        {
            SqlCommand cmd1 = new SqlCommand("select email_id from committee_member", con);
            SqlDataReader reader = cmd1.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    
                        toAddress = reader["email_id"].ToString();
                        SendMail();
                }
            }
            reader.Close();
        }
        else if (stype == "2")
        {
            SqlCommand cmd2 = new SqlCommand("select email_id from main_member_detail", con);
            SqlDataReader reader = cmd2.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    toAddress = reader["email_id"].ToString();
                    SendMail();
                }
            }
            reader.Close();
        }
        else if (stype == "3")
        {
            SqlCommand cmd2 = new SqlCommand("select email_id from main_member_detail", con);
            SqlDataReader reader = cmd2.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    toAddress = reader["email_id"].ToString();
                    SendMail();
                }
            }
            reader.Close();
            
            SqlCommand cmd3 = new SqlCommand("select email_id from sub_member_detail", con);
            reader = cmd3.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    toAddress = reader["email_id"].ToString();
                    SendMail();
                }
            }
            reader.Close();
        }
        else if (stype == "4")
        {
            SqlCommand cmd1 = new SqlCommand("select email_id from committee_member", con);
            SqlDataReader reader = cmd1.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    toAddress = reader["email_id"].ToString();
                    SendMail();
                }
            }
            reader.Close();
            
            SqlCommand cmd2 = new SqlCommand("select email_id from main_member_detail", con);
            reader = cmd2.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    toAddress = reader["email_id"].ToString();
                    SendMail();
                }
            }
            reader.Close();
            
            SqlCommand cmd3 = new SqlCommand("select email_id from sub_member_detail", con);
            reader = cmd3.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    toAddress = reader["email_id"].ToString();
                    SendMail();
                }
            }
            reader.Close();
        }
        con.Close();
        try
        {
            //here on button click what will done 
            //this.toAddress = "hardo91@gmail.com,er.ikndp@gmail.com";
            SendMail();
            
            Label1.Text = "Email Send..";
            Label1.Visible = true;
            
            YourSubject.Text = "";
            Comments.Text = "";
        }
        catch (Exception) { }

    }
}