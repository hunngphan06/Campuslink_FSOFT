<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang chủ - Quản lý việc làm sinh viên</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
            text-align: center;
        }
        .btn-custom {
            margin: 10px;
            padding: 15px 30px;
            font-size: 18px;
        }
        .header {
            margin-bottom: 40px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <h1>Quản lý việc làm sinh viên</h1>
        <p>Chào mừng bạn đến với hệ thống quản lý thông tin việc làm của sinh viên sau tốt nghiệp.</p>
    </div>
    <div>
        <a href="nhapThongTin.jsp" class="btn btn-primary btn-custom">Nhập thông tin sinh viên</a>
        <a href="timKiemCoBan.jsp" class="btn btn-success btn-custom">Tìm kiếm thông tin cơ bản</a>
        <a href="timKiemViecLam.jsp" class="btn btn-info btn-custom">Tìm kiếm thông tin tốt nghiệp và việc làm</a>
    </div>
</div>
<!-- Bootstrap JS (optional, for interactivity) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>