<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Login.aspx.cs" Inherits="UserControls_Login" %>

<%@ Register Src="~/UserControls/Vulnerabilities/login-CSRFinLoginDetected.ascx" TagPrefix="uc1" TagName="loginCSRFinLoginDetected" %>


<asp:Content ID="Content1" ContentPlaceHolderID="contentTop" Runat="Server">
    <uc1:loginCSRFinLoginDetected runat="server" ID="loginCSRFinLoginDetected" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentCenterMenu" Runat="Server">
</asp:Content>

