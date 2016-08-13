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

public partial class user_deletemember : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["name"] == null)
        {
            Response.Redirect("~/user/user/home1.aspx");
        }
            bind();
        
    }
    protected void bind()
    {
        cn.Close();
        cmd = new SqlCommand("select [member_no],[first_name],[second_name],[last_name] from sub_member_detail where username='"+Session["name"].ToString()+"'", cn);
        SqlDataReader read;
        cn.Open();
        read = cmd.ExecuteReader();
        if (read.HasRows == true)
        {
            
            GridView1.DataSource = read;
            GridView1.DataBind();
           
        }
        else
        {
            Label1.Text = "You dont have any Submember.";
        }
        cn.Close();
    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow gr = GridView1.Rows[e.RowIndex];
        string s = gr.Cells[1].Text;
        Response.Write(s);
        cn.Open();
        SqlCommand cmd = new SqlCommand("delete from sub_member_detail where member_no='" + Convert.ToInt32(s) + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
                  bind();
            Response.Redirect("~/user/user/profile.aspx");
       
    }
   
}
