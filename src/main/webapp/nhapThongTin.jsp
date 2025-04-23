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
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        a {
            display: inline-block;
            margin-top: 10px;
            text-decoration: none;
            color: #007bff;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Nhập thông tin sinh viên</h2>
    <form action="NhapThongTinServlet" method="post">
        <label>Số CMND: <input type="text" name="soCMND" required></label>
        <label>Họ Tên: <input type="text" name="hoTen"></label>
        <label>Email: <input type="email" name="email"></label>
        <label>Số ĐT: <input type="text" name="soDT"></label>
        <label>Địa chỉ: <input type="text" name="diaChi"></label>

        <label>Trường:
            <select name="maTruong" required>
                <option value="">Chọn trường</option>
                <c:forEach var="truong" items="${truongs}">
                    <option value="${truong.maTruong}">${truong.tenTruong}</option>
                </c:forEach>
            </select>
        </label>

        <label>Ngành:
            <select name="maNganh" required>
                <option value="">Chọn ngành</option>
                <c:forEach var="nganh" items="${nganhs}">
                    <option value="${nganh.maNganh}">${nganh.tenNganh}</option>
                </c:forEach>
            </select>
        </label>

        <label>Ngày tốt nghiệp: <input type="date" name="ngayTN" required></label>
        <input type="submit" value="Lưu thông tin">
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>
        <c:if test="${empty truongs}">
            <p class="error">Danh sách trường trống!</p>
        </c:if>
        <c:if test="${empty nghanhs}">
            <p class="error">Danh sách ngành trống!</p>
        </c:if>
    </form>
    <a href="trangChuTruong.jsp">Quay lại trang chủ</a>
</div>
</body>
</html>