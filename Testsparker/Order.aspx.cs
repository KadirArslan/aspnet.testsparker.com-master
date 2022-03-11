using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testsparker
{
    public partial class Order : System.Web.UI.Page
    {
        public decimal dTotalPrice = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.EnableViewState = true; //TODO: göz atilacak
            if (Session["ShoppingCart"] == null)
            {
                lblEntry.Text = "You didn't add any product to your cart.";
                lblEntry.Style.Add("color", "red");
                lblEntry.Style.Add("font-weight", "bold");
                MultiView1.ActiveViewIndex = 0;
            }
            else
            {
                var products = (List<int>)Session["ShoppingCart"];
                sqlFilteredProducts.SelectCommand = String.Format(
                    "SELECT * FROM[tblProducts]  WITH(NOLOCK)  Where productId in ({0}) ORDER BY[productName] DESC",
                    String.Join(", ", products));
                MultiView1.ActiveViewIndex = 1;

            }

            if (Request.QueryString["next"] != null && Request.QueryString["next"].ToString() == "Address")
            {
                MultiView1.ActiveViewIndex = 2;
                if (Session["ShoppingCart"] == null)
                {
                    Response.Redirect("Order.aspx?next=empty");
                }
                if (Session["Name"] != null)
                {
                    TextBox1.Text = Session["Name"].ToString();
                }
                if (Session["Email"] != null)
                {
                    TextBox2.Text = Session["Email"].ToString();
                }
                if (Session["Phone"] != null)
                {
                    TextBox3.Text = Session["Phone"].ToString();
                }
                if (Session["Address"] != null)
                {
                    TextBox4.Text = Session["Address"].ToString();
                }
            }
            if (Request.QueryString["next"] != null && Request.QueryString["next"].ToString() == "Payment")
            {
                MultiView1.ActiveViewIndex = 3;
                if (Session["Address"] == null)
                {
                    Response.Redirect("Order.aspx?next=Address");
                }
                if (Session["dTotalPrice"] == null)
                {
                    Response.Redirect("Order.aspx?next=Address");
                }
                dTotalPrice = Convert.ToDecimal(Session["dTotalPrice"].ToString());
                lblAmount.Text = dTotalPrice.ToString() + " BTC";
                String guid = Guid.NewGuid().ToString();
                lblConfirmation.Text = guid;
                Session["Guid"] = guid;
            }
            if (Request.QueryString["next"] != null && Request.QueryString["next"].ToString() == "Confirmation")
            {
                MultiView1.ActiveViewIndex = 4;
                if (Session["Payment"] == null)
                {
                    Response.Redirect("Order.aspx?next=Payment");
                }

                //Session.Remove("Payment");
                //Session.Remove("Name");
                //Session.Remove("Email");
                //Session.Remove("Phone");
                //Session.Remove("Address");
                //Session.Remove("dTotalPrice");
                //Session.Remove("ShoppingCart");
            }
        }

        protected void dlAllProducts_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                if (e.Item.DataItem != null)
                {
                    dTotalPrice += Convert.ToDecimal(((System.Data.DataRowView)(e.Item.DataItem)).Row.ItemArray[1]);
                    Session["dTotalPrice"] = dTotalPrice.ToString();
                }
            }
        }

        protected void btnConfirm1_Click(object sender, EventArgs e)
        {

            Response.Redirect("Order.aspx?next=Address");
        }

        protected void btnConfirm2_Click(object sender, EventArgs e)
        {
            Session["Name"] = TextBox1.Text.ToString();
            Session["Email"] = TextBox2.Text.ToString();
            Session["Phone"] = TextBox3.Text.ToString();
            Session["Address"] = TextBox4.Text.ToString();
            Response.Redirect("Order.aspx?next=Payment");
        }

        protected void btnConfirm3_Click(object sender, EventArgs e)
        {
            Session["Payment"] = 1;
            string guid = "";
            if (Session["Guid"] != null)
            {
                guid = Session["Guid"].ToString();
            }
            Response.Redirect("Order.aspx?next=Confirmation&orderNo=" + guid);
        }

    }
}