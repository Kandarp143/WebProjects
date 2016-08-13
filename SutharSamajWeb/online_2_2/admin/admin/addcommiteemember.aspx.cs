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

public partial class admin_addcommiteemember1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void cmdbtn_Click(object sender, EventArgs e)
    {
        cn.Open();
        string query = "insert into committee_member(first_name,second_name,last_name,committee_name,catagory,gender,mobile_no,email_id,address,city) values('" + txtfname.Text + "','" +txtsname.Text+"','"+txtlname.Text+"','"+drpcommittee.SelectedItem.Value+"','"+drpcatagory.SelectedItem.Value+"','"+RadioButtonList1.SelectedItem.Value+"','"+txtc_no.Text+"','"+txtemail.Text+"','"+txtcity.Text+"','"+txtc_add.Text+"')";
        SqlCommand cmd = new SqlCommand(query, cn);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Session["sname"] = txtsname.Text;
            Session["lname"] = txtlname.Text;
            Session["comittee"] = drpcommittee.SelectedValue;
            
            /*cn.Open();
            SqlCommand cmd2 = new SqlCommand("select * from committee_member where second_name='" + txtsname.Text + "'and committee_name='" + drpcommittee.SelectedItem.Text + "'", cn);
            SqlDataReader read;
            read=cmd2.ExecuteReader();
            if (read.HasRows == true)
            {
                Session["cno"] = (string)read["cmember_no"];
                Response.Redirect("~/admin/cmember_uploadphoto.aspx");
                
            }
            else
            {
                lblerror.Text = "there was an error";
            }*/
            Response.Redirect("~/admin/admin/cmember_uploadphoto.aspx");

        }
        else
        {
            lblerror.Text = "Member Not Added";
        }
        cn.Close();
    }
   

   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        lblerror.Text = "err..";
        Response.Redirect("~/admin/admin_home.aspx");
    }
}
