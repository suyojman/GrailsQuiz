<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/20/2017
  Time: 3:27 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Question List</title>
    <meta name="layout" content="main">
</head>

<body>
<p>Question :${q.question} </p> <br>
<p>Option1 :${q.option1} </p> <br>
<p>Option2 :${q.option2} </p> <br>
<p>Option3 :${q.option3} </p> <br>
<p>Option4 :${q.option4} </p> <br>
<p>Correct Answer :${q.correctanswer} </p> <br>
<p>Category :${q.category} </p> <br>



<a href="../edit/${q.id}">Edit</a> <br>
<a href="../delete/${q.id}">Delete</a>
</body>
</html>