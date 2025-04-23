<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tìm kiếm thông tin tốt nghiệp và việc làm</title>
</head>
<body>
    <h2>Tìm kiếm thông tin tốt nghiệp và việc làm</h2>
    <form action="TimKiemViecLamServlet" method="get">
        <label>Số CMND: <input type="text" name="soCMND"></label>
        <input type="submit" value="Tìm kiếm">
    </form>
    <c:if test="${not empty ketQuas}">
        <h3>Kết quả tìm kiếm</h3>
        <table border="1">
            <tr>
                <th>Số CMND</th>
                <th>Họ Tên</th>
                <th>Mã Ngành (Tốt nghiệp)</th>
                <th>Mã Trường</th>
                <th>Mã Ngành (Công ty)</th>
                <th>Tên Công ty</th>
                <th>Thời gian làm việc</th>
            </tr>
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
        </table>
    </c:if>
</body>
</html>