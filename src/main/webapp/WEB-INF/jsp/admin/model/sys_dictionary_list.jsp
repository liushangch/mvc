<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../core/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="../core/top.jsp" %>
    <title>列表</title>
</head>
<body class="wrapper">
<div class="page-content">
    <section class="box box-solid">
        <div class="box-body">
            <%--<form:form action="${adminPath}/menu/list" modelAttribute="menuVO" method="post" cssClass="form-inline">--%>
            <div class="form-group">
                <%--<label for="name">姓名：</label>--%>
                <%--<form:input path="name" cssClass="form-control"/>--%>
            </div>
            <div class="form-group">
                <%--<label for="phone">手机：</label>--%>
                <%--<form:input path="phone" cssClass="form-control"/>--%>
            </div>
            <div class="form-group">
                <button class="btn btn-primary ladda-button btn-sm"><span class="ace-icon fa fa-search icon-on-right bigger-110"></span>查询</button>
                <button type="button" class="btn btn-primary btn-sm">重置</button>
            </div>
            <%--</form:form>--%>
        </div>
    </section>
    <section class="box box-solid">
        <div class="box-body">
            <table class="table table-bordered table-hover" id="table">
                <thead>
                <tr>
                    <th>菜单名称</th>
                    <th>菜单地址</th>
                    <th>菜单状态</th>
                    <th>打开方式</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>c</td>
                    <td>c</td>
                    <td>c</td>
                    <td>c</td>
                    <td>c</td>
                </tr>
                <tr>
                    <td>c</td>
                    <td>c</td>
                    <td>c</td>
                    <td>c</td>
                    <td>c</td>
                </tr>
                <tr>
                    <td>c</td>
                    <td>c</td>
                    <td>c</td>
                    <td>c</td>
                    <td>c</td>
                </tr>
                <tr>
                    <td>c</td>
                    <td>c</td>
                    <td>c</td>
                    <td>c</td>
                    <td>c</td>
                </tr>
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
