<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BlogPost.aspx.cs" Inherits="foodblog.BlogPost" %>
<!DOCTYPE html>
<html lang="vi">
<head runat="server">
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="navbar.css" />
  <title>Blog Post</title>
  <style>
    .main-content .article {
      background-color: #f2f2f2;
      padding: 20px;
      margin-bottom: 20px;
    }
    .main-content .article h2 {
      margin-top: 0;
    }
  </style>
</head>
<body>
  <!-- Điều hướng -->
  <form id="form1" runat="server">
    <div class="navbar">
      <div class="left-section">
        <a href="home1.aspx" class="logo">FoodBlog</a>
      </div>
      <div class="right-section">
        <asp:PlaceHolder ID="phNavLinks" runat="server"></asp:PlaceHolder>
      </div>
    </div>

    <div class="main-content">
      <div class="article">
        <h2 id="postTitle">Tiêu đề bài blog</h2>
        <p id="postContent">Nội dung bài blog...</p>
        <asp:Button ID="saveButton" runat="server" Text="Lưu" OnClick="SaveButton_Click" />
      </div>
    </div>
  </form>
</body>
</html>
