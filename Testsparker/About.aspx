<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="True" Codebehind="About.aspx.cs" Inherits="About"  ValidateRequest="false" ViewStateMode="Disabled" EnableViewState="false"  %>

<%@ Register Src="~/UserControls/Vulnerabilities/about-ReflectedCrossSiteScripting.ascx" TagPrefix="uc1" TagName="aboutReflectedCrossSiteScripting" %>
<%@ Register Src="~/UserControls/Vulnerabilities/about-WebServiceSQLInjections.ascx" TagPrefix="uc1" TagName="aboutWebServiceSQLInjections" %>



<asp:Content ID="contentMid" ContentPlaceHolderID="contentCenterMenu" runat="Server">
    <uc1:aboutReflectedCrossSiteScripting runat="server" ID="aboutReflectedCrossSiteScripting" />
    <uc1:aboutWebServiceSQLInjections runat="server" ID="aboutWebServiceSQLInjections" />
    <div class="side-well" style="height: 25px; margin-bottom: 10px">
			<h3 style="float: left; margin: 5px;">Follow us</h3>
			<div style="float: right;">
                <a class="image-button" target="_blank" href="http://twitter.com/testsparker" rel="noopener noreferrer">
                    TT                 
                </a>
				<a class="image-button" target="_blank" href="http://facebook.com/testsparker" rel="noopener noreferrer">
                    FB       
                </a>
                
			</div>
		</div>
</asp:Content>

