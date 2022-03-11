<%@ Control Language="C#" AutoEventWireup="True" Codebehind="products-SQLInjections.ascx.cs" Inherits="UserControls_Vulnerabilities_products_SQLInjections"  ViewStateMode="Disabled" EnableViewState="false"  %>
<%--
    /products.aspx
    /products.aspx?pId

    - SQL Injection
    - Boolean SQL Injection
    
    OY - 25/09/2014
--%>
<div class="thumbnail">
    <center><asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label></center>
    <div class="caption">
        <h4 class="pull-right"><asp:Label ID="lblProductPrice" runat="server"></asp:Label> BTC (Stock: 1)
            <br />
            <!--
            <asp:Button ID="btnAddToCart" runat="server" CssClass="pull-right" Text="Add to Cart" OnClick="AddToCart"  />
            -->
            </h4>

        <h4><asp:Label ID="lblProductName" runat="server"></asp:Label></h4>
        <center><asp:Image ID="imgProductImage" runat="server" AlternateText="" /></center>
        <br />
        <p><asp:Label ID="lblProductDescription" runat="server"></asp:Label></p>
        <p><i>Back to <a href="/Shop.aspx">shop</a>.</i></p>
    </div>
</div>
