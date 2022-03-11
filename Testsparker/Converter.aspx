<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Converter.aspx.cs" Inherits="Converter"    ViewStateMode="Disabled" EnableViewState="false"  %>

<%@ Register Src="~/UserControls/Vulnerabilities/converter-AjaxJsonSqjInjection.ascx" TagPrefix="uc1" TagName="converterAjaxJsonSqjInjection" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="contentTop" Runat="Server">
    <uc1:converterAjaxJsonSqjInjection runat="server" ID="converterAjaxJsonSqjInjection" />
    <h1>Pricings</h1>
    <p style="font-weight:bold;font-style:italic;">If you see Pricings, <a href="/Pricings.aspx#y=1-year">Click here</a>.</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentCenterMenu" Runat="Server">
</asp:Content>

