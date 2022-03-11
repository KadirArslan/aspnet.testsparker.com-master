<%@ Control Language="C#" AutoEventWireup="True" Codebehind="about-WebServiceSQLInjections.ascx.cs" Inherits="UserControls_Vulnerabilities_about_WebServiceSQLInjections"   ViewStateMode="Disabled" EnableViewState="false"  %>
<style>
    ul#contentCenterMenu_aboutWebServiceSQLInjections_employeeLister{
        position:relative;
        width:800px;
        margin:0;
        text-align:center;
        padding: 0;
    }
    ul#contentCenterMenu_aboutWebServiceSQLInjections_employeeLister li {
        list-style: none;
        float:left;
        margin:5px;
    }
    ul#contentCenterMenu_aboutWebServiceSQLInjections_employeeLister li img{
        width:230px; 
    }
    .spandesc{
        display:none;
    }
</style>
<br />
<p style="text-align:left;"><h1>Our Teams</h1></p>
<br />
<ul class="employee" runat="server" id="employeeLister">

</ul>
<div style="clear:both;"></div>
<br />
<br />
<br />
<br />
<script>
    function soap(strid) {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open('POST', '/WS_search.asmx', true);

        // build SOAP request
        var sr =
            '<?xml version="1.0" encoding="utf-8"?>' +
            '<soap12:Envelope ' +
                'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" ' +
                'xmlns:xsd="http://www.w3.org/2001/XMLSchema" ' +
                'xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">' +
                '<soap12:Body>' +
                    '<GetEmployee xmlns="http://tempuri.org/">' +
                        '<id>'+strid+'</id>' +
                    '</GetEmployee>' +
                '</soap12:Body>' +
            '</soap12:Envelope>';

        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4) {
                if (xmlhttp.status == 200) {
                    var strDesc = xmlhttp.responseText;
                    ArDesc = strDesc.split("<GetEmployeeResult>");
                    ArDesc2 = ArDesc[1].split("</GetEmployeeResult>");
                    strDesc = ArDesc2[0];
                    document.getElementById("span" + strid).innerHTML = strDesc;
                    document.getElementById("span" + strid).style.display = "block";
                }
            }
        }
        // Send the POST request
        xmlhttp.setRequestHeader('Content-Type', 'text/xml');
        xmlhttp.send(sr);
    }
    function soapRequester(id) {
        var strDesc = soap(id);
        
    }
</script>