using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
public partial class UserControls_Vulnerabilities_converterResponse_AjaxJsonSqlInjection : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Clear();
        Response.ContentType = "application/json";

        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testsparkercs"].ToString());

        try
        {
            conn.Open();
            string strBtcAmount = "";
            string jsonString = new StreamReader(HttpContext.Current.Request.InputStream).ReadToEnd();
            if (jsonString!=null)
            {
                    try
                    {
                        dynamic dynObj = JsonConvert.DeserializeObject(jsonString);
                        if (dynObj.btcAmount != null)
                        {
                            strBtcAmount = dynObj.btcAmount;
                        }
                    }
                    catch (Exception)
                    {

                    }
            }

            if (strBtcAmount=="")
            {
                strBtcAmount = "1";
            }
            else
            {
                //seperate gelen değerleri dot ile değiştirilmediğinde sutün olarak algılıyor.
                //Bu Bug ı düzeltirsek injectionlar etkilenebilir :)
                //strBtcAmount=strBtcAmount.Replace(",",".");
            }


            strBtcAmount = strBtcAmount.ToLower().Replace("delay", "");
            string strQuery = "select top 1 BtcValueForUsd*(" + strBtcAmount + "),BtcValueForUsd from tblbtcvalues   WITH(NOLOCK)  order by newid() ";
            string strCommand = strQuery ;

            SqlCommand cmd = new SqlCommand(strCommand, conn);
            SqlDataReader dataRead = cmd.ExecuteReader();

            while (dataRead.Read())
            {
                string jData="";
                string btcOrigVal = dataRead[1].ToString().Replace(",","").Replace(".",",");
                string btcCalcVal = dataRead[0].ToString().Replace(",", "").Replace(".", ",");
                jData = "{\"btcOrigVal\":\"" + btcOrigVal + "\", \"btcCalcVal\":\"" + btcCalcVal + "\"}";
                jData.Replace("\r\n", "").Replace("\r", "").Replace("\n", "").Replace("\\0xA0", "").Replace("\\0x3", "").Replace("\\x08", "");
                Response.Write(jData);
            }
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message.ToString()); 
            Response.Write(ex.StackTrace.ToString());
        }
        finally
        {
            conn.Close();
            conn.Dispose();
        }
        Response.End();
    }
 

 
}