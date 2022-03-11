<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Contact.aspx.cs" Inherits="Contact"  ViewStateMode="Disabled" EnableViewState="false"  %>

<%@ Register Src="~/UserControls/Vulnerabilities/contact.ascx" TagPrefix="uc1" TagName="contact" %>
<%@ Register Src="~/UserControls/Vulnerabilities/contact-InsecureFrame(External).ascx" TagPrefix="uc1" TagName="contactInsecureFrameExternal" %>





<asp:Content ID="contentMid" ContentPlaceHolderID="contentCenterMenu" runat="Server" ViewStateMode="Disabled">
    <uc1:contact runat="server" ID="contact" />
    <uc1:contactInsecureFrameExternal runat="server" ID="contactInsecureFrameExternal" />
</asp:Content>

