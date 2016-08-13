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

public partial class Searchpage : System.Web.UI.Page
{
    private String strConnection = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindContrydropdown();
        }
    }
    protected void BindGridview()
    {
        using (SqlConnection con = new SqlConnection(strConnection))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select TOP 10 duration,eligibility,netfee,application,coursefee,awardingbody,accomadation,food,ielts_tofels,intake,deadline,bankbalance FROM course_detail", con);
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();
        }
    }
    protected void BindContrydropdown()
    {

        SqlConnection con = new SqlConnection(strConnection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from contry_Mst", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlcontry.DataSource = ds;
        ddlcontry.DataTextField = "contryname";
        ddlcontry.DataValueField = "id";
        ddlcontry.DataBind();
        ddlcontry.Items.Insert(0, new ListItem("--Select--", "0"));
        ddluni.Items.Insert(0, new ListItem("--Select--", "0"));
        

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void ddlcourse_SelectedIndexChanged(object sender, EventArgs e)
    {

       

    }
    protected void ddlstream_SelectedIndexChanged(object sender, EventArgs e)
    {
       
       
    }

    protected void ddlcontry_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(ddlcontry.SelectedValue);
        SqlConnection con = new SqlConnection(strConnection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from univercity_mst where contryid=" + id, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddluni.DataSource = ds;
        ddluni.DataTextField = "univercity";
        ddluni.DataValueField = "id";
        ddluni.DataBind();
        ddluni.Items.Insert(0, new ListItem("--Select--", "0"));
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnprint_Click(object sender, EventArgs e)
    {

    }
}
