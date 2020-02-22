<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    body {
        background-image: url('/static/image/background.jpg');
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>
<body>
<form method="post" action="/user/login">
    用户名：<input type="text" name="userName"/><br/>
    密码：<input type="text" name="password"/>
    <input type="submit" value="登录"/>
</form>
</body>
</html>