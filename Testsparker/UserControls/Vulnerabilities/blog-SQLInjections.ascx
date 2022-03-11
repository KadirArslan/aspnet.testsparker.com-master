<%@ Control Language="C#" AutoEventWireup="True" Codebehind="blog-SQLInjections.ascx.cs" Inherits="UserControls_Vulnerabilities_blog_SQLInjections"  ViewStateMode="Disabled" EnableViewState="false"  %>
<%--
    /blog.aspx
    /blog/id/

    - Blind SQL Injection
    
    OY - 24/09/2014
--%>
<h1>
    <asp:Label ID="lblSubject" runat="server" Text="" ViewStateMode="Disabled"></asp:Label>
</h1>
<p>
    <asp:Label ID="lblDate" runat="server" Text="" Font-Italic="true" ViewStateMode="Disabled"></asp:Label>
</p>
<p>
    <asp:Label ID="lblContent" runat="server" Text="" ViewStateMode="Disabled"></asp:Label>
</p>
