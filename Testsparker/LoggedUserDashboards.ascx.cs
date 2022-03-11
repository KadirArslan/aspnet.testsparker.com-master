using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_Vulnerabilities_LoggedUserDashboard : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        sessionCheck();
    }

    public void sessionCheck()
    {
        bool bLogged;
        bLogged = false;
        if (Session["loggedUser"] != null)
        {
            if (Session["loggedUser"].ToString().Substring(0, 10) == "netsparker")
            {
                bLogged = true;
            }
            else
            {
                bLogged = false;
            }
        }
        else
        {
            bLogged = false;
        }

        if (!bLogged)
        {
            Response.Redirect("~/administrator/Login.aspx?r=/Dashboard/", true);
        }
        else
        {
           
        }
    }
}