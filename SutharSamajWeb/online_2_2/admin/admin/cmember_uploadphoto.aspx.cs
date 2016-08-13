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
using System.IO; 

public partial class admin_cmember_uploadphoto : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        try
        {
            if (File1.Value == null)
            {
                Label1.Text = "Add file";
            }
            else
            {
                SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\app_data\Database.mdf;Integrated Security=True;User Instance=True");
                string s;
                s = Path.GetFileName(File1.PostedFile.FileName);
                File1.PostedFile.SaveAs(MapPath("~\\images\\"+s));
              //File1.PostedFile.SaveAs(@"d:\project\online_2_2\images\" + s);
                Label1.Text = "Images\\" + s;
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update committee_member set imageurl='" + Label1.Text + "' where second_name='" + Session["sname"].ToString() + "' and last_name='" + Session["lname"].ToString() + "' and committee_name='" + Session["comittee"].ToString()+"'", con);
                    int i = cmd.ExecuteNonQuery();
                    Label1.Text += " " + Convert.ToString(i) + "  " + Session["sname"].ToString() + "  " + Session["lname"].ToString() + "  " + Session["comittee"].ToString();
                    if (i > 0)
                    {
                        Label1.Text = "file uploaded successfully";
                        Response.Redirect("committeelist.aspx");
                    }
                    else
                    {
                        //Label1.Text = "file uploaded not successfully";
                    }
                    con.Close();
                
            }
        }
        catch (Exception ex)
        {
            Label1.Text ="there was an error try again "+ex;
        }

    }
protected void  Button1_Click(object sender, EventArgs e)
{
    Response.Redirect("committeelist.aspx");
}
}
