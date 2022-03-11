<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Products.aspx.cs" Inherits="Products" ValidateRequest="false" ViewStateMode="Disabled" EnableViewState="false"  %>

<%@ Register Src="~/UserControls/Vulnerabilities/products-SQLInjections.ascx" TagPrefix="uc1" TagName="productsSQLInjections" %>


<asp:Content ID="contentProducts" ContentPlaceHolderID="contentCenterMenu" runat="Server">
    <uc1:productsSQLInjections runat="server" ID="productsSQLInjections" />
</asp:Content>

