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

public partial class user_editprofile : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    string memberno = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("~/user/user/home1.aspx");
        }
        memberno = Request["id"];
        
        if (!IsPostBack)
        {
            bind();
        }
       

    }
    protected void bind()
    {
       
        cn.Open();
        
        SqlDataAdapter adpt = new SqlDataAdapter("select *from main_member_detail where member_no='" + memberno + "'", cn);
        DataSet ds = new DataSet();
        adpt.Fill(ds);
        txtfname.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
        txtsname.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
        txtlname.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
        txtnative.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
        txtmosal.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
        drpmaritalstus.SelectedValue=ds.Tables[0].Rows[0].ItemArray[10].ToString();
        drpday.SelectedValue =ds.Tables[0].Rows[0].ItemArray[11].ToString();
        drpmonth.SelectedValue=ds.Tables[0].Rows[0].ItemArray[12].ToString();
        drpyear.SelectedValue = ds.Tables[0].Rows[0].ItemArray[13].ToString();
        RadioButtonList1.SelectedValue=ds.Tables[0].Rows[0].ItemArray[14].ToString();
        txtmobile.Text = ds.Tables[0].Rows[0].ItemArray[15].ToString();
        txtemail.Text=ds.Tables[0].Rows[0].ItemArray[16].ToString();
        txtqualification.Text =ds.Tables[0].Rows[0].ItemArray[17].ToString();
        txteducation.Text =ds.Tables[0].Rows[0].ItemArray[18].ToString();
        drpbloodgroup.SelectedValue = ds.Tables[0].Rows[0].ItemArray[19].ToString();
        txtadd1.Text = ds.Tables[0].Rows[0].ItemArray[20].ToString();
        txtadd2.Text = ds.Tables[0].Rows[0].ItemArray[21].ToString();
        txthcity.Text =ds.Tables[0].Rows[0].ItemArray[22].ToString();
        txtstate.Text = ds.Tables[0].Rows[0].ItemArray[23].ToString();
        drpcountry.SelectedValue = ds.Tables[0].Rows[0].ItemArray[24].ToString();
        txtprofession.Text = ds.Tables[0].Rows[0].ItemArray[25].ToString();
        txtprodetail.Text = ds.Tables[0].Rows[0].ItemArray[26].ToString();
        txtwadd1.Text = ds.Tables[0].Rows[0].ItemArray[27].ToString();
        txtwadd2.Text = ds.Tables[0].Rows[0].ItemArray[28].ToString();
        txtwcity.Text = ds.Tables[0].Rows[0].ItemArray[29].ToString();
        txtwphone.Text = ds.Tables[0].Rows[0].ItemArray[30].ToString();
        txtwemailid.Text = ds.Tables[0].Rows[0].ItemArray[31].ToString();
        txtwsite.Text = ds.Tables[0].Rows[0].ItemArray[32].ToString();
        cn.Close();
         
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
    protected void psubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
       // string query = "UPDATE main_member_detail SET relation_with_mmber ='"+drrelation.SelectedItem.Text+"', first_name ='"+txtfname.Text+"', second_name ='"+txtsname+"', last_name ='"+txtlname.Text+"', native_place ='"+txtnative.Text+"', mother_maiden_place ='"+txtmosal.Text+"', marital_status ='"+drpmaritalstus.SelectedItem.Text+"', day ='"+drpday.SelectedItem.Text+"', month ='"+drpmonth.SelectedItem.Text+"', year ='"+drpyear.SelectedItem.Text+"', gender ='"+RadioButtonList1.SelectedItem.Text+"', email_id ='"+txtemail.Text+"', mobile_no ='"+txtmobile.Text+"', qualification ='"+txtqualification.Text+"', education ='"+txteducation.Text+"', b_group ='"+drpbloodgroup.SelectedItem.Text+"' where username='"+Session["name"]+"'";
        SqlCommand cmd = new SqlCommand("update main_member_detail set relation_with_mmber ='"+drrelation.SelectedItem.Text+"', first_name ='"+txtfname.Text+"', second_name ='"+txtsname.Text+"', last_name ='"+txtlname.Text+"', native_place ='"+txtnative.Text+"', mother_maiden_place ='"+txtmosal.Text+"' where member_no='"+memberno+"'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("~/user/user/profile.aspx");
    }
    protected void hsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        string query = "UPDATE main_member_detail SET h_add1='" + txtadd1.Text + "',h_add2='" + txtadd2.Text + "',h_city='" + txthcity.Text + "',h_state='" + txtstate.Text + "',h_country='" + drpcountry.SelectedItem.Text + "' where member_no='" + Convert.ToInt32(memberno) + "'";
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("~/user/user/profile.aspx");
    }
    protected void wsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        string query = "update main_member_detail set profession='" + txtprofession.Text + "',profession_detail='" + txtprodetail.Text + "',w_add1='" + txtwadd1.Text + "',w_add2='" + txtwadd2.Text + "',w_city='" + txtwcity.Text + "',w_phone='" + txtwphone.Text + "',w_emailid='" + txtwemailid.Text + "',w_websit='" + txtwsite.Text +"' where member_no='" + Convert.ToInt32(memberno)+ "'";
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("~/user/user/profile.aspx");
    }
    protected void btnpersonal_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0; ;
        //MultiView1.Views[1].Visible = false;
       // MultiView1.Views[2].Visible = false;
    }
    protected void btnhome_Click(object sender, EventArgs e)
    {
       // MultiView1.Views[0].Visible = false;
        MultiView1.ActiveViewIndex = 1;
       // MultiView1.Views[2].Visible = false;
    }
    protected void btnwork_Click(object sender, EventArgs e)
    {
       // MultiView1.Views[0].Visible = false;
       // MultiView1.Views[1].Visible = false;
        MultiView1.ActiveViewIndex = 2;
    }

    
}
