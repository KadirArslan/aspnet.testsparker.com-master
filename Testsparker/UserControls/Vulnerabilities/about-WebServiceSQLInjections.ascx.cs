using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_Vulnerabilities_about_WebServiceSQLInjections : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testsparkercs"].ToString());
        string strEmployeeId = "";
        string strEmployeeName = "";
        string strEmployeeDescription = "";
        string strEmployeeImage = "";
        try
        {
            conn.Open();
            string strQuery = "select * from tblEmployees   WITH(NOLOCK)  order by employeeId asc";
            string strCommand = strQuery;

            SqlCommand cmd = new SqlCommand(strCommand, conn);
            SqlDataReader dataRead = cmd.ExecuteReader();
            int count = 0;
            while (dataRead.Read())
            {
                strEmployeeId = dataRead["employeeId"].ToString();
                strEmployeeName = dataRead["employeeName"].ToString();
                strEmployeeDescription = dataRead["employeeDescription"].ToString();
                strEmployeeImage = dataRead["employeeImage"].ToString();
                string txtmargin="";
                if (count==0)
                {
                    txtmargin = "style=\"margin-left:0\"";
                }else{
                    txtmargin="";
                }
                employeeLister.InnerHtml += "<li " + txtmargin + "><a onclick=\"soapRequester(" + strEmployeeId + ");\" title=\"If you want to see details, click to image.\" href=\"#soapRequesterRunned\"><img src=\"/statics/" + strEmployeeImage + "\" /></a><span class=\"spandesc\" id=\"span" + strEmployeeId + "\"></span></li>";
                count++;
            }
        }
        finally
        {
            conn.Close();
            conn.Dispose();
        }
        if (strEmployeeName == "")
        {
            strEmployeeName = "-";
        }
    }
}