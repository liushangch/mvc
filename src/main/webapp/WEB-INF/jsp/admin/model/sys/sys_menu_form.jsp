<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../../core/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="../../core/top.jsp" %>
    <title>表单</title>
</head>
<body class="wrapper">
<div id="loading">
    <div class="loading-effect alert alert-info"><i class="fa fa-spin fa-spinner"></i>&nbsp;页面加载中</div>
</div>
<div class="page-content" style="display: none;">
    <form:form id="form" cssClass="form-horizontal" action="${basePath}/admin/menu/${operate}" method="POST" modelAttribute="inMenu">
        <form:hidden path="id"/>
        <h3 class="row header smaller lighter blue">
            <span class="col-xs-6">${not empty inMenu.id?'修改':'新增'}菜单</span>
        </h3>
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="parentId" class="col-sm-4 control-label">上级菜单：</label>
                            <div class="col-sm-8">
                                <div class="input-group" id="selectMenu">
                                    <form:hidden path="parentId" cssClass="form-control input-sm" readonly="true"/>
                                    <input class="form-control input-sm" type="text" id="parentName" value="${fna:getMenuName(inMenu.parentId)}">
                                    <form:errors path="parentId" cssClass="error"/>
                                    <span class="input-group-btn">
                                        <a class="btn btn-default btn-xs"><i class="fa fa-search"></i></a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="name" class="col-sm-4 control-label">菜单名称：</label>
                            <div class="col-sm-8">
                                <form:input path="name" cssClass="form-control input-sm"/>
                                <form:errors path="name" cssClass="error"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label class="col-sm-4 control-label">类型：</label>
                            <div class="col-sm-8">
                                <div class="radio">
                                    <label>
                                        <input name="menuType" type="radio" value="1" checked>
                                        <span class="lbl"> 菜单</span>
                                    </label>
                                    <label>
                                        <input name="menuType" type="radio" value="2">
                                        <span class="lbl"> 权限</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label class="col-sm-4 control-label">状态：</label>
                            <div class="col-sm-8">
                                <div class="radio">
                                    <label>
                                        <input name="menuStatus" type="radio" value="1" checked>
                                        <span class="lbl"> 启用</span>
                                    </label>
                                    <label>
                                        <input name="menuStatus" type="radio" value="2">
                                        <span class="lbl"> 禁用</span>
                                    </label>
                                </div>
                                <form:errors path="menuStatus" cssClass="error"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="icon" class="col-sm-4 control-label">菜单图标：</label>
                            <div class="col-sm-8">
                                <div class="input-group" id="selectIcon">
                                    <span class="input-group-addon" id="icon-i">
									    <i class="fa fa-phone"></i>
									</span>
                                    <form:input path="icon" cssClass="form-control input-sm"/>
                                    <span class="input-group-btn">
                                        <a class="btn btn-default btn-xs"><i class="fa fa-search"></i></a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6" id="menuUrl-div">
                        <div class="form-group">
                            <label for="menuUrl" class="col-sm-4 control-label">菜单地址：</label>
                            <div class="col-sm-8">
                                <form:input path="menuUrl" cssClass="form-control input-sm"/>
                                <form:errors path="menuUrl" cssClass="error"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6" id="permission-div" style="display: none;">
                        <div class="form-group">
                            <label for="permission" class="col-sm-4 control-label">授权标识：</label>
                            <div class="col-sm-8">
                                <form:input path="permission" cssClass="form-control input-sm"/>
                                <form:errors path="permission" cssClass="error"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6" id="openType-div">
                        <div class="form-group">
                            <label for="openType" class="col-sm-4 control-label">打开方式：</label>
                            <div class="col-sm-8">
                                <form:input path="openType" cssClass="form-control input-sm"/>
                                <form:errors path="openType" cssClass="error"/>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix visible-sm-block"></div>
                    <div class="col-sm-6" id="menuOrder-div">
                        <div class="form-group">
                            <label for="menuOrder" class="col-sm-4 control-label">菜单顺序：</label>
                            <div class="col-sm-8">
                                <form:input path="menuOrder" type="number" min="0" cssClass="form-control input-sm"/>
                                <form:errors path="menuOrder" cssClass="error"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6"></div>
                    <div class="col-sm-6"></div>
                    <div class="clearfix visible-sm-block"></div>
                    <div class="col-sm-6"></div>
                    <div class="col-sm-6"></div>
                    <div class="clearfix visible-sm-block"></div>
                    <div class="col-sm-6"></div>
                    <div class="col-sm-6"></div>
                    <div class="clearfix visible-sm-block"></div>
                </div>
                <div class="row">
                    <div class="col-sm-12 mb15 text-center">
                        <a class="btn btn-sm btn-primary" onclick="submit()"><i class="ace-icon fa fa-floppy-o"></i>&nbsp;保存</a>
                        <a class="btn btn-sm" onclick="goBack()"><i class="ace-icon fa fa-undo"></i>&nbsp;返回</a>
                    </div>
                </div>
            </div>
        </div>
    </form:form>
</div>
<script>
    $(function () {
        //初始化数据
        initData();
        //初始化组件
        initICheck();

        // 选择上级菜单
        $("#selectMenu").on('click', function () {
            var id = $("#parentId").val();
            top.layer.open({
                type: 2,
                title: '选择菜单',
                area: ['300px', '450px'],
                fixed: false, //不固定
                maxmin: true,
                content: '${basePath}/admin/menu/goChoice?id=' + id
            });
        });

        // 选择菜单图标
        $("#selectIcon").on('click', function () {
            var icon = $("#icon").val();
            top.layer.open({
                type: 2,
                title: '选择图标',
                area: ['850px', '450px'],
                fixed: false, //不固定
                maxmin: true,
                content: '${basePath}/admin/goChoice?icon=' + icon
            });
        });

        // 类型切换
        $("input[name=menuType]").on('ifChecked', function () {
            switchType($(this).val());
        });
    });

    //初始化数据
    function initData() {
        $("input[name=menuType][value='${inMenu.menuType}']").iCheck("check");
        switchType('${inMenu.menuType}');
        $("input[name=menuStatus][value='${inMenu.menuStatus}']").iCheck("check");
    }

    // 类型切换
    function switchType(type) {
        if (type == 1) {
            $("#menuUrl-div").show();
            $("#openType-div").show();
            $("#menuOrder-div").show();
            $("#permission-div").hide();
        } else {
            $("#menuUrl-div").hide();
            $("#openType-div").hide();
            $("#menuOrder-div").hide();
            $("#permission-div").show();
        }
    }

    function submit() {
        $("#form").submit();
    }

    function goBack() {
        window.location.href = "${basePath}/admin/menu/list";
    }

    window.onload = function () {
        $("#loading").hide();
        $(".page-content").fadeIn();
    };
</script>
</body>
</html>
