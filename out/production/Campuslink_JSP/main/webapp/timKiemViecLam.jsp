<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tìm kiếm thông tin tốt nghiệp và việc làm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="text-center mb-4">Tìm kiếm thông tin tốt nghiệp và việc làm</h2>
    <form action="TimKiemViecLamServlet" method="get" class="row g-3 justify-content-center">
        <div class="col-md-6">
            <input type="text" name="soCMND" class="form-control" placeholder="Nhập số CMND">
        </div>
        <div class="col-auto">
            <button type="submit" class="btn btn-success">Tìm kiếm</button>
        </div>
    </form>

    <c:if test="${not empty ketQuas}">
        <h3 class="mt-5 text-center">Kết quả tìm kiếm</h3>
        <div class="table-responsive mt-3">
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                <tr>
                    <th>Số CMND</th>
                    <th>Họ Tên</th>
                    <th>Mã Ngành (Tốt nghiệp)</th>
                    <th>Mã Trường</th>
                    <th>Mã Ngành (Công ty)</th>
                    <th>Tên Công ty</th>
                    <th>Thời gian làm việc</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="kq" items="${ketQuas}">
                    <tr>
                        <td>${kq.soCMND}</td>
                        <td>${kq.hoTen}</td>
                        <td>${kq.maNganhTotNghiep}</td>
                        <td>${kq.maTruong}</td>
                        <td>${kq.maNganhCongTy}</td>
                        <td>${kq.tenCongTy}</td>
                        <td>${kq.thoiGianLamViec}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </c:if>
</div>
</body>
</html>

