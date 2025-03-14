using System;
using System.Web.Security;
using System.Web.UI;

namespace foodblog
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Kiểm tra thông tin đăng nhập (giả sử là "admin" và "password")
            if (txtUsername.Text == "admin" && txtPassword.Text == "111")
            {
                FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, true);
            }
            else
            {
                Response.Write("Invalid username or password.");
            }
        }
    }
}
