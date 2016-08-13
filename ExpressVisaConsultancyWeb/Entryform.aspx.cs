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
public partial class Entryform : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    String str;
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();

        con.ConnectionString = ("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");


        cmd.CommandText = "select MAX(Id) from userinfo";
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;

        da.SelectCommand = cmd;
        da.Fill(dt);

        int x = Convert.ToInt32(dt.Rows[0].ItemArray[0].ToString());
        x = x + 1;
        lblid.Text = x.ToString();


        if (!IsPostBack)
        {

            SetVerificationText();

        }
     }

    public void SetVerificationText()
    {

        Random ran = new Random();

        int no = ran.Next();

        Session["Captcha"] = no.ToString();

    }

    protected void CAPTCHAValidate(object source, ServerValidateEventArgs args)
    {

        if (Session["Captcha"] != null)
        {

            if (txtVerify.Text != Session["Captcha"].ToString())
            {

                SetVerificationText();

                args.IsValid = false;

                return;

            }

        }

        else
        {

            SetVerificationText();

            args.IsValid = false;

            return;

        }



    


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        str = "insert into userinfo(name,dob,emailid,phno,prog_in_1stprefer,prog_in_2ndprefer,study,pr,perment,visitor,contry,budget,fathers_parentoccupation,exp,qulification,field,aggregation,backlogs,yearofpassing,Sat_gmat_score_veroa,Sat_gmat_score_quantitative,Sat_gmat_score_AWA,ifnotalreadytakenmention_yes,ifnotalreadytakenmention_no,tofel_ielts_score_D,tofel_ielts_score_R,tofel_ielts_score_w,tofel_ielts_score_s,tofel_ielts_score_overall,ifalreadytaken_Yes,ifalreadytaken_No,researchexp,spousedetail_dob,spousedetail_edu,spousedetail_exp,date,AutoNo)VALUES('" + txtuname.Text + "','" + txtdob.Text + "','" + txtemailid.Text + "','" + txtphono.Text + "','" + txt1stpreference.Text + "','" + txt2ndpreference.Text + "','" + chkstudy.Checked + "','" + chkpr.Checked + "','" + chkpermit.Checked + "','" + chkvisitor.Checked + "','" + cbocontry.Text + "','" + txtbudget.Text + "','" + txtfatheroccupation.Text + "','" + txtexp.Text + "','" + cboqulification.Text + "','" + txtfield.Text + "','" + txtaggregate.Text + "','" + txtbacklogs.Text + "','" + txtyearofpassing.Text + "','" + txtveroal.Text + "','" + txtquantitaiye.Text + "','" + txtawa.Text + "','" + chkyes.Checked + "','" + chkno.Checked + "','" + txtd.Text + "','" + txtr.Text + "','" + txtw.Text + "','" + txts.Text + "','" + txtoverall.Text + "','" + chktaken_yes.Checked + "','" + chktaken_no.Checked + "','" + txtresearchexp.Text + "','" + txtspousedob.Text + "','" + txtspouseedu.Text + "','" + txtsexp.Text + "','" + txtdate.Text + "','" + txtVerify.Text + "')";
        con.Open();
        SqlCommand sqlcmd = new SqlCommand(str, con);
        sqlcmd.ExecuteNonQuery();
        con.Close();




        if (!Page.IsValid)
        {

            return;

        }

        

        Response.Write("You are not a SPAMMER!!!");

        SetVerificationText();

        Panel1.Visible = false;
        Panel2.Visible = true;
        lblcmi.Visible = true;
        lblid.Visible = true;
        lblmessage.Text = "Your Application Will be Saved!";
        txtuname.Text = "";
        txtdob.Text = "";
        txtemailid.Text = "";
        txtphono.Text = "";
        txt1stpreference.Text = "";
        txt2ndpreference.Text = "";
        chkstudy.Text = "";
        chkpr.Text = "";
        chkpermit.Text = "";
        chkvisitor.Text = "";

        txtbudget.Text = "";
        txtfatheroccupation.Text = "";
        txtexp.Text = "";

        txtfield.Text = "";
        txtaggregate.Text = "";
        txtbacklogs.Text = "";
        txtyearofpassing.Text = "";
        txtveroal.Text = "";
        txtquantitaiye.Text = "";
        txtawa.Text = "";
        chkyes.Text = "";
        chkno.Text = "";
        txtd.Text = "";
        txtr.Text = "";
        txtw.Text = "";
        txts.Text = "";
        txtoverall.Text = "";
        chktaken_yes.Text = "";
        chktaken_no.Text = "";
        txtresearchexp.Text = "";
        txtspousedob.Text = "";
        txtspouseedu.Text = "";
        txtsexp.Text = "";
        txtdate.Text = "";
        txtVerify.Text = "";
        


    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtuname.Text = "";
        txtdob.Text = "";
        txtemailid.Text = "";
        txtphono.Text = "";
        txt1stpreference.Text = "";
        txt2ndpreference.Text = "";
        chkstudy.Text = "";
        chkpr.Text = "";
        chkpermit.Text = "";
        chkvisitor.Text = "";
        cbocontry.Text = "";
        txtbudget.Text = "";
        txtfatheroccupation.Text = "";
        txtexp.Text = "";
        cboqulification.Text = "";
        txtfield.Text = "";
        txtaggregate.Text = "";
        txtbacklogs.Text = "";
        txtyearofpassing.Text = "";
        txtveroal.Text = "";
        txtquantitaiye.Text = "";
        txtawa.Text = "";
        chkyes.Text = "";
        chkno.Text = "";
        txtd.Text = "";
        txtr.Text = "";
        txtw.Text = "";
        txts.Text = "";
        txtoverall.Text = "";
        chktaken_yes.Text = "";
        chktaken_no.Text = "";
        txtresearchexp.Text = "";
        txtspousedob.Text = "";
        txtspouseedu.Text = "";
        txtsexp.Text = "";
        txtdate.Text = "";
        txtVerify.Text = "";
    }
         protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdob.Text = Calendar1.SelectedDate.ToLongDateString();
        Calendar1.Visible = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Calendar2.Visible = true;

    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtspousedob.Text = Calendar1.SelectedDate.ToLongDateString();
        Calendar2.Visible = false;

    }




    protected void txtuname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void chkstudy_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void txtVerify_TextChanged(object sender, EventArgs e)
    {

    }
}

