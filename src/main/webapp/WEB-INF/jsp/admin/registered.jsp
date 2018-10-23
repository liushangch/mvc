<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="core/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="core/top.jsp" %>
    <title>注册</title>
    <style>
        .error {
            color: #ff0000;
        }

        .errorblock {
            color: #000;
            background-color: #ffEEEE;
            border: 3px solid #ff0000;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>
<body>
<div class="container">
    <form:form method="POST" id="Form" modelAttribute="user" action="registered">
        <c:forEach items="${errors}" var="err">${err.defaultMessage}</c:forEach>
        <form:errors path="*" cssClass="errorblock" element="div"/>
        <div class="form-group">
            <label for="username">用户名</label>
            <input class="form-control" id="username" name="username" placeholder="用户名" value="${user.username}">
            <form:errors path="username" cssClass="error"/>
        </div>
        <div class="form-group">
            <label for="password">密码</label>
            <input class="form-control" id="password" name="password" placeholder="密码">
            <form:errors path="password" cssClass="error"/>
        </div>
        <div class="form-group">
            <label for="email">邮箱</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="邮箱">
            <form:errors path="email" cssClass="error"/>
        </div>
        <div class="form-group">
            <label for="name">姓名</label>
            <input class="form-control" id="name" name="name" placeholder="姓名">
            <form:errors path="name" cssClass="error"/>
        </div>
        <div class="form-group">
            <label for="phone">手机号</label>
            <input class="form-control" id="phone" name="phone" placeholder="手机号">
            <form:errors path="phone" cssClass="error"/>
        </div>
        <button class="btn btn-primary btn-block">提交</button>
    </form:form>
</div>
</body>
<script>
    $(function () {
    });

    // 验证用户名是否存在
    function vUserName(username) {
        var bool = false;
        $.ajax({
            type: 'POST',
            url: 'vUserName',
            data: {
                username: username
            },
            dataType: 'json',
            cache: false,
            async: false,
            success: function (data) {
                bool = data;
            }
        });
        return bool;
    }
</script>
</html>
