<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="LoggedUserDashboard.aspx.cs" Inherits="LoggedUserDashboard" %>

<%@ Register Src="~/LoggedUserDashboards.ascx" TagPrefix="uc1" TagName="LoggedUserDashboards" %>


<asp:Content ID="Content1" ContentPlaceHolderID="contentTop" Runat="Server"  ViewStateMode="Disabled"> 
    <uc1:LoggedUserDashboards runat="server" ID="LoggedUserDashboards"  ViewStateMode="Disabled" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentCenterMenu" Runat="Server"  ViewStateMode="Disabled">
</asp:Content>

