<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/19/2017
  Time: 7:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Question</title>
    <meta name="layout" content="main"/>
</head>

<body>

<form method="post" action="save">
    Question : <input type="text" name="question"  > <br>
    Option1 : <input type="text" name="option1"  > <br>
    Option2 : <input type="text" name="option2"  > <br>
    Option3 : <input type="text" name="option3"  > <br>
    Option4 : <input type="text" name="option4"  > <br>
    Correct Answer : <input type="text" name="correctanswer"  > <br>
    Category : <input type="text" name="category"  > <br>
    <input type="submit" value="Add"  > <br>
</form>
</body>
</html>