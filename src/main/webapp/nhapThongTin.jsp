<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Nhập thông tin sinh viên</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 50px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .error {
            color: red;
            margin-top: 10px;
            font-weight: bold;
        }
        .success {
            color: green;
            margin-top: 10px;
            font-weight: bold;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        a {
            display: inline-block;
            margin-top: 10px;
            text-decoration: none;
            color: #007bff;
            font-size: 14px;
        }
        a:hover {
            text-decoration: underline;
        }
        .debug {
            color: blue;
            margin-top: 10px;
            font-size: 12px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Nhập thông tin sinh viên</h2>
    <form action="NhapThongTinServlet" method="post">
        <label for="soCMND">Số CMND:</label>
        <input type="text" id="soCMND" name="soCMND" required>

        <label for="hoTen">Họ Tên:</label>
        <input type="text" id="hoTen" name="hoTen">

        <label for="email">Email:</label>
        <input type="email" id="email" name="email">

        <label for="soDT">Số ĐT:</label>
        <input type="text" id="soDT" name="soDT">

        <label for="diaChi">Địa chỉ:</label>
        <input type="text" id="diaChi" name="diaChi">

        <label for="maTruong">Trường:</label>
        <select id="maTruong" name="maTruong" required>
            <option value="">Chọn trường</option>
            <c:forEach var="truong" items="${truongs}">
                <option value="${truong.maTruong}">${truong.tenTruong}</option>
            </c:forEach>
        </select>

        <label for="maNganh">Ngành:</label>
        <select id="maNganh" name="maNganh" required>
            <option value="">Chọn ngành</option>
            <c:forEach var="nganh" items="${nganhs}">
                <option value="${nganh.maNganh}">${nganh.tenNganh}</option>
            </c:forEach>
        </select>

        <label for="ngayTN">Ngày tốt nghiệp:</label>
        <input type="date" id="ngayTN" name="ngayTN" required>

        <input type="submit" value="Lưu thông tin">
    </form>

    <c:if test="${not empty error}">
        <p class="error">${error}</p>
    </c:if>
    <c:if test="${param.success == '1'}">
        <p class="success">Lưu thông tin thành công!</p>
    </c:if>
    <a href="trangChuTruong.jsp">Quay lại trang chủ</a>
</div>
</body>
</html>
