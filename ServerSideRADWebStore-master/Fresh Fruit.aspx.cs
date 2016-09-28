using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FreshFruit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int queryClicks;
            if (Request.QueryString["clicks"] != null)
            {
                queryClicks = int.Parse(Request.QueryString["clicks"]) + 1;
            }
            else
            {
                queryClicks = 1;
            }
            hlnkPage2.NavigateUrl += "?clicks=" + queryClicks.ToString();
            lblClicks.Text = "Query clicks: " + queryClicks.ToString();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
}