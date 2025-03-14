using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodblog
{
	public partial class TestNguyenlieu : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                // Lấy danh sách nguyên liệu từ hidden input
                string rawIngredients = Request.Form["ingredients"];

                // Tách danh sách nguyên liệu thành mảng
                string[] ingredientList = rawIngredients.Split(new[] { "\r\n", "\n" }, StringSplitOptions.RemoveEmptyEntries);

                // Lưu trữ hoặc xử lý dữ liệu
                foreach (string ingredient in ingredientList)
                {
                    Console.WriteLine("Nguyên liệu: " + ingredient);
                }
            }
        }

    }
}