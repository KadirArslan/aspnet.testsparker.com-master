using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_Vulnerabilities_administrator_default : System.Web.UI.UserControl
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
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        lblStatus.Text = "Login failed. Username or password is incorrect.";
    }
}