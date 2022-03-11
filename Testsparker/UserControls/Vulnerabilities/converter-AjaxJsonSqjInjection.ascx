<%@ Control Language="C#" AutoEventWireup="True" Codebehind="converter-AjaxJsonSqjInjection.ascx.cs" Inherits="UserControls_Vulnerabilities_converter_AjaxJsonSqjInjection"  ViewStateMode="Disabled" EnableViewState="false"  %>
<style>
.rate {
    text-align:center;
}
.rate .amount{
    font-weight:normal;
    height:60px;
    line-height:60px;
    width:250px;
    text-align:right;
    font-size:25px;
    margin:0;
    border:1px solid #d1d1d1;
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
.rate .text{
    background:#d1d1d1;
    font-weight:normal;
    height:60px;
    line-height:60px;
    width:70px;
    text-align:center;
    font-size:25px;
    cursor:default;
    border:1px solid #d1d1d1;
}
.rate .calculator {
    height:50px;
    line-height:50px;
    font-size:25px;
    background:#d1d1d1;
    border:1px solid #d1d1d1;
    color:#ffffff;
}
    .rate .calculator:hover, .rate .amount:hover, .rate .text:hover {
        border-color:#96bdff;
    }
</style>
<h1>Converter</h1>
<p style="font-style:italic;">Please enter the BTC amount you want to calculate.Then, click to Calculate Button.<br />(Does not reflect the truth.)</p>
<div class="rate">
    <p style="font-style:italic;">(Example: 1234,56 BTC = 1234,56)</p>
    <asp:TextBox ID="txtBtcAmount" MaxLength="16" CssClass="amount" runat="server"></asp:TextBox>
    <asp:TextBox ID="txtBtcText" ReadOnly="true" CssClass="text" runat="server">BTC</asp:TextBox>
    <br /><br />
    <asp:Button ID="btnCalcRate" CssClass="calculator" runat="server" Text="Calculate" OnClientClick="return callCalculator();"  />
    <br /><br />
    <asp:TextBox ID="txtUsdAmount" MaxLength="16" ReadOnly="true" CssClass="amount"  runat="server"></asp:TextBox>
    <asp:TextBox ID="txtUsdText" CssClass="text"  ReadOnly="true" runat="server">USD</asp:TextBox>
</div>

<script>
    var callCalculator = function () {
        try{

            var vBtcAmount = document.getElementById("contentTop_converterAjaxJsonSqjInjection_txtBtcAmount").value;
            var obj = {};
            obj["btcAmount"] = vBtcAmount;

            $.ajax({
                type: 'POST',
                url: "ConverterResponse.aspx",
                data: JSON.stringify(obj),
                success: function (returnPayload) {
                    var jrObj = eval(returnPayload);
                    var ConvertedUsdAmount = jrObj.btcCalcVal;
                    ConvertedUsdAmount = parseFloat(ConvertedUsdAmount.replace(".",",").replace(",", ".")).toFixed(2);
                    ConvertedUsdAmount = ConvertedUsdAmount.replace(".", ",")
                    document.getElementById("contentTop_converterAjaxJsonSqjInjection_txtUsdAmount").value = ConvertedUsdAmount;
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console && console.log("request failed : " + thrownError);
                },
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                processData: false,
                async: false
            });
        }catch(err){
            console.log("Hata Aldık : "+err.message);
        }
            return false;
    }

</script>