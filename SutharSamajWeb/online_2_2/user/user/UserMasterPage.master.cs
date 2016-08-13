﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class UserMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("home1.aspx");
    }
    protected void search_Click(object sender, EventArgs e)
    {
        Session["search"] = txtsearch.Text;
        Response.Redirect("ssearch.aspx");
    }
}