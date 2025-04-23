<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tìm kiếm thông tin cơ bản</title>
</head>
<body>
    <h2>Tìm kiếm thông tin sinh viên</h2>
    <form action="TimKiemCoBanServlet" method="get">
        <label>Số CMND: <input type="text" name="soCMND"></label>
        <input type="submit" value="Tìm kiếm">
    </form>
    <c:if test="${not empty sinhViens}">
        <h3>Kết quả tìm kiếm</h3>
        <table border="1">
            <tr>
                <th>Số CMND</th>
                <th>Họ Tên</th>
                <th>Email</th>
                <th>Số ĐT</th>
                <th>Địa chỉ</th>
            </tr>
            <c:forEach var="sv" items="${sinhViens}">
                <tr>
                    <td>${sv.soCMND}</td>
                    <td>${sv.hoTen}</td>
                    <td>${sv.email}</td>
                    <td>${sv.soDT}</td>
                    <td>${sv.diaChi}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</body>
</html>