using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_Vulnerabilities_about_ReflectedCrossSiteScripting : System.Web.UI.UserControl
{
     
    protected void Page_Load(object sender, EventArgs e)
    {
        string strVisitor = "";
        try
        {
            strVisitor = Request.QueryString["hello"].ToString();
            lblVisitor.Text = strVisitor;
        }
        catch
        {
            strVisitor = "visitor";
            lblVisitor.Text = strVisitor;
        }
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
}