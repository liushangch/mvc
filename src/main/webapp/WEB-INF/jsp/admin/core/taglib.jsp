<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fna" uri="http://java.sun.com/jsp/jstl/admin" %>
<%@ taglib prefix="fnd" uri="http://java.sun.com/jsp/jstl/date" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    String adminPath = basePath + "/admin";
%>
<c:set var="basePath" value="<%=basePath%>"/>
<c:set var="adminPath" value="<%=adminPath%>"/>