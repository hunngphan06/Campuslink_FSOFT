<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Form Sinh Viên</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #ece9e6, #ffffff);
            padding: 40px;
        }

        .form-wrapper {
            width: 550px;
            background-color: #ffffff;
            margin: 0 auto;
            padding: 30px 35px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
        }

        h2 {
            text-align: center;
            color: #333333;
            margin-bottom: 25px;
        }

        label {
            font-weight: 600;
            display: block;
            margin-top: 15px;
            color: #555;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        select {
            width: 100%;
            padding: 10px 12px;
            margin-top: 5px;
            border: 1px solid #bbb;
            border-radius: 6px;
            transition: border-color 0.3s;
        }

        input:focus, select:focus {
            border-color: #4a90e2;
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            margin-top: 25px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .error {
            color: #d8000c;
            background-color: #ffd2d2;
            border: 1px solid #d8000c;
            padding: 10px;
            margin-top: 20px;
            border-radius: 4px;
        }

        .success {
            color: #270;
            background-color: #dff2bf;
            border: 1px solid #270;
            padding: 10px;
            margin-top: 20px;
            border-radius: 4px;
        }

        a {
            display: block;
            margin-top: 20px;
            text-align: center;
            color: #4a90e2;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="form-wrapper">
    <h2>Thông tin Sinh viên</h2>
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
            <option value="">-- Chọn trường --</option>
            <c:forEach var="truong" items="${truongs}">
                <option value="${truong.maTruong}">${truong.tenTruong}</option>
            </c:forEach>
        </select>

        <label for="maNganh">Ngành:</label>
        <select id="maNganh" name="maNganh" required>
            <option value="">-- Chọn ngành --</option>
            <c:forEach var="nganh" items="${nganhs}">
                <option value="${nganh.maNganh}">${nganh.tenNganh}</option>
            </c:forEach>
        </select>

        <label for="ngayTN">Ngày tốt nghiệp:</label>
        <input type="date" id="ngayTN" name="ngayTN" required>

        <input type="submit" value="Lưu thông tin">
    </form>

    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>
    <c:if test="${param.success == '1'}">
        <div class="success">Lưu thông tin thành công!</div>
    </c:if>
    <a href="trangChuTruong.jsp">← Quay lại trang chủ</a>
</div>
</body>
</html>

