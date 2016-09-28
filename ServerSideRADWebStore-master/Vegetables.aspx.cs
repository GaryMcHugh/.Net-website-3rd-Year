using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vegetables : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Session["SessionClicks"] = (int)Session["SessionClicks"] + 1;
        //lblSessionClicks.Text = "Session Clicks: " + Session["SessionClicks"].ToString();

        Application.Lock();
        Application["AppClicks"] = (int)Application["AppClicks"] + 1;
        Application.UnLock();
        lblClicks.Text = "App Clicks: " + Application["AppClicks"].ToString();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
}