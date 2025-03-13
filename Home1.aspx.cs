
using System.Web.UI.WebControls;




using System;
using System.Web.Security;
using System.Web.UI;

namespace foodblog
{
    public partial class Home1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Kiểm tra trạng thái đăng nhập
                if (User.Identity.IsAuthenticated)
                {
                    // Đã đăng nhập
                    phNavLinks.Controls.Add(new Literal { Text = "<a href='home1.aspx'>Trang chủ</a>" });
                    phNavLinks.Controls.Add(new Literal { Text = "<a href='#'>Giới Thiệu</a>" });
                    phNavLinks.Controls.Add(new Literal { Text = "<div class='dropdown'><button class='dropbtn'>Cá nhân</button><div class='dropdown-content'><a href='new.aspx'>Tạo bài</a><a href='manage.aspx'>Quản lý</a><a href='#' onclick='logout()'>Đăng xuất</a></div></div>" });
                }
                else
                {
                    // Chưa đăng nhập
                    phNavLinks.Controls.Add(new Literal { Text = "<a href='home1.aspx'>Trang chủ</a>" });
                    phNavLinks.Controls.Add(new Literal { Text = "<a href='register.aspx'>Đăng ký</a>" });
                    phNavLinks.Controls.Add(new Literal { Text = "<a href='login.aspx'>Đăng nhập</a>" });
                }
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            // Đăng xuất người dùng
            FormsAuthentication.SignOut();

            // Xóa tất cả các session hiện có
            Session.Abandon();

            // Chuyển hướng về trang chủ
            Response.Redirect("home1.aspx");
        }
    }
}



