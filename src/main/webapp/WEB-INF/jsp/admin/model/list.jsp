<%--
  Created by IntelliJ IDEA.
  User: LiuChao
  Date: 2018/1/5
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../core/taglib.jsp" %>
<html>
<head>
    <%@ include file="../core/top.jsp" %>
    <title>列表</title>
</head>
<body>
<div class="wrapper">
    <section class="box box-solid">
        <div class="box-body">
            <form:form action="${basePath}/model/list" modelAttribute="user" method="post" cssClass="form-inline">
                <div class="form-group">
                    <label for="name">姓名：</label>
                    <form:input path="name" cssClass="form-control"/>
                </div>
                <div class="form-group">
                    <label for="phone">手机：</label>
                    <form:input path="phone" cssClass="form-control"/>
                </div>
                <div class="form-group">
                    <button class="btn btn-primary ladda-button">查询</button>
                    <button type="button" class="btn btn-primary">重置</button>
                </div>
            </form:form>
        </div>
    </section>
    <section class="box box-solid">
        <div class="box-body">
            <table class="table table-bordered table-hover table-condensed" id="table">
                <thead>
                <tr>
                    <th><input type="checkbox" id="selectAll"></th>
                    <th>序号</th>
                    <th>表头</th>
                    <th>表头</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${userList}" var="bean" varStatus="status">
                    <tr>
                        <td><input type="checkbox" name="id" value="${bean.id}"></td>
                        <td>${status.index + 1}</td>
                        <td>${bean.name}</td>
                        <td>${bean.phone}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="clearfix">
                <nav class="pull-left">
                    <ul class="pagination pagination-sm">
                        <li>
                            <button type="button" class="btn btn-success btn-sm" onclick="test1()">新增</button>
                        </li>
                    </ul>
                </nav>
                <nav class="pull-right">
                    ${user.page.html}
                </nav>
            </div>
        </div>
    </section>
</div>
<script>
    $(function () {
        $('input[name="id"]').on('ifChecked', function (event) {
        });
    });

    function test1() {
        $('input[name="id"]:checked').each(function () {
            console.log($(this).val());
        });
    }
</script>
</body>
</html>
