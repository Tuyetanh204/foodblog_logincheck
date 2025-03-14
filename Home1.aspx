<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home1.aspx.cs" Inherits="foodblog.Home1" %>


<!DOCTYPE html>
<html lang="vi">
<head runat="server">
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="navbar.css" />
  <title>MyBlog</title>
  <style>
    .main-content .left {
      flex: 4;
      margin-right: 20px;
    }
    .main-content .right {
      flex: 1;
    }
    .main-content .article {
      background-color: #f2f2f2;
      padding: 20px;
      margin-bottom: 20px;
    }
    .main-content .article h2 {
      margin-top: 0;
    }
    /* Phần danh mục */
    .category-list {
      padding: 0;
      margin: 0;
    }
    .category-list li {
      list-style: none;
      margin: 10px 0;
    }
    .category-list a {
      display: block;
      color: #333;
      padding: 15px;
      background-color: #f5f5f5;
      text-decoration: none;
    }
    .category-list a:hover {
      background-color: #ddd;
    }
  </style>
  <script>
      function logout() {
          document.getElementById("logoutButton").click();
      }
  </script>
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
    <asp:Button ID="logoutButton" runat="server" Text="Logout" OnClick="Logout_Click" style="display: none;" />
    <div class="main-content">
      <div class="left">
        <h2 class="tittle-green">CÔNG THỨC PHỔ BIẾN</h2>
        <div class="article">
          <h2>Bài blog 1</h2>
          <p>Nội dung bài blog 1...</p>
        </div>
        <div class="article">
          <h2>Bài blog 2</h2>
          <p>Nội dung bài blog 2...</p>
        </div>
        <div class="article">
          <h2>Bài blog 3</h2>
          <p>Nội dung bài blog 3...</p>
        </div>
      </div>
      <div class="right">
        <h2 class="tittle-green">DANH MỤC</h2>
        <ul class="category-list">
          <li><a href="mchay.aspx">Món chay</a></li>
          <li><a href="#">Tráng miệng</a></li>
          <li><a href="#">Món chính</a></li>
          <li><a href="#">Ăn vặt</a></li>
        </ul>
      </div>
    </div>
       <div class="footer">
    <p>&copy; 2025 FoodBlog. All rights reserved.</p>
    <ul class="footer-links">
        <li><a href="home1.aspx"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="contact.aspx"><i class="fa fa-envelope"></i> Contact</a></li>
    </ul>
    <div class="about-me">
        <h4>About Me</h4>
        <p>
            Xin chào! Tôi là một người đam mê ẩm thực, chia sẻ công thức và hành trình ẩm thực đầy cảm hứng từ khắp mọi nơi.
        </p>
    </div>
    <div class="social-links">
        <a href="#"><i class="fa fa-facebook"></i> Facebook</a> |
        <a href="#"><i class='fa fa-twitter'></i> Twitter</a> |
        <a href="#"><i class='fa fa-instagram'></i> Instagram</a> |
        <a href="#"><i class='fa fa-youtube'></i> YouTube</a>
    </div>
</div>
  </form>
</body>
</html>
