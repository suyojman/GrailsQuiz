<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/17/2017
  Time: 3:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User List</title>
    <meta name="layout" content="main">
</head>

<body>
<a href="create">New User</a>
<table style="border: 2px solid">
    <tr>
        <th>Email</th>
        <th>Name</th>
        <th>Password</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <g:each in="${u}" var="i">
        <tr>

            <td><a href="show/${i.id}"> ${i.email} </a></td>
            <td>${i.name}</td>
        <td>${i.password}</td>
            <td><a href="edit/${i.id}">Edit</a> </td>
            <td><a href="delete/${i.id}">Delete</a> </td>
        </tr>
    </g:each>
</table>
</body>
</html>