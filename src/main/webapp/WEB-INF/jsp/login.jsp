<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>HaveFun</title>
    <script type="text/javascript" src="/static/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
</head>
<style>
    body{
        background: url('/static/image/background.jpg') no-repeat;
        width: 100%;
    }
    .row{
        margin: 200px 0 0;
    }
    .form-horizontal{
        margin-top: 30px;
    }
    .btn{
        width: 120px;
    }
</style>
<body>
<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4 container">
        <form class="form-horizontal" method="post" action="/user/login">
            <div class="form-group">
                <label class="col-sm-3 control-label">用户名：</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" name="userName">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">密码：</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" name="password">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-5 col-sm-5">
                    <button type="submit" class="btn btn-default">登录</button>
                </div>
            </div>
        </form>
    </div>
    <div class="col-md-4"/></div>
</div>
</body>
</html>