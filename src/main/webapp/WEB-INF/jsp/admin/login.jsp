<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="core/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>Title</title>
    <!--[if !IE]> -->
    <script src="${basePath}/static/assets/js/jquery-2.1.4.min.js"></script>
    <!-- <![endif]-->
    <!--[if IE]>
    <script src="${basePath}/static/assets/js/jquery-1.11.3.min.js"></script><![endif]-->
    <!-- Bootstrap v3.3.6 -->
    <link rel="stylesheet" href="${basePath}/static/assets/css/bootstrap.min.css"/>
    <script type="text/javascript" src="${basePath}/static/assets/js/bootstrap.min.js"></script>
    <!--[if lte IE 8]>
    <script src="${basePath}/static/assets/js/html5shiv.min.js"></script>
    <script src="${basePath}/static/assets/js/respond.min.js"></script>
    <![endif]-->
    <!-- jquery-backstretch -->
    <script src="${basePath}/static/jquery-backstretch/jquery.backstretch.js"></script>
    <!-- Font Awesome 4.7.0 -->
    <link rel="stylesheet" href="${basePath}/static/assets/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${basePath}/static/custom/css/login-form-elements.css"/>
    <link rel="stylesheet" href="${basePath}/static/custom/css/login.css"/>
    <script src="${basePath}/static/custom/js/login.js"></script>
    <script>
        // 在顶层页面打开
        if (window !== top) {
            top.location.href = location.href;
        }
    </script>
</head>
<body>
<div class="top-content">
    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>Bootstrap</strong>管理系统</h1>
                    <%--<div class="description">--%>
                        <%--<p>--%>
                            <%--This is a free responsive login form made with Bootstrap.--%>
                            <%--Download it on <a href="#"><strong>AZMIND</strong></a>, customize and use it as you like!--%>
                        <%--</p>--%>
                    <%--</div>--%>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>登录</h3>
                            <%--<p>请输入您的用户名和密码：</p>--%>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-lock"></i>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <form role="form" action="${basePath}/admin/signIn" method="post" class="login-form">
                            <div class="form-group">
                                <label class="sr-only" for="username">Username</label>
                                <input type="text" name="username" placeholder="Username..." class="form-username form-control" id="username" value="1">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="password">Password</label>
                                <input type="password" name="password" placeholder="Password..." class="form-password form-control" id="password" value="123456">
                            </div>
                            <button type="submit" class="btn">登录</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 social-login">
                    <h3>其他登录方式</h3>
                    <div class="social-login-buttons">
                        <a class="btn btn-link-2" href="#">
                            <i class="fa fa-weixin"></i> 微信
                        </a>
                        <a class="btn btn-link-2" href="#">
                            <i class="fa fa-qq"></i> QQ
                        </a>
                        <a class="btn btn-link-2" href="#">
                            <i class="fa fa-weibo"></i> 微博
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>
