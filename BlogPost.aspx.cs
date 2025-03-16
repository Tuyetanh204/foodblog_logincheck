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

    }
}
