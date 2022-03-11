using System;
using System.Web.UI.WebControls;

namespace UserControls.Pages
{
	public partial class LoggedUserDashboard2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			ContentPlaceHolder mpContentPlaceHolderNav;
			System.Web.UI.HtmlControls.HtmlGenericControl pElemLoginText=new System.Web.UI.HtmlControls.HtmlGenericControl("p");
			System.Web.UI.HtmlControls.HtmlGenericControl pElemLogoutText = new System.Web.UI.HtmlControls.HtmlGenericControl("p");
			mpContentPlaceHolderNav = (ContentPlaceHolder)Master.FindControl("ContentPlaceHolderNav");
			if (mpContentPlaceHolderNav != null)
			{
				pElemLoginText = (System.Web.UI.HtmlControls.HtmlGenericControl)mpContentPlaceHolderNav.FindControl("loginText");
				pElemLogoutText = (System.Web.UI.HtmlControls.HtmlGenericControl)mpContentPlaceHolderNav.FindControl("logoutText");
				pElemLoginText.Visible = false;
				pElemLogoutText.Visible = true;
			}

		}
	}
}