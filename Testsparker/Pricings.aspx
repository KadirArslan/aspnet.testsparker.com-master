<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Pricings.aspx.cs" Inherits="Pricings" ViewStateMode="Disabled" EnableViewState="false"  %>

<%@ Register Src="~/UserControls/Vulnerabilities/pricings-DOMBasedXSS.ascx" TagPrefix="uc1" TagName="pricingsDOMBasedXSS" %>


<asp:Content ID="Content1" ContentPlaceHolderID="contentTop" Runat="Server">
    <uc1:pricingsDOMBasedXSS runat="server" ID="pricingsDOMBasedXSS" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentCenterMenu" Runat="Server">
</asp:Content>

