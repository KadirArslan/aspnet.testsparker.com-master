<%@ Control Language="C#" AutoEventWireup="True" Codebehind="Blogs.ascx.cs" Inherits="UserControls_Pages_Blogs"   ViewStateMode="Disabled" EnableViewState="false"  %>
<%--
    /Blogs.aspx

    - List of all blog posts
    
    OY - 23/09/2014
--%>
<asp:SqlDataSource ID="sqlBlogPosts" runat="server" ConnectionString="<%$ ConnectionStrings:testsparkercs %>" SelectCommand="SELECT TOP 60 * FROM [tblBlog]  WITH(NOLOCK)  ORDER BY [blogId] DESC" ViewStateMode="Disabled"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" DataKeyNames="blogId" DataSourceID="sqlBlogPosts" BorderStyle="None" BorderWidth="0px" ShowHeader="False" ViewStateMode="Disabled">
    <Columns>
        <asp:TemplateField InsertVisible="False" ControlStyle-BorderStyle="None" ControlStyle-BorderWidth="0" FooterStyle-BorderStyle="None" FooterStyle-BorderWidth="0" HeaderStyle-BorderStyle="None" HeaderStyle-BorderWidth="0" ShowHeader="False">
            <ItemTemplate >
                <h3>
                    <asp:HyperLink ID="hypSubject" runat="server" Text='<%# Eval("blogSubject") %>' NavigateUrl='<%#String.Format("/blog/{0}/", Eval("blogUrl").ToString()) %>' ViewStateMode="Disabled"></asp:HyperLink></h3>
                <p>
                    <asp:Label ID="lblDate" runat="server" Text='<%#Eval("blogDate") %>' Font-Italic="true" ViewStateMode="Disabled"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="lblContent" runat="server" Text='<%# (Eval("blogContent").ToString().Length>=170) ? Eval("blogContent").ToString().Substring(0,170) :Eval("blogContent")%>' ViewStateMode="Disabled"></asp:Label>
                </p>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BorderStyle="None" />
    <HeaderStyle BorderStyle="None" />
</asp:GridView>

