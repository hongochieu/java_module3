<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/29/2026
  Time: 4:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="../layout/library.jsp" %>
</head>
<body>
    <h1>Danh sách học viên</h1>
    <button>Thêm học viên</button>
    <c:choose>
        <c:when test="${empty studentList}">
            <h3>Danh sách rỗng</h3>
        </c:when>

        <c:otherwise>
            <table class="table table-bordered table-striped">
                <tr>
                    <th>STT</th>
                    <th>Id</th>
                    <th>Tên</th>
                    <th>Giới tính</th>
                    <th>Điểm</th>
                    <th>Học lực</th>
                </tr>
                <c:forEach var="student" items="${studentList}" varStatus="status">
                    <tr>
                        <td>${status.count}</td>
                        <td>${student.id}</td>
                        <td>${student.name}</td>
                        <td>
                            <c:choose>
                                <c:when test="${student.gender}">
                                    Nam
                                </c:when>
                                <c:otherwise>
                                    Nữ
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>${student.score}</td>
                        <td>
                            <c:choose>
                                <c:when test="${student.score >= 90}">
                                    <span>Giỏi</span>
                                </c:when>
                                <c:when test="${student.score >= 80}">
                                    <span>Khá</span>
                                </c:when>
                                <c:when test="${student.score >=60}">
                                    <span>Trung bình</span>
                                </c:when>
                                <c:otherwise>
                                    <span>Yếu</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>
</body>
</html>
