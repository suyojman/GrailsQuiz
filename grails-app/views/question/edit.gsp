<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/20/2017
  Time: 3:27 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Question</title>
    <meta name="layout" content="main">
</head>

<body>
<form method="post" action="../update">
    <input type="hidden" name="id"value="${q.id}">
    Question : <input type="text" name="question" value="${q.question}"  > <br>
    Option1 : <input type="text" name="option1" value="${q.option1}" > <br>
    Option2 : <input type="text" name="option2" value="${q.option2}" > <br>
    Option3 : <input type="text" name="option3" value="${q.option3}" > <br>
    Option4 : <input type="text" name="option4" value="${q.option4}" > <br>
    Correct Answer : <input type="text" name="correctanswer" value="${q.correctanswer}"  > <br>
    Category : <input type="text" name="category" value="${q.category}" > <br>
    <input type="submit" value="Update"  > <br>
</form>
</body>
</html>