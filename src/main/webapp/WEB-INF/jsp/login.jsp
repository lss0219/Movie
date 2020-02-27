<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>HaveFun</title>
    <script type="text/javascript" src="/static/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/css/login.css">
</head>
<body>
<div class="row">
    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"></div>
    <div class="container col-xs-8 col-sm-6 col-md-5 col-lg-4">
        <form class="form-horizontal" method="post" action="/user/login">
            <div class="form-inline">
                <label class="control-label">用户名：</label>
                <input type="text" class="form-control" name="userName">
            </div>
            <div class="form-inline">
                <label class="control-label">密码：</label>
                <input type="text" class="form-control" name="password">
            </div>
            <div class="form-group">
                <div>
                    <button type="submit" class="btn btn-default">登录</button>
                </div>
            </div>
        </form>
    </div>
    <div class="col-xs-1 col-sm-3 col-md-4 col-lg-5"/></div>
</div>
</body>
</html>