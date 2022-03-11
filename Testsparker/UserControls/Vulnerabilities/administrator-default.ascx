<%@ Control Language="C#" AutoEventWireup="True" Codebehind="administrator-default.ascx.cs" Inherits="UserControls_Vulnerabilities_administrator_default" %>
<%--
    /administrator/default.aspx

    - [Possible] Administration Page Detected
    - [Possible] Backup File Disclosure
    - [Possible] Source Code Disclosure (ASP.NET)
    - [Possible] Source Code Disclosure (Generic)
    - Auto Complete Enabled
    - Auto Complete Enabled (Password Field)
    - Backup Source Code Detected

    OY - 22/09/2014
--%>
<div class="col-sm-6 col-md-4 col-md-offset-4">
    <h1 class="text-center login-title">Sign in</h1>
    <div class="form-signin">
        Username
    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" ViewStateMode="Disabled"></asp:TextBox><br />
        Password 
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" ViewStateMode="Disabled"></asp:TextBox><br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="form-control" OnClick="btnLogin_Click" ViewStateMode="Disabled" /><br />
        <asp:Label ID="lblStatus" runat="server" Text="" ViewStateMode="Disabled"></asp:Label>
    </div>
</div>
