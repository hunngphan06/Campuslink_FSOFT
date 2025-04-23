<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tìm kiếm thông tin cơ bản</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="text-center mb-4">Tìm kiếm thông tin sinh viên</h2>
    <form action="TimKiemCoBanServlet" method="get" class="row g-3 justify-content-center">
        <div class="col-md-6">
            <input type="text" name="soCMND" class="form-control" placeholder="Nhập số CMND">
        </div>
        <div class="col-auto">
            <button type="submit" class="btn btn-primary">Tìm kiếm</button>
        </div>
    </form>

    <c:if test="${not empty sinhViens}">
        <h3 class="mt-5 text-center">Kết quả tìm kiếm</h3>
        <div class="table-responsive mt-3">
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                <tr>
                    <th>Số CMND</th>
                    <th>Họ Tên</th>
                    <th>Email</th>
                    <th>Số ĐT</th>
                    <th>Địa chỉ</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="sv" items="${sinhViens}">
                    <tr>
                        <td>${sv.soCMND}</td>
                        <td>${sv.hoTen}</td>
                        <td>${sv.email}</td>
                        <td>${sv.soDT}</td>
                        <td>${sv.diaChi}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </c:if>
</div>
</body>
</html>

