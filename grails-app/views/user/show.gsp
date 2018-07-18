<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/17/2017
  Time: 4:14 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User List</title>
    <meta name="layout" content="main">
</head>

<body>
    <p>Name :${u.name} </p> <br>
    <p>Email :${u.email} </p> <br>
    <p>Password :${u.password} </p> <br>



<a href="../edit/${u.id}">Edit</a> <br>
<a href="../delete/${u.id}">Delete</a>
</body>

</html>