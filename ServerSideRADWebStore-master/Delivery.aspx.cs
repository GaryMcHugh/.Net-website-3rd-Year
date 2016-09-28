using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delivery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ViewState["clicks"] != null)
        {
            ViewState["clicks"] = (int)ViewState["clicks"] + 1;
        }
        else
        {
            ViewState["clicks"] = 1;
        }
        lblClicks.Text = "view state clicks: " + ((int)ViewState["clicks"]).ToString();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
}