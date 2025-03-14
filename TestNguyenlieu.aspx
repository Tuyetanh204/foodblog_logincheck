<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestNguyenlieu.aspx.cs" Inherits="foodblog.TestNguyenlieu" %>

<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Nhập Nguyên Liệu</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
    }
    #ingredient-section {
      margin-bottom: 20px;
    }
    ul {
      list-style-type: none;
      padding: 0;
    }
    ul li {
      margin: 5px 0;
    }
    .remove-btn {
      color: red;
      cursor: pointer;
      margin-left: 10px;
    }
  </style>
</head>
<body>
  <h2>Thêm Nguyên Liệu</h2>
  <div id="ingredient-section">
    <label for="newIngredient">Nhập nguyên liệu:</label>
    <input type="text" id="newIngredient" placeholder="Nhập nguyên liệu và nhấn Enter">
    <ul id="ingredientList"></ul>
    <!-- Hidden input để lưu danh sách nguyên liệu -->
    <input type="hidden" id="ingredientsInput" name="ingredients">
  </div>

  <script>
    // Lắng nghe sự kiện Enter và thêm nguyên liệu
    const input = document.getElementById('newIngredient');
    const list = document.getElementById('ingredientList');
    const hiddenInput = document.getElementById('ingredientsInput');

    input.addEventListener('keypress', function(event) {
      // Kiểm tra nếu người dùng nhấn Enter
      if (event.key === 'Enter') {
        event.preventDefault(); // Ngăn trình duyệt nạp lại trang
        if (input.value.trim() !== "") {
          addIngredient(input.value.trim());
          input.value = ""; // Xóa nội dung ô input sau khi thêm
        }
      }
    });

    function addIngredient(ingredient) {
      // Tạo thẻ <li> mới cho nguyên liệu
      const li = document.createElement('li');
      li.textContent = ingredient;

      // Thêm nút xóa để loại bỏ nguyên liệu nếu cần
      const removeBtn = document.createElement('span');
      removeBtn.textContent = " Xóa";
      removeBtn.className = "remove-btn";
      removeBtn.onclick = function() {
        list.removeChild(li);
        updateHiddenInput();
      };

      li.appendChild(removeBtn);
      list.appendChild(li);
      updateHiddenInput(); // Cập nhật giá trị vào hidden input
    }

    function updateHiddenInput() {
      // Lấy tất cả nguyên liệu trong danh sách và lưu vào hidden input
      const listItems = document.querySelectorAll('#ingredientList li');
      const ingredients = Array.from(listItems).map(li => li.firstChild.textContent.trim());
      hiddenInput.value = ingredients.join('\n'); // Chuỗi xuống dòng để lưu trữ
    }
  </script>
</body>
</html>
