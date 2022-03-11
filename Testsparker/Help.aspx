<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Help.aspx.cs" Inherits="About" ValidateRequest="false"  ViewStateMode="Disabled" EnableViewState="false"   %>
<%@ Register Src="~/UserControls/Vulnerabilities/help-LocalFileInclusion.ascx" TagPrefix="uc1" TagName="helpLocalFileInclusion" %>

<asp:Content ID="contentMid" ContentPlaceHolderID="contentCenterMenu" runat="Server" ViewStateMode="Disabled">
    <uc1:helpLocalFileInclusion runat="server" ID="helpLocalFileInclusion" ViewStateMode="Disabled" />
</asp:Content>