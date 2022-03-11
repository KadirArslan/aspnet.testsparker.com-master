<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Shop.aspx.cs" Inherits="Shop" %>

<%@ Register Src="~/UserControls/Pages/Shop.ascx" TagPrefix="uc1" TagName="Shop" %>


<asp:Content ID="contentShop" ContentPlaceHolderID="contentCenterMenu" Runat="Server">
    <uc1:Shop runat="server" ID="Shops" />
</asp:Content>

