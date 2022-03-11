using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Services;

/// <summary>
/// Summary description for WS_Search
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class WS_Search : System.Web.Services.WebService
{

    public WS_Search()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

    [WebMethod]
    public string GetEmployee(string id)
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testsparkercs"].ToString());
        string strEmployeeName = "";
        try
        {

            conn.Open();
            id = id.ToLower().Replace("delay", "");
            id = id.ToLower().Replace("or", "");
            id = id.ToLower().Replace("and", "");
            id = id.ToLower().Replace("67", "");
            id = id.Replace("'", "");
            id = id.Replace("\"", "");
            id = id.Replace("%27", "");
            string strQuery = "select top 1 employeeName from tblEmployees  WITH(NOLOCK)  Where (( employeeId=" + id + " ))";
            string strCommand = strQuery;

            SqlCommand cmd = new SqlCommand(strCommand, conn);
            SqlDataReader dataRead = cmd.ExecuteReader();

            while (dataRead.Read())
            {
                strEmployeeName = dataRead[0].ToString();
            }
        }
        catch (Exception ex)
        {
            strEmployeeName = ex.Message;
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
        return strEmployeeName;
    }

}
