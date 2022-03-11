using System;
using System.Collections.Generic;
using System.IO;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //sessionCheckForDesign();
        if (Session["ShoppingCart"] != null)
        {
           // var products = (List<int>)Session["ShoppingCart"];
            //lblCartAmount.Text = products.Count.ToString();
        }
    }

    //protected override void Render(HtmlTextWriter output)
    //{
    //    StringWriter stringWriter = new StringWriter();
    //    HtmlTextWriter textWriter = new HtmlTextWriter(stringWriter);
    //    base.Render(textWriter);
    //    textWriter.Close();
    //    string strOutput = stringWriter.GetStringBuilder().ToString();
    //    strOutput = Regex.Replace(strOutput, "<input[^>]*id=\"__VIEWSTATE\"[^>]*>", "", RegexOptions.Singleline);
    //    strOutput = Regex.Replace(strOutput, "<input[^>]*id=\"__EVENTVALIDATION\"[^>]*>", "", RegexOptions.Singleline);
    //    output.Write(strOutput);
    //}

    public void sessionCheckForDesign()
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
            //mvLoginLogout.ActiveViewIndex = 0;
        }
        else
        {
            //mvLoginLogout.ActiveViewIndex = 1;
        }
    }

}
