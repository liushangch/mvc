<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../../core/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="../../core/top.jsp" %>
    <link rel="stylesheet" href="${basePath}/static/zTree_v3/css/metroStyle/metroStyle.css" type="text/css">
    <script type="text/javascript" src="${basePath}/static/zTree_v3/js/jquery.ztree.core.js"></script>
    <title>列表</title>
    <style>
        .box-body {
            margin: 10px;
        }

        .box-header, .box-content, .box-foot {
            margin-bottom: 5px;
        }

        .box-content {
            /*height: 310px;*/
            overflow: auto;
        }
    </style>
</head>
<body class="wrapper">
<div class="box-body">
    <div class="box-header input-group">
        <input id="searchInput" class="form-control input-sm">
        <span class="input-group-btn">
            <a id="searchBtn" class="btn btn-default btn-xs"><i class="ace-icon fa fa-search"></i>搜索</a>
        </span>
    </div>
    <div class="box-content">
        <ul id="treeDemo" class="ztree"></ul>
    </div>
    <div class="box-foot text-right">
        <a class="btn btn-xs btn-primary" id="selectBtn"><i class="ace-icon fa fa-floppy-o"></i>&nbsp;选择</a>
        <a class="btn btn-xs" id="clearBtn"><i class="ace-icon fa fa-eraser"></i>&nbsp;清除</a>
        <a class="btn btn-xs" id="closeBtn"><i class="ace-icon fa fa-times"></i>&nbsp;关闭</a>
    </div>
</div>
<script>
    var zTreeObj;
    // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
    var setting = {};
    // zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
    var zNodes = [];

    var parentMenuId = '${inMenu.menuId}';
    $(function () {
        $(".box-content").css("height", $(window).height() - 100);
        $.ajax({
            type: "post",
            url: "${basePath}/admin/menu/getZTreeMenu",
            dataType: "json",
            // data: {menuId: menuId},
            success: function (result) {
                if (result.code === 200) {
                    zNodes = result.data;
                    zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
                    var nodes = zTreeObj.getNodesByParam("id", parentMenuId, null);
                    if (nodes.length > 0) {
                        zTreeObj.selectNode(nodes[0]);
                    }
                }
            }
        });
        $('#searchBtn').on('click', function () {
            var value = $("#searchInput").val();
            if (value) {
                var nodes = zTreeObj.getNodesByParamFuzzy("name", value, null);
                if (nodes.length > 0) {
                    zTreeObj.selectNode(nodes[0])
                }
            }
        });
        // 选择按钮
        $('#selectBtn').on('click', function () {
            var nodes = zTreeObj.getSelectedNodes();
            var len = nodes.length;
            if (len > 0) {
                if (len === 1) {
                    parent.$(".main-iframe").contents().find("#menuParentId").val(nodes[0].id);
                    parent.$(".main-iframe").contents().find("#menuParentName").val(nodes[0].name);
                    top.layer.closeAll();
                } else {
                    layer.msg('只能选择一个菜单');
                }
            } else {
                layer.msg('请选择一个菜单');
            }
        });
        // 清除按钮
        $('#clearBtn').on('click', function () {
            parent.$(".main-iframe").contents().find("#menuParentId").val('');
            parent.$(".main-iframe").contents().find("#menuParentName").val('');
            top.layer.closeAll();
        });
        // 关闭按钮
        $('#closeBtn').on('click', function () {
            top.layer.closeAll();
        });
    });

    //当浏览器大小变化时，改变iframe高度
    $(window).resize(function () {
        $(".box-content").css("height", $(window).height() - 100);
    });
</script>
</body>
</html>
