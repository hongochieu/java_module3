<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 6/8/2026
  Time: 8:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <title>Quản lý sách</title>
</head>
<body>
<div class="container">

    <h1>QUẢN LÝ SÁCH</h1>

    <a href="/book?action=create" class="btn btn-add">
        Thêm sách
    </a>

    <form action="/book" method="get" class="search-form">
        <input type="hidden" name="action" value="search">

        <input type="text"
               name="title"
               placeholder="Nhập tên sách">

        <button class="btn btn-search">
            Tìm kiếm
        </button>
    </form>

</div>

    </form>
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>Page size</th>
            <th>Author</th>
            <th>Category</th>
        </tr>
        <c:forEach items="${bookList}" var="book">
            <tr>
                <td>${book.id}</td>
                <td>${book.title}</td>
                <td>${book.pageSize}</td>
                <td>${book.author}</td>
                <td>${book.category}</td>
                <td>
                    <a href="/book?action=edit&id=${book.id}">
                        Sửa
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
