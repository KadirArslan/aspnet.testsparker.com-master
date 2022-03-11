using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class UserControls_Vulnerabilities_blog_SQLInjections : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string strBlogId = Page.RouteData.Values["blogId"].ToString();
        string strBlogUrl = "";
        if (Page.RouteData.Values["blogUrl"] != null)
            strBlogUrl = Page.RouteData.Values["blogUrl"].ToString();
        
        

        if (strBlogUrl.EndsWith("/"))
	    {
            strBlogUrl = strBlogUrl.Substring(0, strBlogUrl.Length - 1);
	    }

        try
        {

            int iID = 0;
            string strID = strBlogUrl.Substring(strBlogUrl.LastIndexOf("-") + 1, strBlogUrl.Length - (strBlogUrl.LastIndexOf("-")+1));
            int.TryParse(strID, out iID);
            if (iID < 60)
            {
                Response.Status = "404 Not Found";
                Response.StatusCode = 404;
            }
        }
        catch (Exception ex)
        {
            throw;
        }

        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testsparkercs"].ToString());

        try
        {
            conn.Open();
            string strQuery = "SELECT * FROM tblBlog   WITH(NOLOCK)  WHERE (( blogUrl = '";
            string strCommand = strQuery + strBlogUrl + "'))";

            SqlCommand cmd = new SqlCommand(strCommand, conn);
            SqlDataReader dataRead = cmd.ExecuteReader();

            while (dataRead.Read())
            {
                lblSubject.Text = dataRead["blogSubject"].ToString();
                lblDate.Text = dataRead["blogDate"].ToString();
                lblContent.Text = dataRead["blogContent"].ToString();
            }
        }
        catch
        {
            
        }
        finally
        {
            conn.Close();
            conn.Dispose();
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