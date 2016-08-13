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

public partial class user_editsprofile : System.Web.UI.Page
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
        SqlDataAdapter adpt = new SqlDataAdapter("select *from sub_member_detail where member_no='" +Convert.ToInt32(memberno) + "'", cn);
        DataSet ds = new DataSet();
        adpt.Fill(ds);
        txtfname.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
        txtsname.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
        txtlname.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
        txtnative.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
        txtmosal.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
        drpmaritalstus.SelectedValue =ds.Tables[0].Rows[0].ItemArray[9].ToString();
        drpday.SelectedValue=ds.Tables[0].Rows[0].ItemArray[10].ToString();
        drpmonth.SelectedValue=ds.Tables[0].Rows[0].ItemArray[11].ToString();
        drpyear.SelectedValue = ds.Tables[0].Rows[0].ItemArray[12].ToString();
        RadioButtonList1.SelectedValue=ds.Tables[0].Rows[0].ItemArray[13].ToString();
        txtmobile.Text = ds.Tables[0].Rows[0].ItemArray[14].ToString();
        txtemail.Text = ds.Tables[0].Rows[0].ItemArray[15].ToString();
        txtqualification.Text = ds.Tables[0].Rows[0].ItemArray[16].ToString();
        txteducation.Text = ds.Tables[0].Rows[0].ItemArray[17].ToString();
        drpbloodgroup.SelectedValue= ds.Tables[0].Rows[0].ItemArray[18].ToString();
        txtadd1.Text = ds.Tables[0].Rows[0].ItemArray[19].ToString();
        txtadd2.Text = ds.Tables[0].Rows[0].ItemArray[20].ToString();
        txthcity.Text = ds.Tables[0].Rows[0].ItemArray[21].ToString();
        txtstate.Text = ds.Tables[0].Rows[0].ItemArray[22].ToString();
        drpcountry.SelectedValue = ds.Tables[0].Rows[0].ItemArray[23].ToString();
        txtprofession.Text = ds.Tables[0].Rows[0].ItemArray[24].ToString();
        txtprodetail.Text = ds.Tables[0].Rows[0].ItemArray[25].ToString();
        txtwadd1.Text = ds.Tables[0].Rows[0].ItemArray[26].ToString();
        txtwadd2.Text = ds.Tables[0].Rows[0].ItemArray[27].ToString();
        txtwcity.Text = ds.Tables[0].Rows[0].ItemArray[28].ToString();
        txtwphone.Text = ds.Tables[0].Rows[0].ItemArray[29].ToString();
        txtwemailid.Text = ds.Tables[0].Rows[0].ItemArray[30].ToString();
        txtwsite.Text = ds.Tables[0].Rows[0].ItemArray[31].ToString();
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
        
        SqlCommand cmd = new SqlCommand("update sub_member_detail set relation_with_mmber ='" + drrelation.SelectedItem.Text + "', first_name ='" + txtfname.Text + "', second_name ='" + txtsname.Text + "', last_name ='" + txtlname.Text + "', native_place ='" + txtnative.Text + "', mother_maiden_place ='" + txtmosal.Text + "' where member_no='" + memberno + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("~/user/user/profile.aspx");
    }
    protected void hsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        string query = "UPDATE sub_member_detail SET h_add1='" + txtadd1.Text + "',h_add2='" + txtadd2.Text + "',h_city='" + txthcity.Text + "',h_state='" + txtstate.Text + "',h_country='" + drpcountry.SelectedItem.Text + "' where member_no='" + Convert.ToInt32(memberno) + "'";
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("~/user/user/profile.aspx");
    }
    protected void wsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        string query = "update sub_member_detail set profession='" + txtprofession.Text + "',profession_detail='" + txtprodetail.Text + "',w_add1='" + txtwadd1.Text + "',w_add2='" + txtwadd2.Text + "',w_city='" + txtwcity.Text + "',w_phone='" + txtwphone.Text + "',w_emailid='" + txtwemailid.Text + "',w_websit='" + txtwsite.Text + "' where member_no='" + Convert.ToInt32(memberno) + "'";
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("~/user/user/profile.aspx");
    }
    protected void btnpersonal_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnhome_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;    
    }
    protected void btnwork_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void mcopy1_Click(object sender, EventArgs e)
    {
        string user = Session["name"].ToString();
        cn.Open();
        SqlCommand cmd = new SqlCommand("select h_add1,h_add2,h_city,h_state,h_country from main_member_detail where username='" + user + "'", cn);
        SqlDataReader read;
        read = cmd.ExecuteReader();
        if (read.HasRows == true)
        {
            read.Read();
            txtadd1.Text = (string)read["h_add1"];
            txtadd2.Text = (string)read["h_add2"];
            txthcity.Text = (string)read["h_city"];
            txtstate.Text = (string)read["h_state"];
            drpcountry.Text = (string)read["h_country"];
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
}
