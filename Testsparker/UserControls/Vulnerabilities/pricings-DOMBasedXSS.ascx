<%@ Control Language="C#" AutoEventWireup="True" Codebehind="pricings-DOMBasedXSS.ascx.cs" Inherits="UserControls_Vulnerabilities_pricings_DOMBasedXSS"  ViewStateMode="Disabled" EnableViewState="false"  %>
<table width="100%" cellspacing="0" cellpadding="0">
                    <tbody><tr>
                        <td style="border: 0" colspan="2">
                        </td>
                        <td colspan="3" valign="bottom" style="border: 0;">
                            
                        </td>
                    </tr>
                    <tr id="pheaders">
                        <td style="border-top: 0; background-color: transparent; width: 338px;">
                            <div id="pexp" style="font-size: 120%; margin: 0; background-color: Transparent;">
                                Don't know what to choose?<br>
                                <a href="/Contact.aspx">Let us help you.</a></div>
                        </td>
                        
                        <td align="center" class="noright" style="width: 330px;">
							<h4>STANDART</h4>
                            <span><strong>Price:</strong>* for <span id="pricestd">1 year</span></span>
                        </td>
                        <td class="proleftcol" style="width: 5px;">
                            &nbsp;
                        </td>
                        <td align="center" class="protop" style="border-top: 0; width: 300px;">
							<h4>PROFESSIONAL</h4>
                            <span><strong>Price:</strong>* for <span id="pricepro">1 year</span></span>
                        </td>
                        <td class="proleftcol" style="width: 5px;">
                            &nbsp;
                        </td>
                    </tr>
                    <tr class="commonr" id="pbuttons">
                        <td class="heads">
                            &nbsp;
                        </td>
                        
                        <td align="center" class="noright">
                            <a id="buy-link-std" href="?edition=std">
                                <img src="/statics/btnBuyNowPricingBlue.gif" width="148" height="38" style="padding: 2px;" alt=""></a>
                        </td>
                        <td align="center" class="proleftcol">
                            &nbsp;
                        </td>
                        <td align="center" class="procolumn">
                            <a id="buy-link-pro" href="?edition=pro">
                                <img src="/statics/btnBuyNowPricing.gif" width="148" height="38" style="padding: 2px;" alt=""></a>
                        </td>
                        <td class="proleftcol">
                            &nbsp;
                        </td>
                    </tr>
           
                    <tr class="commonr">
                        <td class="headsl">
                            <strong>Seats</strong>
                        </td>
                        
                        <td class="norightl">
                            1
                        </td>
                        <td class="proleftcol">
                            &nbsp;
                        </td>
                        <td class="procolumn">
                            1
                        </td>
                        <td class="proleftcol">
                            &nbsp;
                        </td>
                    </tr>
                    <tr class="commonr">
                        <td class="heads">
                            <strong>Website Limit</strong>
                        </td>
                        
                        <td class="noright">
                            3
                        </td>
                        <td class="proleftcol">
                            &nbsp;
                        </td>
                        <td class="procolumn">
                            <strong>Unlimited</strong>
                        </td>
                        <td class="proleftcol">
                            &nbsp;
                        </td>
                    </tr>
                    <tr class="commonr">
                        <td class="headsl">
                            <strong>High Priority Customer Support</strong>
                        </td>
                        
                        <td class="norightl">
                            <img src="/statics/y.gif" alt="">
                        </td>
                        <td class="proleftcol">
                            &nbsp;
                        </td>
                        <td class="procolumn">
                            <img src="/statics/y.gif" alt="">
                        </td>
                        <td class="proleftcol">
                            &nbsp;
                        </td>
                    </tr>
                    
                    
                    <tr class="commonr">
                        <td class="heads">
                            False-Positive Free
                        </td>
                        
                        <td class="noright">
                            <img src="/statics/y.gif" alt="">
                        </td>
                        <td class="proleftcol">
                            &nbsp;
                        </td>
                        <td class="procolumn">
                            <img src="/statics/y.gif" alt="">
                        </td>
                        <td class="proleftcol">
                            &nbsp;
                        </td>
                    </tr>
                    
                    <tr class="commonr">
                        <td class="headsl">
                            Hassle Free Licensing
                        </td>
                        
                        <td class="norightl">
                            <img src="/statics/y.gif" alt="">
                        </td>
                        <td class="proleftcol">
                            &nbsp;
                        </td>
                        <td class="procolumn">
                            <img src="/statics/y.gif" alt="">
                        </td>
                        <td class="proleftcol">
                            &nbsp;
                        </td>
                    </tr>
                    
                    <tr class="commonr">
                        <td class="heads">
                            Free Automated Updates
                        </td>
                        
                        <td class="noright">
                            <img src="/statics/y.gif" alt="">
                        </td>
                        <td class="proleftcol">
                            &nbsp;
                        </td>
                        <td class="procolumn">
                            <img src="/statics/y.gif" alt="">
                        </td>
                        <td class="proleftcol">
                            &nbsp;
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="noright" colspan="2">
                            &nbsp;
                        </td>
                        <td colspan="3" valign="top" style="border: 0">
               
                        </td>
                    </tr>                    
                </tbody>
</table>
<script>
    function getelem(objId) {
        return document.getElementById(objId);
    }

    function log(msg) {
        console.log("LOG: " + msg);
    }

    // vulnerable code
    var taintedVariable = location.href.split("#")[1];
    setTimeout("var x=" + taintedVariable, 500);
</script>
