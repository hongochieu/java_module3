<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 6/8/2026
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Sửa sách</title>
</head>
<body>

<h1>Sửa sách</h1>

<form action="/book?action=edit" method="post">

    <input type="hidden" name="id" value="${book.id}">

    Title:
    <input type="text" name="title" value="${book.title}">
    <br><br>

    Page Size:
    <input type="text" name="pageSize" value="${book.pageSize}">
    <br><br>

    Author:
    <input type="text" name="author" value="${book.author}">
    <br><br>

    Category:
    <input type="text" name="category" value="${book.category}">
    <br><br>

    <button type="submit">
        Save
    </button>

</form>

</body>
</html>