using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_Vulnerabilities_guestbook_PermenantCrossSiteScripting : System.Web.UI.UserControl
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
    public bool blackListCheck(string str)
    {
        str = str.Trim();
        int iOut = 0;
       
        if (str.IndexOf("#") > -1)
            return false;
        if (str.IndexOf("$") > -1)
            return false;
        if (str.IndexOf("+") > -1)
            return false;
        if (str.IndexOf("-") > -1)
            return false;
        if (str.IndexOf("'") > -1)
            return false;
        if (str.IndexOf("\"") > -1)
            return false;
        if (str.IndexOf("{") > -1)
            return false;
        if (str.IndexOf("}") > -1)
            return false;
        if (str.IndexOf(".") > -1)
            return false;
        string output = Regex.Replace(str, @"[\d-]", string.Empty);
        if (output == "")
            return false;

        //if (str.IndexOf("<") > -1)
        //    return true;
        return true;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testsparkercs"].ToString());

        try
        {
            conn.Open();
            string strAuthor, strComment;
            strAuthor = txtName.Text;
            strComment = txtComment.Text;
            strAuthor = strAuthor.Trim();
            strComment = strComment.Trim();
            if (strAuthor!="" && strComment!="")
            {
                if (blackListCheck(strAuthor) && blackListCheck(strComment))
                {
                    if (strComment.Length>200)
                    {
                        strComment.Substring(0, 200);
                    }
                    String query = "INSERT INTO tblComments (commentDate,commentAuthor,commentText) VALUES (GETDATE(),@commentAuthor,@commentText)";

                    SqlCommand command = new SqlCommand(query, conn);
                    command.Parameters.AddWithValue("@commentAuthor", strAuthor);
                    command.Parameters.AddWithValue("@commentText", strComment);
                    command.ExecuteNonQuery();

                    txtName.Text = "";
                    txtComment.Text = "";
                    htmlPreturn.Style.Add("color", "green");
                    htmlPreturn.Style.Add("font-weight","bold");
                    htmlPreturn.InnerHtml = "Thanks! Your comments submitted!";
                }
                else
                {
                    htmlPreturn.Style.Add("color", "red");
                    htmlPreturn.Style.Add("font-weight", "bold");
                    htmlPreturn.InnerHtml = "Please, post only strings (you cannot use only digits) and don't use: #,$,-,',\"^,+,{,}.";
                }
            }
            else
            {
                htmlPreturn.Style.Add("color", "red");
                htmlPreturn.Style.Add("font-weight", "bold");
                htmlPreturn.InnerHtml = "Please, fill all required fields.";
            }


        }
        catch (Exception exError)
        {
            txtComment.Text = exError.ToString();
        }
        finally
        {
            conn.Close();
            conn.Dispose();
        }
    }
}