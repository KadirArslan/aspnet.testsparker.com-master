using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/*
 * MY 2015.02.05
 */

public partial class UserControls_Vulnerabilities_help_LocalFileInclusion : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //divFileContent Load
            if (Request.QueryString["item"] != null)
            {
                string item = Request.QueryString["item"].ToString();
                //if (item.IndexOf("windows") > 0 || item.IndexOf("../") > 0 || item.IndexOf("..%2") > 0)
                //{
                //    item = "help-yes.html";
                //}
                // Specify file, instructions, and privelegdes
                FileStream file = new FileStream(HttpContext.Current.Server.MapPath("~") + "statics/" + item, FileMode.Open, FileAccess.Read);
                // Create a new stream to read from a file
                StreamReader sr = new StreamReader(file);
                // Read contents of file into a string
                string cval = sr.ReadToEnd();
                divFileContent.InnerHtml = cval;
                // Close StreamReader
                sr.Close();
                // Close file
                file.Close();
                //html file reading
                //string text = File.ReadAllText(@"D:\Program Files\Microsoft Visual Studio 9.0\Common7\IDE\test.html");
            }
        }
        catch (Exception)
        {
            throw;
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