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

public partial class user_uploadphoto : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    string memberno = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("~/user/home1.aspx");
        }
        memberno = Request["id"];
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {

        try
        {
            string s;
            s = Path.GetFileName(File1.PostedFile.FileName);
            File1.PostedFile.SaveAs("E:\\TY\\dotnet\\mainsamaj\\Images\\image\\" + s);
            Label1.Text = "~\\Images\\image\\" + s;
            con.Open();
            SqlCommand cmd = new SqlCommand("update main_member_detail set image_url='" + Label1.Text + "' where username='" + Session["name"] + "' or member_no='" + Convert.ToInt32(memberno) + "'", con);
            cmd.ExecuteNonQuery();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Label1.Text = "file uploaded successfully";
                Response.Redirect("~\\user\\profile.aspx");
            }
            else
            {
                Label1.Text = "file uploaded not successfully";
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Label1.Text = "there was an error try again";
        }

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\user\\profile.aspx");
    }
}
