<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../core/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="../core/top.jsp" %>
    <%--jquery treetable--%>
    <link rel="stylesheet" href="${basePath}/static/jquery-treetable/css/jquery.treetable.custom.css"/>
    <script src="${basePath}/static/jquery-treetable/jquery.treetable.js"></script>
    <%--bootstrap switch--%>
    <link href="${basePath}/static/bootstrap-switch-master/dist/css/bootstrap3/bootstrap-switch.css" rel="stylesheet">
    <script src="${basePath}/static/bootstrap-switch-master/dist/js/bootstrap-switch.js"></script>
    <title>列表</title>
</head>
<body class="wrapper">
<div id="loading">
    <div class="loading-effect alert alert-info"><i class="fa fa-spin fa-spinner"></i>&nbsp;页面加载中</div>
</div>
<div class="page-content" style="display: none;">
    <section class="search-form">
        <%--<a class="btn btn-white btn-info btn-xs" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample" style="float: right">--%>
        <%--<i class="ace-icon fa fa-chevron-down"></i>--%>
        <%--</a>--%>
        <form class="form-inline" action="${basePath}/admin/menu/list" method="post">
            <div class="form-group">
                <label for="name">姓名：</label>
                <input class="form-control input-sm" id="name" name="name" value="${inMenu.name}" autocomplete="off"/>
            </div>
            <div class="form-group">
                <%--<label for="phone">手机：</label>--%>
                <%--<form:input path="phone" cssClass="form-control"/>--%>
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
        </form>
    </section>
    <section>
        <table class="table table-bordered table-hover" id="table">
            <thead>
            <tr>
                <th>菜单名称</th>
                <th>菜单地址</th>
                <th style="width: 100px;">菜单顺序</th>
                <th>菜单状态</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${menuList}" var="menu" varStatus="status">
                <c:set var="i" value="${status.index + 1}"/>
                <tr data-tt-id="${i}">
                    <td>
                        <a href="#">
                            <c:if test="${menu.icon ne null and menu.icon ne ''}"><i class="menu-icon home-icon fa ${menu.icon}"></i></c:if>
                                ${menu.name}
                        </a>
                    </td>
                    <td>${menu.menuUrl}</td>
                    <td><input class="form-control input-ssm" value="${menu.menuOrder}" style="text-align: center;"></td>
                    <td>
                        <input type="checkbox" name="menuStatus" value="${menu.menuStatus}" onchange="switchMenuStatus('${menu.menuId}',this)" <c:if test="${menu.menuStatus eq 1}">checked</c:if>/>
                    </td>
                    <td>
                        <input type="hidden" value="${menu.menuId}">
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
                <c:if test="${fn:length(menu.menuList) > 0}">
                    <c:forEach items="${menu.menuList}" var="twoMenu" varStatus="twoMenuStatus">
                        <c:set var="j" value="${twoMenuStatus.index + 1}"/>
                        <tr data-tt-id="${i}-${j}" data-tt-parent-id='${i}'>
                        <td>
                            <a href="#">
                                <c:if test="${twoMenu.icon ne null and twoMenu.icon ne''}"><i class="menu-icon home-icon fa ${twoMenu.icon}"></i></c:if>
                                    ${twoMenu.name}
                            </a>
                        </td>
                        <td>${twoMenu.menuUrl}</td>
                        <td><input class="form-control input-ssm" value="${twoMenu.menuOrder}" style="text-align: center;"></td>
                        <td>
                            <input type="checkbox" name="menuStatus" value="${twoMenu.menuStatus}" <c:if test="${twoMenu.menuStatus eq 1}">checked</c:if>/>
                        </td>
                        <td>
                            <input type="hidden" value="${twoMenu.menuId}">
                            <div class="hidden-sm hidden-xs action-buttons">
                                <a class="green" href="#" title="修改" onclick="goEditMenu('${twoMenu.menuId}')">
                                    <i class="ace-icon fa fa-pencil bigger-130"></i>
                                </a>
                                <a class="red" href="#" title="删除" onclick="delMenu('${twoMenu.menuId}')">
                                    <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                </a>
                            </div>
                        </td>
                        <c:if test="${fn:length(twoMenu.menuList) > 0}">
                            <c:forEach items="${twoMenu.menuList}" var="threeMenu" varStatus="threeMenuStatus">
                                <c:set var="k" value="${threeMenuStatus.index + 1}"/>
                                <tr data-tt-id="${i}-${j}-${k}" data-tt-parent-id='${i}-${j}'>
                                    <td>
                                        <a href="#">
                                            <c:if test="${threeMenu.icon ne null and threeMenu.icon ne ''}"><i class="menu-icon home-icon fa ${threeMenu.icon}"></i></c:if>
                                                ${threeMenu.name}
                                        </a>
                                    </td>
                                    <td>${threeMenu.menuUrl}</td>
                                    <td><input class="form-control input-ssm" value="${threeMenu.menuOrder}" style="text-align: center;"></td>
                                    <td>
                                        <input type="checkbox" name="menuStatus" value="${threeMenu.menuStatus}" <c:if test="${threeMenu.menuStatus eq 1}">checked</c:if>/>
                                    </td>
                                    <td>
                                        <input type="hidden" value="${threeMenu.menuId}">
                                        <div class="hidden-sm hidden-xs action-buttons">
                                            <a class="green" href="#" title="修改" onclick="goEditMenu('${threeMenu.menuId}')">
                                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                                            </a>
                                            <a class="red" href="#" title="删除" onclick="delMenu('${threeMenu.menuId}')">
                                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>
                    </c:forEach>
                </c:if>
            </c:forEach>
            </tbody>
        </table>
        <c:if test="${fn:length(menuList) == 0}">
            <div class="no-data">没有数据！</div>
        </c:if>
        <div class="clearfix">
            <nav class="pull-left">
                <ul class="pagination pagination-sm">
                    <li>
                        <button type="button" class="btn btn-success btn-sm" onclick="goAddMenu()">新增</button>
                    </li>
                </ul>
            </nav>
        </div>
    </section>
</div>
<script>
    $(function () {
        $("#table").treetable({expandable: true});
        $('input[name="id"]').on('ifChecked', function (event) {
        });

        // 初始化插件
        $("[name='menuStatus']").bootstrapSwitch({
            size: 'mini',
            onText: '启用',
            offText: '停用',
            onColor: 'success',
            offColor: 'warning'
        });
    });

    /**
     * 去修改页面
     */
    function goAddMenu() {
        openMenu('menuadd', '新增菜单', "${basePath}/admin/menu/goAdd");
    }

    /**
     * 去修改页面
     */
    function goEditMenu(menuId) {
        openPage('修改菜单', "${basePath}/admin/menu/goEdit?menuId=" + menuId);
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
