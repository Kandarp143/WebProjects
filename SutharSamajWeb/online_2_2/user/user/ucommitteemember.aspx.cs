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

public partial class user_committeemember1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["name"] == null)
        {
            Response.Redirect("~/user/home1.aspx");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListView1.Visible = false;
        cn.Open();
        SqlDataAdapter adpt = new SqlDataAdapter("select * from committee_member where committee_name='" +DropDownList1.SelectedItem.Text+ "'", cn);
        DataSet ds = new DataSet();
        adpt.Fill(ds);
        ListView2.DataSource = ds.Tables[0];
        ListView2.DataBind();
        cn.Close();


    }
}
