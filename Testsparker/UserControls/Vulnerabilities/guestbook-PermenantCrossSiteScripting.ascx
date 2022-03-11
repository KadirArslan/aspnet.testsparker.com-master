<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="guestbook-PermenantCrossSiteScripting.ascx.cs" Inherits="UserControls_Vulnerabilities_guestbook_PermenantCrossSiteScripting"   ViewStateMode="Disabled" EnableViewState="false" %>
<h1>Write to us;</h1>
<p>We <3 Security.</p>
<p style="font-weight: bold;">
    <asp:Label ID="lblAuthor" runat="server" Text="Your Name:"></asp:Label></p>
<p>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox></p>
<p style="font-weight: bold;">
    <asp:Label ID="lblComment" runat="server" Text="Your Comment:"></asp:Label></p>
<p>
    <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" Height="100" Width="400" MaxLength="200"></asp:TextBox></p>
<p>Every night, all comments on the guest book erased.</p>
<p><i>The maximum length of a comment is 200 characters.</i></p>
<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
<p runat="server" id="htmlPreturn"></p>
<br />
<p>If you want to see comments, click to <span id="myDiv2"></span>.  
        <script>
            var myDiv = document.getElementById("myDiv2");

            var obj = {};

            Object.defineProperty(obj, "value", {
                value: "GuestbookList",
                writable: false,
                enumerable: true,
                configurable: true
            });

            var a = document.createElement("a");
            a.appendChild(document.createTextNode(obj.value));
            a.href = obj.value + "." + "a" + "s" + "p" + "x";
            myDiv.appendChild(a);

        </script>
</p>
