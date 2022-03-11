<%@ Control Language="C#" AutoEventWireup="True" Codebehind="guestbooklist-PermenantCrossSiteScripting.ascx.cs" Inherits="UserControls_Vulnerabilities_guestbooklist_PermenantCrossSiteScripting" ViewStateMode="Disabled" EnableViewState="false"  %>

<h2>Last Comments</h2>
<asp:SqlDataSource ID="sqlComments" runat="server" ConnectionString="<%$ ConnectionStrings:testsparkercs %>" SelectCommand="SELECT TOP 1000 * FROM [tblComments] WITH(NOLOCK)  ORDER BY [commentDate] DESC" ViewStateMode="Disabled"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" DataKeyNames="commentId" DataSourceID="sqlComments" BorderStyle="None" BorderWidth="0px" ShowHeader="False" AllowPaging="True" PageSize="500" ViewStateMode="Disabled" >
    <Columns>
        <asp:TemplateField InsertVisible="False" ControlStyle-BorderStyle="None" ControlStyle-BorderWidth="0" FooterStyle-BorderStyle="None" FooterStyle-BorderWidth="0" HeaderStyle-BorderStyle="None" HeaderStyle-BorderWidth="0" ShowHeader="False">
            <ItemTemplate>
                <h3> <asp:Label ID="Label1" Font-Size="Medium" runat="server" Text='<%#Eval("commentAuthor").ToString().Trim() %>' Font-Italic="true" ViewStateMode="Disabled"></asp:Label> </h3>
                <p>
                    <asp:Label ID="lblDate" runat="server" Text='<%#Eval("commentDate") %>' Font-Italic="true" ViewStateMode="Disabled"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="lblContent" runat="server" Text='<%#Eval("commentText").ToString().Trim()%>' ViewStateMode="Disabled"></asp:Label>
                </p>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BorderStyle="None" />
    <HeaderStyle BorderStyle="None" />
</asp:GridView>
