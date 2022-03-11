<%@ Control Language="C#" AutoEventWireup="True" Codebehind="Shop.ascx.cs" Inherits="UserControls_Pages_Shop"  ViewStateMode="Disabled" EnableViewState="false"  %>
<%--
    /Shop.aspx

    - List of all products
    
    OY - 25/09/2014
--%> 
<!-- Start -->
    <asp:DataList ID="dlAllProducts" runat="server" DataKeyField="productId" DataSourceID="sqlAllProducts" RepeatLayout="Flow" RepeatDirection="Horizontal" ViewStateMode="Disabled">
        <ItemTemplate >
            <div class="col-sm-4 col-lg-4 col-md-4" style="height:500px;">
                <div class="thumbnail">
                    <img src='<%#Eval("productTumbImageUrl").ToString().Replace(" ","") %>' width="200" height="80" alt="">
                    <div class="caption">
                        <h4 class="pull-right">
                            <asp:Label ID="lblPrice" runat="server" Text='<%#Eval("productPrice").ToString() %>' ViewStateMode="Disabled"></asp:Label>
                        </h4>
                        <h4>
                            <asp:HyperLink ID="hypProduct" runat="server" Text='<%#Eval("productName").ToString() %>' NavigateUrl='<%#String.Format("/Products.aspx?pId={0}", Eval("productId").ToString()) %>' ViewStateMode="Disabled"></asp:HyperLink>
                        </h4>
                        <p>
                            <asp:Label ID="lblProductDescription" runat="server" Text='<%#Eval("productDescription").ToString()%>' ViewStateMode="Disabled"></asp:Label>
                        </p>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
 
<!-- End -->
<asp:SqlDataSource ID="sqlAllProducts" runat="server" ConnectionString="<%$ ConnectionStrings:testsparkercs %>" SelectCommand="SELECT TOP 2 * FROM [tblProducts]   WITH(NOLOCK)  ORDER BY [productPrice] DESC" ViewStateMode="Disabled"></asp:SqlDataSource>
