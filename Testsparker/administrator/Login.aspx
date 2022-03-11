<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Login.aspx.cs" Inherits="administrator_Default" %>

<%@ Register Src="~/UserControls/Vulnerabilities/login-CSRFinLoginDetected.ascx" TagPrefix="uc1" TagName="loginCSRFinLoginDetected" %>


<asp:Content ID="contentMid" ContentPlaceHolderID="contentCenterMenu" runat="Server">
    
 <uc1:loginCSRFinLoginDetected runat="server" ID="login_C_S_R_F_inLoginDetected" />

</asp:Content>