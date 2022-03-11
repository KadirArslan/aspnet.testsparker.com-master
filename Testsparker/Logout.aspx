<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Logout.aspx.cs" Inherits="Logout" %>

<%@ Register Src="~/UserControls/Pages/LogoutProcess.ascx" TagPrefix="uc1" TagName="LogoutProcess" %>


<asp:Content ID="Content1" ContentPlaceHolderID="contentTop" Runat="Server" ViewStateMode="Disabled">
    <uc1:LogoutProcess runat="server" id="LogoutProcess" ViewStateMode="Disabled" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentCenterMenu" Runat="Server" ViewStateMode="Disabled">
</asp:Content>

