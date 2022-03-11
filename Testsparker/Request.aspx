<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Request.aspx.cs" Inherits="Request"  ViewStateMode="Disabled" EnableViewState="false"  %>

<%@ Register Src="~/UserControls/Vulnerabilities/request-CSRFDetected.ascx" TagPrefix="uc1" TagName="requestCSRFDetected" %>


<asp:Content ID="Content1" ContentPlaceHolderID="contentTop" Runat="Server">
        <uc1:requestCSRFDetected runat="server" ID="requestCSRFDetected" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentCenterMenu" Runat="Server">

</asp:Content>

