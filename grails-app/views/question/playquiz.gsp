<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/23/2017
  Time: 4:16 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Quiz Time</title>
</head>

<body>

<g:form method="post" controller="question" action="playquiznext">

    <input type="hidden" name="id" value="${q.id}">
    <input type="hidden" name="correctanswer" value="${q.correctanswer}">
    <h1>${q.question}</h1>
    <input type="radio" name="option" value="${q.option1}">${q.option1}
    <input type="radio" name="option" value="${q.option2}">${q.option2}
    <input type="radio" name="option" value="${q.option3}">${q.option3}
    <input type="radio" name="option" value="${q.option4}">${q.option4}
    <input type="submit" value="Next">

</g:form>

</body>
</html>