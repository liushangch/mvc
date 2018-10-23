<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../../core/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="../../core/top.jsp" %>
    <title>列表</title>
</head>
<body class="wrapper">
<div id="loading">
    <div class="loading-effect alert alert-info"><i class="fa fa-spin fa-spinner"></i>&nbsp;页面加载中</div>
</div>
<div class="page-content" style="display: none;">
    <section class="search-form">
        <form:form modelAttribute="sysTable" class="form-inline" action="${basePath}/admin/table/list" method="post">
            <div class="form-group">
                <label for="tableName">表名：</label>
                <form:select path="tableName" cssClass="chosen-select form-control input-sm" data-placeholder="请选择表">
                    <form:option value=""/>
                    <form:options items="${dbTableList}" itemValue="tableName" itemLabel="showName"/>
                </form:select>
            </div>
            <div class="form-group">
                <div class="btn-group">
                    <button class="btn btn-info btn-sm" id="submitBtn" title="查询"><i class="ace-icon fa fa-search"></i></button>
                    <a class="btn btn-info btn-sm" id="refreshBtn" title="重置"><i class="ace-icon fa fa-refresh"></i></a>
                    <a class="btn btn-info btn-sm" title="更多查询" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample"><i class="ace-icon fa fa-chevron-down"></i></a>
                </div>
            </div>
            <div class="collapse" id="collapseExample">
            </div>
        </form:form>
    </section>
    <section>
        <table class="table table-bordered table-hover" id="table">
            <thead>
            <tr>
                <th>表名</th>
                <th>表注释</th>
                <th>实体类名称</th>
                <th>实体类描述</th>
                <th>功能作者</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${tableList}" var="table" varStatus="status">
                <c:set var="i" value="${status.index + 1}"/>
                <tr>
                    <td></td>
                    <td>${table.tableName}</td>
                    <td>${table.tableSchema}</td>
                    <td>${table.beanName}</td>
                    <td>${table.beanSchema}</td>
                    <td>${table.beanAuthor}</td>
                    <td>
                        <div class="hidden-sm hidden-xs action-buttons">
                            <a class="green" href="#" title="修改" onclick="goEditMenu('${menu.menuId}')">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                            </a>
                            <a class="red" href="#" title="删除" onclick="delMenu('${menu.menuId}')">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                            </a>
                        </div>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <c:if test="${fn:length(tableList) == 0}">
            <div class="no-data">没有数据！</div>
        </c:if>
        <div class="clearfix">
            <nav class="pull-left">
                <ul class="pagination pagination-sm">
                    <li>
                        <button type="button" class="btn btn-success btn-sm" onclick="goAdd()">新增</button>
                    </li>
                </ul>
            </nav>
        </div>
    </section>
</div>
<script>
    $(function () {
        $('.chosen-select').chosen({
            allow_single_deselect: true,
            width: "260px;"
        });
        $('input[name="id"]').on('ifChecked', function (event) {
        });
    });

    /**
     * 去修改页面
     */
    function goAdd() {
        openMenu('tableAdd', '新增规则配置', "${basePath}/admin/table/goAdd");
    }

    /**
     * 去修改页面
     */
    function goEditMenu(tableId) {
        openMenu('tableEdit', '修改规则配置', "${basePath}/admin/table/goEdit?tableId=" + tableId);
    }

    /**
     * 删除
     */
    function delMenu(menuId) {
        top.layer.confirm('确定删除吗？', {
            icon: 2,
            yes: function (index) {
                $.ajax({
                    type: "post",
                    url: "${basePath}/admin/menu/delMenu",
                    dataType: "json",
                    data: {menuId: menuId},
                    success: function (result) {
                        if (result.code === 200) {
                            window.location.reload();
                            top.layer.close(index);
                        }
                    }
                });
            }
        });
    }

    // 切换菜单状态
    function switchMenuStatus(menuId, e) {
        var state = $(e).bootstrapSwitch('state');
        var menuStatus;
        if (state) {
            menuStatus = 1;
        } else {
            menuStatus = 2;
        }
        $.post("${basePath}/admin/menu/switchMenuStatus",
            {menuId: menuId, menuStatus: menuStatus},
            function (result) {
                if (result.code === 200) {
                    top.layer.msg('成功');
                } else {

                }
            });
    }

    window.onload = function () {
        $("#loading").hide();
        $(".page-content").fadeIn();
    };
</script>
</body>
</html>
