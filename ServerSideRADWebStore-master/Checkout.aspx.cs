using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int clicks;
        int.TryParse(hidField.Value, out clicks);
        clicks++;
        hidField.Value = clicks.ToString();
        lblClicks.Text = "Hidden Field clicks: " + hidField.Value;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
}