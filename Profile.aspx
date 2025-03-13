<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="foodblog.Profile" %>

<!DOCTYPE html>
<html>
<head>
  <title>Profile</title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <h1>Your Profile</h1>
      <p>Welcome, <%= User.Identity.Name %>!</p>
    </div>
  </form>
</body>
</html>
