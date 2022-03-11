<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="Default.aspx.cs" Inherits="_Default"   ViewStateMode="Disabled" EnableViewState="false"  %>


<asp:Content ID="Content1" ContentPlaceHolderID="contentTop" Runat="Server" ViewStateMode="Disabled">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentCenterMenu" Runat="Server" ViewStateMode="Disabled">
    
    <h1><img src="/statics/logo.jpg" style="height:50px;" > Bitcoin Web Site</h1>
    <p>Bitcoin uses peer-to-peer technology to operate with no central authority or banks; managing transactions and the issuing of bitcoins is carried out collectively by the network. Bitcoin is open-source; its design is public, nobody owns or controls Bitcoin and everyone can take part. Through many of its unique properties, Bitcoin allows exciting uses that could not be covered by any previous payment system.
</p>
    <span style="font-size:13px;">
        <strong>Instant peer-to-peer transactions</strong><br />
        <strong>Worldwide payments</strong><br />
        <strong>Zero or low processing fees</strong><br />
    </span>
    <br />
    <br /><br /><br /> 
    <p style="text-align:center;"><a href="/Guestbook.aspx"><img src="/statics/write-us.jpg" title="Write to Us"/></a></p>
    <br /><br /><br /><br />
    <div id="myDiv"></div>
                <script>
                    var myDiv = document.getElementById("myDiv");

                    var obj = {};

                    Object.defineProperty(obj, "value", {
                        value: "About",
                        writable: false,
                        enumerable: true,
                        configurable: true
                    });

                    var a = document.createElement("a");
                    a.appendChild(document.createTextNode(obj.value));
                    a.href = "/" + obj.value + "." + "as" + "px" + "?" + "hello" + "=" + "visitor";
                    myDiv.appendChild(a);

</script> 
</asp:Content>