using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clearance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int cookieClicks;

        if (Request.Cookies["clicks"] != null)
        {
            cookieClicks = int.Parse(Request.Cookies["clicks"].Value) + 1;
        }
        else
        {
            cookieClicks = 1;
        }

        Response.Cookies["clicks"].Value = cookieClicks.ToString();
        lblClicks.Text = "Cookie clicks: " + cookieClicks.ToString();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
}