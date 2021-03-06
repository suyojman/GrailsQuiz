<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 11/23/2017
  Time: 4:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome to Quiz</title>
    <style>
    @import url(https://fonts.googleapis.com/css?family=Vibur);
    * {
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        -webkit-box-sizing: border-box;
        font-family: arial;
    }

    body {
        background: #FF9000;
    }

    h1 {
        color: #ccc;
        text-align: center;
        font-family: 'Vibur', cursive;
        font-size: 50px;
    }

    .login-form {
        width: 350px;
        padding: 40px 30px;
        background: #eee;
        -moz-border-radius: 4px;
        -webkit-border-radius: 4px;
        border-radius: 4px;
        margin: auto;
        position: absolute;
        left: 0;
        right: 0;
        top: 50%;
        -moz-transform: translateY(-50%);
        -ms-transform: translateY(-50%);
        -webkit-transform: translateY(-50%);
        transform: translateY(-50%);
    }

    .form-group {
        position: relative;
        margin-bottom: 15px;
    }

    .form-control {
        width: 100%;
        height: 50px;
        border: none;
        padding: 5px 7px 5px 15px;
        background: #fff;
        color: #666;
        border: 2px solid #ddd;
        -moz-border-radius: 4px;
        -webkit-border-radius: 4px;
        border-radius: 4px;
    }

    .form-control:focus,
    .form-control:focus+.fa {
        border-color: #10CE88;
        color: black;
    }

    .form-group .fa {
        position: absolute;
        right: 15px;
        top: 17px;
        color: #999;
    }

    .log-status.wrong-entry {
        -moz-animation: wrong-log 0.3s;
        -webkit-animation: wrong-log 0.3s;
        animation: wrong-log 0.3s;
    }

    .log-status.wrong-entry .form-control,
    .wrong-entry .form-control+.fa {
        border-color: #ed1c24;
        color: #ed1c24;
    }

    .log-btn {
        background: #0AC986;
        dispaly: inline-block;
        width: 100%;
        font-size: 16px;
        height: 50px;
        color: #fff;
        text-decoration: none;
        border: none;
        -moz-border-radius: 4px;
        -webkit-border-radius: 4px;
        border-radius: 4px;
    }

    .link {
        text-decoration: none;
        color: #C6C6C6;
        float: right;
        font-size: 12px;
        margin-bottom: 15px;
    }

    .link:hover {
        text-decoration: underline;
        color: #8C918F;
    }

    .alert {
        display: none;
        font-size: 12px;
        color: #f00;
        float: left;
    }

    @-moz-keyframes wrong-log {
        0%,
        100% {
            left: 0px;
        }
        20%,
        60% {
            left: 15px;
        }
        40%,
        80% {
            left: -15px;
        }
    }

    @-webkit-keyframes wrong-log {
        0%,
        100% {
            left: 0px;
        }
        20%,
        60% {
            left: 15px;
        }
        40%,
        80% {
            left: -15px;
        }
    }

    @keyframes wrong-log {
        0%,
        100% {
            left: 0px;
        }
        20%,
        60% {
            left: 15px;
        }
        40%,
        80% {
            left: -15px;
        }
    }


    </style>
</head>

<body>
<div class="login-form">
    <h1>Quiz Time</h1>
    <g:form method="post" action="dashboard" controller="user">
        <div class="form-group ">
            <input type="text" class="form-control" placeholder="Username " id="UserName" name="email">
            <i class="fa fa-user"></i>
        </div>
        <div class="form-group log-status">
            <input type="password" class="form-control" placeholder="Password" id="Passwod" name="password">
            <i class="fa fa-lock"></i>
        </div>
        <span class="alert">Invalid Credentials</span>
        <a class="link" href="#">Register New!!</a>
        <input type="submit" class="log-btn" value="Login"></input>
</div>
    </g:form>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/index.js"></script>
%{--<g:form method="post" action="dashboard" controller="user">
    <input type="text" placeholder="Enter Email" name="email">
    <input type="password" placeholder="Enter Password" name="password">
    <input type="submit" value="Login"></input>
</g:form>--}%
</body>
</html>