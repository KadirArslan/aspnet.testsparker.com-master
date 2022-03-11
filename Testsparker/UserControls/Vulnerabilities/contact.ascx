<%@ Control Language="C#" AutoEventWireup="True" Codebehind="contact.ascx.cs" Inherits="UserControls_Vulnerabilities_contact"  ViewStateMode="Disabled" EnableViewState="false"  %>
<%--
    /Contact.aspx

    - E-mail Address Disclosure
    - File Upload Functionality Detected
    - Generic E-mail Address Disclosure
    
    OY - 23/09/2014
--%>
<h1>Contact</h1>
<p>
    You can e-mail (mail@testsparker.com or sales@testsparker.com) us or fill out the following inquiry form. 
</p>
<div class="form-signin">
    E-Mail
    <asp:TextBox ID="txtMail" runat="server" class="form-control" ViewStateMode="Disabled"></asp:TextBox><br />
    Message
    <asp:TextBox ID="txtMessage" runat="server" class="form-control" TextMode="MultiLine" ViewStateMode="Disabled"></asp:TextBox><br />
    <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" ViewStateMode="Disabled" /><br />
    <asp:Label ID="lblStatus" runat="server" Text="" ViewStateMode="Disabled"></asp:Label>
</div>
