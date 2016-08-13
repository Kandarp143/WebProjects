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
public partial class user_addsubmember : System.Web.UI.Page
{
    SqlConnection cn=new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("~/user/user/home1.aspx");
        }
      }

    protected void psubmit_Click(object sender, EventArgs e)
    {
      
        btnpersonal.Enabled = false;
        MultiView1.ActiveViewIndex = 1;

    }

    protected void hsubmit_Click(object sender, EventArgs e)
    {
        btnpersonal.Enabled = false;
        MultiView1.ActiveViewIndex = 2;
       
    }
    protected void wsubmit_Click(object sender, EventArgs e)
    {
        string user = Session["name"].ToString();
        
        
        btnpersonal.Enabled = false;
        btnhome.Enabled = false;
         cn.Open();

        string query = "insert into sub_member_detail (username,relation_with_mmber,first_name,second_name,last_name,native_place,mother_maiden_place,marital_status,day,month,year,gender,mobile_no,email_id,qualification,education,b_group,h_add1,h_add2,h_city,h_state,h_country,profession,profession_detail,w_add1,w_add2,w_city,w_phone,w_emailid,w_websit) values('" + Session["name"].ToString()+ "','"+ drrelation.SelectedItem.Value + "','" + txtfname.Text + "','" + txtsname.Text + "','" + txtlname.Text + "','" + txtnative.Text + "','" + txtmosal.Text + "','"+drpmaritalstus.SelectedItem.Text+"','" + drpday.SelectedItem.Text + "','" + drpmonth.SelectedItem.Text + "','" + drpyear.SelectedItem.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + txtmobile.Text + "','" + txtemail.Text + "','" + txtqualification.Text + "','" + txteducation.Text +"','"+drpbloodgroup.SelectedItem.Text+ "','" + txtadd1.Text + "','" + txtadd2.Text + "','" + txthcity.Text + "','" + txtstate.Text + "','" + drpcountry.SelectedItem.Text + "','" + txtprofession.Text + "','" + txtprodetail.Text + "','" + txtwadd1.Text + "','" + txtwadd2.Text + "','" + txtwcity.Text + "','" + txtwphone.Text + "','" + txtwemailid.Text + "','" + txtwsite.Text + "') ";
        SqlCommand cmd = new SqlCommand(query, cn);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {

            Response.Redirect("~/user/user/profile.aspx");
        }
        else
        {
            lblerror1.Text = "There was an Error Try Again";
        }
        cn.Close();
    }


    protected void mcopy1_Click(object sender, EventArgs e)
    {
        string user = Session["name"].ToString();
        cn.Open();
         SqlCommand cmd = new SqlCommand("select h_add1,h_add2,h_city,h_state,h_country from main_member_detail where username='" +user +"'", cn);
        SqlDataReader read;
        read = cmd.ExecuteReader();
        if (read.HasRows == true)
        {
            read.Read();
            txtadd1.Text=(string)read["h_add1"];
            txtadd2.Text=(string)read["h_add2"];
            txthcity.Text=(string)read["h_city"];
            txtstate.Text=(string)read["h_state"];
            drpcountry.Text=(string)read["h_country"];
        }
        else
        {
            
        }

    }

    protected void cmain_Click(object sender, EventArgs e)
    {
        string user = Session["name"].ToString();
        cn.Open();
        SqlCommand cmd = new SqlCommand("select profession,profession_detail,w_add1,w_add2,w_city,w_phone,w_emailid,w_websit from main_member_detail where username='" + user + "'", cn);
        SqlDataReader read;
        read = cmd.ExecuteReader();
        if (read.HasRows == true)
        {
            read.Read();
            txtprofession.Text = (string)read["profession"];
            txtprodetail.Text = (string)read["profession_detail"];
            txtwadd1.Text = (string)read["w_add1"];
            txtwadd2.Text = (string)read["w_add2"];
            txtwcity.Text = (string)read["w_city"];
            txtwphone.Text = (string)read["w_phone"];
            txtwemailid.Text = (string)read["w_emailid"];
            txtwsite.Text = (string)read["w_websit"];
        }
        else
        {

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/user/profile.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/user/profile.aspx");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/user/profile.aspx");
    }
}
