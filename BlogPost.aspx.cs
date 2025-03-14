using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace foodblog
{
    public partial class BlogPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Kiểm tra trạng thái đăng nhập
                if (User.Identity.IsAuthenticated)
                {
                    // Đã đăng nhập - hiện nút "Lưu"
                    saveButton.Visible = true;
                }
                else
                {
                    // Chưa đăng nhập - ẩn nút "Lưu"
                    saveButton.Visible = false;
                }

                // Tạo các liên kết trong thanh điều hướng
                if (User.Identity.IsAuthenticated)
                {
                    phNavLinks.Controls.Add(new Literal { Text = "<a href='home1.aspx'>Trang chủ</a>" });
                    phNavLinks.Controls.Add(new Literal { Text = "<a href='#'>Giới Thiệu</a>" });
                    phNavLinks.Controls.Add(new Literal { Text = "<div class='dropdown'><button class='dropbtn'>Cá nhân</button><div class='dropdown-content'><a href='new.aspx'>Tạo bài</a><a href='manage.aspx'>Quản lý</a><a href='#' onclick='logout()'>Đăng xuất</a></div></div>" });
                }
                else
                {
                    phNavLinks.Controls.Add(new Literal { Text = "<a href='home1.aspx'>Trang chủ</a>" });
                    phNavLinks.Controls.Add(new Literal { Text = "<a href='register.aspx'>Đăng ký</a>" });
                    phNavLinks.Controls.Add(new Literal { Text = "<a href='login.aspx'>Đăng nhập</a>" });
                }
            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // Xử lý logic để lưu bài blog vào danh sách blog đã lưu của người dùng
            // Có thể lưu trữ thông tin vào cơ sở dữ liệu hoặc session
            // Ví dụ:
            // string userId = User.Identity.Name;
            // SaveBlogPostToDatabase(userId, blogPostId);
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
