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

public partial class user_search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlDataAdapter adpt = new SqlDataAdapter("select * from main_member_detail where first_name='"+Session["search"]+"' or second_name='"+Session["search"]+"' or last_name='"+Session["search"]+"' or h_city='"+Session["search"]+"'", cn);
        DataSet ds = new DataSet();
        adpt.Fill(ds);
        SqlDataAdapter adpt1 = new SqlDataAdapter("select * from sub_member_detail where first_name='"+Session["search"]+"' or second_name='"+Session["search"]+"' or last_name='"+Session["search"]+"' or h_city='"+Session["search"]+"'", cn);
        // DataSet ds1 = new DataSet();
        adpt1.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            ListView1.DataSource = ds.Tables[0];
            ListView1.DataBind();
        }
        else
        {
            lbl1.Text = "Record Not Found try Again";
        }

    }
}
