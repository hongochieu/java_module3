<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/29/2026
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<h2>Đăng nhập</h2>
<form action="login" method="post">
    Username: <input type="text" name="username"/><br/>
    Password: <input type="password" name="password"/><br/>
    <input type="submit" value="Login"/>
</form>

<p style="color:red;">
    <%= request.getAttribute("errorMessage") == null ? "" : request.getAttribute("errorMessage") %>
</p>
</body>
</html>

