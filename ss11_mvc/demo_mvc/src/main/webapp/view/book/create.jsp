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
    <title>Thêm sách</title>
</head>
<body>

<h1>Thêm sách mới</h1>

<form action="/book?action=create" method="post">

    ID:
    <input type="text" name="id">
    <br><br>

    Title:
    <input type="text" name="title">
    <br><br>

    Page Size:
    <input type="text" name="pageSize">
    <br><br>

    Author:
    <input type="text" name="author">
    <br><br>

    Category:
    <input type="text" name="category">
    <br><br>

    <button type="submit">Save</button>

</form>

</body>
</html>
