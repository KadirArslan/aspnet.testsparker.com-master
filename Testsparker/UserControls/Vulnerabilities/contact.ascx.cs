using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_Vulnerabilities_contact : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.EnableViewState = false;
    }

    public void DisableViewState()

    {

        this.Init += new EventHandler(Page_Init);

    }



    private void Page_Init(object sender, System.EventArgs e)

    {

        this.EnableViewState = false;

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        txtMail.Text = string.Empty;
        txtMessage.Text = string.Empty;

        lblStatus.Text = "We received your message and contact details. We'll get back to you soon via e-mail.";
    }
}