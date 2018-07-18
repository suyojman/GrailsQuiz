<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/19/2017
  Time: 6:33 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Question List</title>
    <meta name="layout" content="main">
</head>

<body>


<a href="create">New Question</a>
<table style="border: 2px solid">
    <tr>
        <th>Question</th>
        <th>Option1</th>
        <th>Option2</th>
        <th>Option3</th>
        <th>Option4</th>
        <th>Category</th>
        <th>CorrectAnswer</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <g:each in="${q}" var="i">
        <tr>

            <td><a href="show/${i.id}"> ${i.question} </a></td>
            <td>${i.option1}</td>
            <td>${i.option2}</td>
            <td>${i.option3}</td>
            <td>${i.option4}</td>
            <td>${i.category}</td>
            <td>${i.correctanswer}</td>
            <td><a href="edit/${i.id}">Edit</a> </td>
            <td><a href="delete/${i.id}">Delete</a> </td>
        </tr>
    </g:each>
</table>
</body>
</html>