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

public partial class admin_deletecmember : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
   SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
        

    }
   
    protected void bind()
    {
        cn.Open();
        cmd = new SqlCommand("select * from committee_member", cn);
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
        cn.Close();
    }
    
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow gr = GridView1.Rows[e.RowIndex];
        string s = gr.Cells[1].Text;
        cn.Open();
        SqlCommand cmd = new SqlCommand("delete from committee_member where cmember_no='" + s + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        bind();
        

    }

}
