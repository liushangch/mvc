<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="core/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="core/top.jsp" %>
    <title>${fna:getSystemName()}</title>
    <link rel="stylesheet" href="${basePath}/static/custom/css/index.css">
</head>
<body class="no-skin">
<div id="navbar" class="navbar navbar-default ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>
        </button>

        <div class="navbar-header pull-left">
            <a href="${basePath}/admin/index" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    ${fna:getSystemName()}
                </small>
            </a>
        </div>

        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue dropdown-modal">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="${basePath}/static/assets/images/avatars/user.jpg"
                             alt="Jason's Photo"/>
                        <span class="user-info"><small>Welcome,</small>Jason</span>
                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>
                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li><a href="#"><i class="ace-icon fa fa-cog"></i>Settings</a></li>
                        <li><a href="profile.html"><i class="ace-icon fa fa-user"></i>Profile</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="ace-icon fa fa-power-off"></i>Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div><!-- /.navbar-container -->
</div>

<div class="main-container ace-save-state" id="main-container">
    <div id="sidebar" class="sidebar responsive ace-save-state">
        <ul class="nav nav-list">
            <li class="active">
                <a href="#" onclick="openMenu('home','主页','${basePath}/admin/home',this)">
                    <i class="menu-icon fa fa-home home-icon"></i>
                    <span class="menu-text"> 主页 </span>
                </a>
                <b class="arrow"></b>
            </li>
            <c:forEach items="${menuList}" var="menu">
                <li>
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa ${menu.icon}"></i>
                        <span class="menu-text">${menu.name}</span>
                        <b class="arrow fa fa-angle-down"></b>
                    </a>
                    <b class="arrow"></b>
                    <ul class="submenu">
                        <c:forEach items="${menu.menuList}" var="twoMenu">
                            <li class="">
                                <c:set var="hasMenu" value="${fn:length(twoMenu.menuList) > 0}"/>
                                <c:if test="${hasMenu eq true}">
                                    <a href="#" class="dropdown-toggle">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        <span><i class="menu-icon fa ${twoMenu.icon}"></i></span>
                                        <span>${twoMenu.name}</span>
                                        <b class="arrow fa fa-angle-down"></b>
                                    </a>
                                    <b class="arrow"></b>
                                    <ul class="submenu">
                                        <c:forEach items="${twoMenu.menuList}" var="threeMenu">
                                            <li class="">
                                                <a href="#" onclick="openMenu('${threeMenu.menuId}','${threeMenu.name}','${basePath}${threeMenu.menuUrl}',this)">
                                                    <i class="menu-icon fa ${threeMenu.icon}"></i>
                                                    <span>${threeMenu.name}</span>
                                                </a>
                                                <b class="arrow"></b>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </c:if>
                                <c:if test="${hasMenu eq false}">
                                    <a href="#" onclick="openMenu('${twoMenu.menuId}','${twoMenu.name}','${basePath}${twoMenu.menuUrl}',this)">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        <span><i class="menu-icon fa ${twoMenu.icon}"></i></span>
                                        <span>${twoMenu.name}</span>
                                    </a>
                                    <b class="arrow"></b>
                                </c:if>
                            </li>
                        </c:forEach>
                    </ul>
                </li>
            </c:forEach>
        </ul><!-- /.nav-list -->
        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
               data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
    </div>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="tabbable">
                <div class="nav-div">
                    <ul class="nav nav-tabs" id="menuTab">
                        <li class="active"><a href="#menu_home" data-toggle="tab" aria-expanded="true">主页</a></li>
                    </ul>
                </div>
                <div class="tab-content" id="menuContent">
                    <div id="menu_home" class="tab-pane fade active in">
                        <iframe class="main-iframe" src="${basePath}/admin/home"></iframe>
                    </div>
                </div>

            </div>
        </div>
    </div><!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application &copy; 2013-2014
						</span>

                &nbsp; &nbsp;
                <span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
            </div>
        </div>
    </div>
    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->
<script>
    $(function () {
        // 初始化iframe高度
        $(".tab-content").css("height", $(window).height() - 166);
    });

    //当浏览器大小变化时，改变iframe高度
    $(window).resize(function () {
        $(".tab-content").css("height", $(window).height() - 166);
        $(".main-iframe").css("height", $(window).height() - 166);
    });
</script>
</body>
</html>
