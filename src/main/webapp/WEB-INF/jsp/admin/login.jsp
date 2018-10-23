<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="core/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>Title</title>
    <script>
        // 在顶层页面打开
        if (window !== top) {
            top.location.href = location.href;
        }
    </script>
</head>
<body>
<form action="${basePath}/admin/signIn" method="post">
    <input name="username" value="1" placeholder="用户名">
    <input name="password" type="password" value="123456" placeholder="密码">
    <button>登录</button>
</form>
</body>
</html>
