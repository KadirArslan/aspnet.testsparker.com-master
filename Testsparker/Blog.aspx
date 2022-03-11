<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Blog.aspx.cs" Inherits="Blog" ValidateRequest="false" ViewStateMode="Disabled" EnableViewState="false"  %>

<%@ Register Src="~/UserControls/Vulnerabilities/blog-SQLInjections.ascx" TagPrefix="uc1" TagName="blogSQLInjections"  %>


<asp:Content ID="contentBlog" ContentPlaceHolderID="contentCenterMenu" runat="Server">
    <uc1:blogSQLInjections runat="server" id="blogSQLInjection" />
</asp:Content>

