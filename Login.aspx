<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="foodblog.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Login</title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <h2>Login</h2>
      <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
      <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
      <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
    </div>
  </form>
</body>
</html>
