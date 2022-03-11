<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Blogs.aspx.cs" Inherits="Blogs" ViewStateMode="Disabled" EnableViewState="false"   %>

<%@ Register Src="~/UserControls/Pages/Blogs.ascx" TagPrefix="uc1" TagName="Blogs"  %>


<asp:Content ID="contentMid" ContentPlaceHolderID="contentCenterMenu" Runat="Server" ViewStateMode="Disabled" EnableViewState="false"  >
    <uc1:Blogs runat="server" id="Blog" ViewStateMode="Disabled" />
</asp:Content>