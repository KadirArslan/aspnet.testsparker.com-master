using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_Pages_LogoutProcess : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
        string[] cookies = Request.Cookies.AllKeys;
        foreach (string cookie in cookies)
        {
            Response.Cookies[cookie].Expires = DateTime.Now.AddDays(-1);
        }

        Response.Redirect("~/administrator/Login.aspx");
    }
}