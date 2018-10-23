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
    <form:form id="form" cssClass="form-horizontal" action="${basePath}/admin/table/save" method="POST" modelAttribute="sysTable">
        <h3 class="row header smaller lighter blue">
            <span class="col-xs-6">${not empty sysTable.tableId?'修改':'新增'}代码模板</span>
        </h3>
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="tableName" class="col-sm-4 control-label">数据库表名：</label>
                            <div class="col-sm-8">
                                <form:select path="tableName" cssClass="chosen-select form-control" data-placeholder="请选择表">
                                    <form:option value=""/>
                                    <form:options items="${dbTableList}" itemValue="tableName" itemLabel="showName"/>
                                </form:select>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="tableSchema" class="col-sm-4 control-label">菜单名称：</label>
                            <div class="col-sm-8">
                                <form:input path="tableSchema" cssClass="form-control input-sm"/>
                                <form:errors path="tableSchema" cssClass="error"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="beanName" class="col-sm-4 control-label">菜单类型：</label>
                            <div class="col-sm-8">
                                <form:input path="beanName" cssClass="form-control input-sm"/>
                                <form:errors path="beanName" cssClass="error"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="beanSchema" class="col-sm-4 control-label">菜单地址：</label>
                            <div class="col-sm-8">
                                <form:input path="beanSchema" cssClass="form-control input-sm"/>
                                <form:errors path="beanSchema" cssClass="error"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="beanAuthor" class="col-sm-4 control-label">作者：</label>
                            <div class="col-sm-8">
                                <form:input path="beanAuthor" cssClass="form-control input-sm"/>
                                <form:errors path="beanAuthor" cssClass="error"/>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix visible-sm-block"></div>
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
                        <a class="btn btn-sm" onclick="closePage()"><i class="ace-icon fa fa-times"></i>&nbsp;关闭</a>
                    </div>
                </div>
            </div>
        </div>
    </form:form>
</div>
<script>
    $(function () {
        $('.chosen-select').chosen({
            allow_single_deselect: true,
            width: "100%"
        });

        // initICheck();

        // 选择上级菜单
        $("#selectMenu").on('click', function () {
            var menuId = $("#menuParentId").val();
            top.layer.open({
                type: 2,
                title: '选择菜单',
                area: ['300px', '450px'],
                fixed: false, //不固定
                maxmin: true,
                content: '${basePath}/admin/menu/goChoice?menuId=' + menuId
            });
        })
    });

    function submit() {
        $.ajax({
            type: "post",
            url: "${basePath}/admin/menu/save",
            dataType: "json",
            data: $("#form").serialize(),
            success: function (result) {
                if (result.code === 200) {
                    console.log(result);
                    // window.location.reload();
                    // top.layer.close(index);
                } else if (result.code === 400003) {
                    openWarning(result.data);
                    // layer.open({
                    //     type: 1,
                    //     title: false,
                    //     closeBtn: 0, //不显示关闭按钮
                    //     shade: [0],
                    //     area: ['340px', '215px'],
                    //     offset: 'rb', //右下角弹出
                    //     time: 2000, //2秒后自动关闭
                    //     anim: 2,
                    //     content: "", //iframe的url，no代表不显示滚动条
                    // });


                    console.log(result.data);
                }
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