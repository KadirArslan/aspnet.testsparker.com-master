<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="GuestbookList.aspx.cs" Inherits="GuestbookList"    ViewStateMode="Disabled" EnableViewState="false"  %>

<%@ Register Src="~/UserControls/Vulnerabilities/guestbooklist-PermenantCrossSiteScripting.ascx" TagPrefix="uc1" TagName="guestbooklistPermenantCrossSiteScripting" %>


<asp:Content ID="Content1" ContentPlaceHolderID="contentTop" Runat="Server" ViewStateMode="Disabled">
    <uc1:guestbooklistPermenantCrossSiteScripting runat="server" ID="guestbooklistPermenantCrossSiteScripting" ViewStateMode="Disabled" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentCenterMenu" Runat="Server" ViewStateMode="Disabled">
</asp:Content>

