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

public partial class user_member2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //Page.AutoPostBackControl = true;
        
        SqlDataAdapter adpt = new SqlDataAdapter("select * from main_member_detail", cn);
        DataSet ds = new DataSet();
        adpt.Fill(ds);
        SqlDataAdapter adpt1 = new SqlDataAdapter("select * from sub_member_detail", cn);
       // DataSet ds1 = new DataSet();
        adpt1.Fill(ds);
        ListView1.DataSource = ds.Tables[0];
        ListView1.DataBind();
       // cn.Close();

    }
}
