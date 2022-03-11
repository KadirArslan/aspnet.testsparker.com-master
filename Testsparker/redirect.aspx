<%@ Page Language="C#" AutoEventWireup="True" Codebehind="redirect.aspx.cs" Inherits="redirect"   ViewStateMode="Disabled" EnableViewState="false"  %>

<%@ Register Src="~/UserControls/Vulnerabilities/redirect-OpenRedirection.ascx" TagPrefix="uc1" TagName="redirectOpenRedirection" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:redirectOpenRedirection runat="server" ID="redirectOpenRedirection" />
    </div>
    </form>
</body>
</html>
