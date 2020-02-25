<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <script type="text/javascript" src="/static/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/js/vue.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/css/main.css">
</head>
<body>
<div>
    <div class="container">
        <nav class="navbar navbar-inverse" role="navigation">
            <div>
                <image id="titleImg" class="navbar-header img-circle" src="/static/image/title.jpg"/>
                <a class="navbar-brand" herf="javascript:;">Have Fun</a>
            </div>
            <div id="nav_list" class="navbar-collapse">
                <ul id="menu_list" class="nav navbar-nav">
                    <li tag="movie"><a href="javascript:;"><image class="img-circle" src="/static/image/movie.jpg"/>电影</a></li>
                    <li tag="book"><a href="javascript:;"><image class="img-circle" src="/static/image/book.jpg"/>书籍</a></li>
                </ul>
                <ul id="app" class="nav navbar-nav navbar-right">
                    <li>
                        <p id="timeP">{{ date | formatTime }}</p>
                        <p id="dateP">{{ date | formatDate }}</p>
                    </li>
                    <li><a href="#">个人中心</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<script type="text/javascript" src="/static/js/main.js"></script>
</body>
</html>