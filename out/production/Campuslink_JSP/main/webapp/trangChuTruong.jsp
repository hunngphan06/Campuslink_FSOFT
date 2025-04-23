<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang chủ - Quản lý việc làm sinh viên</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .btn-custom {
            margin: 10px;
            padding: 15px 30px;
            font-size: 18px;
        }
    </style>
</head>
<body class="bg-light">
<div class="container mt-5 text-center">
    <h1 class="mb-3">Quản lý việc làm sinh viên</h1>
    <p class="mb-4">Chào mừng bạn đến với hệ thống quản lý thông tin việc làm của sinh viên sau tốt nghiệp.</p>
    <div class="d-grid gap-3 col-6 mx-auto">
        <a href="nhapThongTin.jsp" class="btn btn-outline-primary btn-lg">Nhập thông tin sinh viên</a>
        <a href="timKiemCoBan.jsp" class="btn btn-outline-success btn-lg">Tìm kiếm thông tin cơ bản</a>
        <a href="timKiemViecLam.jsp" class="btn btn-outline-info btn-lg">Tìm kiếm thông tin tốt nghiệp và việc làm</a>
    </div>
</div>
<!-- Bootstrap JS (optional, for interactivity) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>