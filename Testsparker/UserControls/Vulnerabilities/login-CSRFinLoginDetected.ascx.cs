using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_Vulnerabilities_login_CSRFinLoginDetected : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Random rand = new Random((int)DateTime.Now.Ticks);
        //int numIterations = 0;
        //numIterations = rand.Next(10000, 99000);
        //token.Value += numIterations.ToString();

        if (!Page.IsPostBack)
        {
            captchaDiv.Visible = false;
            P1.Visible = true;
            try
            {
                if (Request.QueryString["newAuth"].ToString() == "1")
                {
                    captchaDiv.Visible = true;
                    P1.Visible = false;
                }
            }
            catch (Exception)
            {
                //throw;
            }
           
            ResimOlustur();
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

            if (bLogged)
            {
                Response.Redirect("~/Dashboard/",true);
                //  Response.Write("Welcome, admin.");
            }

            if (Request.QueryString["r"]!=null)
            {

            }
            else
            {
                Response.Redirect("/administrator/Login.aspx?r=/Dashboard/");
            }
        }

        


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string strEmail, strPassword, strCaptcha;int captchaSuccess = 0; bool captchaActive;
            strEmail = Email.Value;
            strPassword = Password.Value;
            captchaActive = false;
            if (Captcha!=null)
            {
                strCaptcha = Captcha.Value;
            }else
            {
                strCaptcha = "";
            }
            try { 
                if (Request.QueryString["newAuth"].ToString() == "1")
                {
                    captchaActive = true;
                }
            }catch(Exception)
            {

            }
            if (captchaActive)
                if (strCaptcha == Session["kod"].ToString())
                    captchaSuccess = 1;
                else
                    captchaSuccess = 0;
            else
                captchaActive = false;
            if ( (captchaSuccess==1 && captchaActive) || !(captchaActive) )
            {
                if (("alan@turing.com").ToString().Equals(strEmail) && ("theturingtest").ToString().Equals(strPassword))
                {
                    Session.Add("loggedUser", "netsparker1");
                    Response.Redirect("~/Dashboard/");
                }
                else
                {
                    txtRetAlert.InnerHtml = "Login Failed. Please try again.";
                }
            }
            else
            {
                txtRetAlert.InnerHtml = "Please, enter the Captcha.";
                Captcha.Value = "";
                ResimOlustur();
            }
        }
        catch (Exception)
        {
            
            throw;
        }
        Page.EnableViewState = false;
    }

    public void ResimOlustur()
    {
        string kod = "";
        kod = RastgeleVeriUret();
        //Üretilen kodu Session nesnesine aktarır.
        Session.Add("kod", kod);
        //Rastgele üretilen metini alıp resme dönüştürelim.
        //boş bir resim dosyası oluştur.
        Bitmap bmp = new Bitmap(100, 21);
        //Graphics sınıfı ile resmin kontrolunu alır.
        Graphics g = Graphics.FromImage(bmp);
        //DrawString 20‘ye 0 kordinatına kodu‘u yazdırır.
        g.DrawString(kod, new Font("Comic Sanns MS", 15), new SolidBrush(Color.Black), 20, 0);
        //Resmi binary olarak alıp sayfaya yazdırmak ıcın MemoryStream kullandık.
        MemoryStream ms = new MemoryStream();
        bmp.Save(ms, ImageFormat.Png);
        var base64Data = Convert.ToBase64String(ms.ToArray());
        CaptchaImg.Src = "data:image/png;base64," + base64Data;
        g.Dispose();
        bmp.Dispose();
        ms.Close();
        ms.Dispose();
    }

    public string RastgeleVeriUret()
    {
        string deger = "";
        //Türkçe karakterleri kullanmaktan vazgeçtim.
        string dizi = "ABCDEFGHIJKLMNOPRSTUVYZ0123456789";
        Random r = new Random();
        //Toplam 6 karakterden oluşan rastgele bir metin oluşturalım.
        for (int i = 0; i < 5; i++)
        {
            deger = deger + dizi[r.Next(0, 33)];
        }
        return deger;
    }



}