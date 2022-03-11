<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Guestbook.aspx.cs" Inherits="Guestbook"    ViewStateMode="Disabled" EnableViewState="false"  %>

<%@ Register Src="~/UserControls/Vulnerabilities/guestbook-PermenantCrossSiteScripting.ascx" TagPrefix="uc1" TagName="guestbookPermenantCrossSiteScripting" %>


<asp:Content ID="Content1" ContentPlaceHolderID="contentTop" Runat="Server">
    <uc1:guestbookPermenantCrossSiteScripting runat="server" ID="guestbookPermenantCrossSiteScripting" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentCenterMenu" Runat="Server">
</asp:Content>

