using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_Vulnerabilities_redirect_OpenRedirection : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strSite = "";
        if(Request.QueryString["site"] != null)
            strSite=Request.QueryString["site"].ToString();

        if (strSite == "" || strSite == null || strSite.Contains("www") == true || strSite.Contains("//") == true)
        {
            Response.Redirect("default.aspx");
        }
        else
        {
            try {
                Response.Redirect("http://www." + strSite);
            }
            catch (Exception ) {
                throw;
            }
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