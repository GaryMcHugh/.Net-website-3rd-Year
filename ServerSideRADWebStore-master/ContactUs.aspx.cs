using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        txtSummary.Text += "Name: " + txtName.Text + "\r\n";
        txtSummary.Text += "Age: " + txtAge.Text + "\r\n";
        txtSummary.Text += "Email: " + txtEmailConfirm.Text + "\r\n";
        txtSummary.Text += "Mobile: " + txtMobile.Text + "\r\n";
        txtSummary.Text += "Phone: " + txtPhone.Text + "\r\n";
        txtSummary.Text += "Gender: " + rbtnlGender.Text + "\r\n";
        txtSummary.Text += "Your Query: " + txtQuery.Text + "\r\n";
        txtSummary.Text += "---------------------------------------- " + "\r\n";
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtAge.Text = "";
        txtEmail.Text = "";
        txtEmailConfirm.Text = "";
        txtMobile.Text = "";
        txtPhone.Text = "";
        rbtnlGender.SelectedIndex = -1;
        txtQuery.Text = "";
        txtSummary.Text = "";
    }
    protected void valPoduct_ServerValidate(object source, ServerValidateEventArgs args)
    {
            args.IsValid =
     (args.Value.ToString().ToLower() == "fruit" ||
      args.Value.ToString().ToLower() == "vegetables" ||
      args.Value.ToString().ToLower() == "dairy" ||
      args.Value.ToString().ToLower() == "alcohol" ||
      args.Value.ToString().ToLower() == "drinks" ||
      args.Value.ToString().ToLower() == "bakery" ||
      args.Value.ToString().ToLower() == "frozen food");
    }
}