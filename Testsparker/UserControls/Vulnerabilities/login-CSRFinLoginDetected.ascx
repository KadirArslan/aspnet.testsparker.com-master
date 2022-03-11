<%@ Control Language="C#" AutoEventWireup="True" Codebehind="login-CSRFinLoginDetected.ascx.cs" Inherits="UserControls_Vulnerabilities_login_CSRFinLoginDetected" %>

<style>
    img.CaptchaCss{border:1px solid #ccc;}
</style>
<h3>Login</h3>
<br />

    <p id="P1" style="color:#ff0000;font-weight:bold;" runat="server"><a href="?r=/Dashboard/&newAuth=1">Switch to  Authentication v2 (Bot protection)</a></p>
	<div class="form-row"><label for="Email">Email Address</label><span style="font-style:italic;font-weight:normal;">(alan@turing.com)</span>
        <br />
        <span class="input">
			<input id="Email" maxlength="400" runat="server" name="Email" type="text" value="">
		</span>
	</div>
	<div class="form-row"><label for="Password">Password</label><span style="font-style:italic;font-weight:normal;">(theturingtest)</span>
        <br />
        <span class="input"><input id="Password" runat="server" maxlength="16" name="Password" type="password" value=""></span>
	</div>
    <div class="form-row" runat="server" id="captchaDiv">
        <label for="Password">Captcha</label><span style="font-style:italic;font-weight:normal;">(Bot protection)</span>
        <br />
        <img runat="server" id="CaptchaImg" class="CaptchaCss" />
        <br />
        <span class="input"><input id="Captcha"  runat="server" maxlength="16" name="Captcha" type="text" value=""></span>
	</div>
	<div class="form-row action">
		<br />
        <asp:Button ID="Button1" runat="server" Text="Sign in" OnClick="Button1_Click" />
	</div>
    <br />
    <p id="txtRetAlert" style="color:#ff0000;font-weight:bold;" runat="server"></p>
    <br />

