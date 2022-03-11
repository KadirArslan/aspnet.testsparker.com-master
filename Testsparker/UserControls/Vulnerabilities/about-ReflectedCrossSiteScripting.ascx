<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="about-ReflectedCrossSiteScripting.ascx.cs" Inherits="UserControls_Vulnerabilities_about_ReflectedCrossSiteScripting"  ViewStateMode="Disabled" EnableViewState="false"  %>
<%--
    /about.aspx

    - Reflected Cross-site Scripting (XSS)
    
    OY - 23/09/2014
--%>
<style>
    span#myspan4{
        background-color: wheat;
    }

</style>
<h1>About</h1>
<p>
    Hello
    <asp:Label ID="lblVisitor" runat="server" Text="" ViewStateMode="Disabled"></asp:Label>
</p>
<p>
    Bitcoin is controlled by all Bitcoin users around the world. Developers are improving the software but they can't force a change in the rules of the Bitcoin protocol because all users are free to choose what software they use. In order to stay compatible with each other, all users need to use software complying with the same rules. Bitcoin can only work decently with a complete consensus between all users. Therefore, all users and developers have strong incentives to adopt and protect this consensus.


</p>
<strong>Mission</strong>
<ol >
  <li>Inform users to protect them from common mistakes.</li>
  <li>Give an accurate description of Bitcoin properties, potential uses and limitations.</li>
  <li>Display transparent alerts and events regarding the Bitcoin network.</li>
  <li>Invite talented humans to help with Bitcoin development at many levels.</li>
  <li>Provide visibility to the large scale Bitcoin ecosystem.</li>
  <li>Improve Bitcoin worldwide accessibility with internationalization.</li>
  <li>Remain a neutral informative resource about Bitcoin.</li>
</ol>
