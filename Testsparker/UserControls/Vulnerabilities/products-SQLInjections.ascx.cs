using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class UserControls_Vulnerabilities_products_SQLInjections : System.Web.UI.UserControl
{
    string strProductId = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        lblResult.Text = "";
        if (Request.QueryString["pId"] != null)
            strProductId = Request.QueryString["pId"].ToString();

        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testsparkercs"].ToString());

        try
        {
            conn.Open();
            strProductId = strProductId.ToLower().Replace("delay", "");
            strProductId = strProductId.ToLower().Replace("or", "");
            strProductId = strProductId.ToLower().Replace("and", "");
            strProductId = strProductId.Replace("'", "");
            strProductId = strProductId.Replace("\"", "");
            strProductId = strProductId.Replace("%27", "");

            string strQuery = "SELECT * FROM tblProducts  WITH(NOLOCK)  WHERE (( productId=";
            string strCommand = strQuery + strProductId + " ))";

            SqlCommand cmd = new SqlCommand(strCommand, conn);
            SqlDataReader dataRead = cmd.ExecuteReader();

            while (dataRead.Read())
            {
                lblProductPrice.Text = dataRead["productPrice"].ToString().Trim();
                lblProductName.Text = dataRead["productName"].ToString().Trim();
                imgProductImage.ImageUrl = dataRead["productTumbImageUrl"].ToString().Trim();
                lblProductDescription.Text = dataRead["productDescription"].ToString().Trim();
            }
        }
        catch (Exception exError)
        {
            imgProductImage.AlternateText = exError.Message.ToString();
        }
        finally
        {
            conn.Close();
            conn.Dispose();
        }
    }


    public void AddToCart(object sender, EventArgs e)
    {
        if (Session["ShoppingCart"] == null)
        {
            Session["ShoppingCart"] = new List<int>();
        }

        var products = (List<int>)Session["ShoppingCart"];
        int iID = 0;
        if (int.TryParse(strProductId,out iID))
        {
            if (iID!=0)
            {
                if (!products.Contains(iID))
                {
                    products.Add(iID);
                    lblResult.Text = "Product added to your cart.You can complete your order.";
                    lblResult.Style.Add("color", "green");
                    lblResult.Style.Add("font-weight", "bold");
                    Label a = (Label)Page.Master.FindControl("ContentPlaceHolderNav").FindControl("lblCartAmount");
                    a.Text= products.Count.ToString();
                }
                else
                {
                    lblResult.Text = "This product is already added to cart.You can't add more.";
                    lblResult.Style.Add("color", "red");
                    lblResult.Style.Add("font-weight", "bold");
                }
                
            }
            
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