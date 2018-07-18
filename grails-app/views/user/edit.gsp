<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/17/2017
  Time: 4:13 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit</title>
    <meta name="layout" content="main">
</head>

<body>
<form method="post" action="../update">
    <input type="hidden" name="id"value="${u.id}">
    Name : <input type="text" name="name" value="${u.name}"  > <br>
    Email : <input type="email" name="email"value="${u.email}"  > <br>
    Password <input type="text" name="password" value="${u.password}"  > <br>
    <input type="submit" value="Update"  > <br>
</form>
</body>
</html>