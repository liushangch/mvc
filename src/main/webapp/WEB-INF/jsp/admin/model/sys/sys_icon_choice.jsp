<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../../core/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="../../core/top.jsp" %>
    <title>Title</title>
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

        .icon-width {
            width: 80px;
            float: left;
        }
    </style>
</head>
<body class="wrapper">
<div class="box-body">
    <div class="box-content">
        <h3>Web Application Icons</h3>
        <ul class="list-unstyled">
            <li class="icon-width"><label><input name="icon" type="radio" value="address-book"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-address-book" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="address-book-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-address-book-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="address-card"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-address-card" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="address-card-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-address-card-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="adjust"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-adjust" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="american-sign-language-interpreting"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-american-sign-language-interpreting" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="anchor"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-anchor" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="archive"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-archive" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="area-chart"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-area-chart" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="arrows"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-arrows" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="arrows-h"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-arrows-h" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="arrows-v"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-arrows-v" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="asl-interpreting (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-asl-interpreting (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="assistive-listening-systems"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-assistive-listening-systems" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="asterisk"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-asterisk" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="at"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-at" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="audio-description"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-audio-description" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="automobile (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-automobile (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="balance-scale"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-balance-scale" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="ban"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-ban" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bank (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bank (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bar-chart"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bar-chart" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bar-chart-o (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bar-chart-o (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="barcode"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-barcode" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bars"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bars" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bath"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bath" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bathtub (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bathtub (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="battery (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-battery (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="battery-0 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-battery-0 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="battery-1 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-battery-1 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="battery-2 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-battery-2 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="battery-3 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-battery-3 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="battery-4 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-battery-4 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="battery-empty"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-battery-empty" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="battery-full"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-battery-full" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="battery-half"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-battery-half" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="battery-quarter"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-battery-quarter" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="battery-three-quarters"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-battery-three-quarters" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bed"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bed" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="beer"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-beer" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bell"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bell" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bell-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bell-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bell-slash"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bell-slash" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bell-slash-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bell-slash-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bicycle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bicycle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="binoculars"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-binoculars" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="birthday-cake"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-birthday-cake" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="blind"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-blind" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bluetooth"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bluetooth" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bluetooth-b"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bluetooth-b" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bolt"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bolt" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bomb"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bomb" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="book"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-book" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bookmark"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bookmark" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bookmark-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bookmark-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="braille"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-braille" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="briefcase"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-briefcase" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bug"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bug" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="building"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-building" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="building-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-building-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bullhorn"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bullhorn" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bullseye"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bullseye" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="bus"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-bus" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="cab (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-cab (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="calculator"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-calculator" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="calendar"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-calendar" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="calendar-check-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-calendar-check-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="calendar-minus-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-calendar-minus-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="calendar-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-calendar-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="calendar-plus-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-calendar-plus-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="calendar-times-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-calendar-times-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="camera"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-camera" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="camera-retro"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-camera-retro" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="car"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-car" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="caret-square-o-down"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-caret-square-o-down" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="caret-square-o-left"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-caret-square-o-left" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="caret-square-o-right"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-caret-square-o-right" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="caret-square-o-up"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-caret-square-o-up" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="cart-arrow-down"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-cart-arrow-down" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="cart-plus"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-cart-plus" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="cc"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-cc" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="certificate"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-certificate" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="check"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-check" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="check-circle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-check-circle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="check-circle-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-check-circle-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="check-square"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-check-square" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="check-square-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-check-square-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="child"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-child" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="circle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-circle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="circle-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-circle-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="circle-o-notch"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-circle-o-notch" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="circle-thin"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-circle-thin" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="clock-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-clock-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="clone"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-clone" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="close (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-close (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="cloud"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-cloud" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="cloud-download"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-cloud-download" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="cloud-upload"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-cloud-upload" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="code"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-code" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="code-fork"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-code-fork" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="coffee"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-coffee" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="cog"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-cog" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="cogs"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-cogs" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="comment"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-comment" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="comment-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-comment-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="commenting"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-commenting" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="commenting-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-commenting-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="comments"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-comments" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="comments-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-comments-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="compass"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-compass" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="copyright"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-copyright" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="creative-commons"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-creative-commons" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="credit-card"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-credit-card" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="credit-card-alt"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-credit-card-alt" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="crop"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-crop" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="crosshairs"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-crosshairs" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="cube"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-cube" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="cubes"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-cubes" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="cutlery"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-cutlery" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="dashboard (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-dashboard (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="database"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-database" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="deaf"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-deaf" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="deafness (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-deafness (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="desktop"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-desktop" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="diamond"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-diamond" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="dot-circle-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-dot-circle-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="download"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-download" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="drivers-license (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-drivers-license (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="drivers-license-o (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-drivers-license-o (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="edit (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-edit (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="ellipsis-h"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-ellipsis-h" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="ellipsis-v"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-ellipsis-v" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="envelope"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-envelope" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="envelope-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-envelope-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="envelope-open"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-envelope-open" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="envelope-open-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-envelope-open-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="envelope-square"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-envelope-square" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="eraser"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-eraser" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="exchange"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-exchange" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="exclamation"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-exclamation" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="exclamation-circle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-exclamation-circle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="exclamation-triangle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-exclamation-triangle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="external-link"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-external-link" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="external-link-square"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-external-link-square" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="eye"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-eye" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="eye-slash"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-eye-slash" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="eyedropper"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-eyedropper" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="fax"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-fax" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="feed (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-feed (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="female"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-female" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="fighter-jet"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-fighter-jet" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-archive-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-archive-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-audio-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-audio-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-code-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-code-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-excel-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-excel-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-image-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-image-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-movie-o (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-movie-o (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-pdf-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-pdf-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-photo-o (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-photo-o (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-picture-o (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-picture-o (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-powerpoint-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-powerpoint-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-sound-o (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-sound-o (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-video-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-video-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-word-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-word-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="file-zip-o (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-file-zip-o (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="film"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-film" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="filter"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-filter" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="fire"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-fire" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="fire-extinguisher"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-fire-extinguisher" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="flag"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-flag" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="flag-checkered"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-flag-checkered" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="flag-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-flag-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="flash (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-flash (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="flask"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-flask" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="folder"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-folder" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="folder-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-folder-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="folder-open"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-folder-open" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="folder-open-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-folder-open-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="frown-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-frown-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="futbol-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-futbol-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="gamepad"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-gamepad" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="gavel"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-gavel" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="gear (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-gear (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="gears (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-gears (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="gift"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-gift" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="glass"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-glass" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="globe"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-globe" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="graduation-cap"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-graduation-cap" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="group (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-group (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hand-grab-o (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hand-grab-o (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hand-lizard-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hand-lizard-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hand-paper-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hand-paper-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hand-peace-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hand-peace-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hand-pointer-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hand-pointer-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hand-rock-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hand-rock-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hand-scissors-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hand-scissors-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hand-spock-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hand-spock-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hand-stop-o (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hand-stop-o (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="handshake-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-handshake-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hard-of-hearing (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hard-of-hearing (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hashtag"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hashtag" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hdd-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hdd-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="headphones"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-headphones" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="heart"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-heart" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="heart-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-heart-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="heartbeat"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-heartbeat" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="history"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-history" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="home"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-home" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hotel (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hotel (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hourglass"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hourglass" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hourglass-1 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hourglass-1 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hourglass-2 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hourglass-2 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hourglass-3 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hourglass-3 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hourglass-end"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hourglass-end" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hourglass-half"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hourglass-half" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hourglass-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hourglass-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="hourglass-start"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-hourglass-start" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="i-cursor"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-i-cursor" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="id-badge"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-id-badge" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="id-card"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-id-card" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="id-card-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-id-card-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="image (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-image (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="inbox"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-inbox" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="industry"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-industry" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="info"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-info" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="info-circle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-info-circle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="institution (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-institution (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="key"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-key" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="keyboard-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-keyboard-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="language"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-language" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="laptop"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-laptop" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="leaf"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-leaf" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="legal (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-legal (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="lemon-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-lemon-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="level-down"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-level-down" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="level-up"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-level-up" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="life-bouy (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-life-bouy (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="life-buoy (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-life-buoy (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="life-ring"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-life-ring" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="life-saver (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-life-saver (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="lightbulb-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-lightbulb-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="line-chart"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-line-chart" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="location-arrow"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-location-arrow" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="lock"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-lock" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="low-vision"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-low-vision" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="magic"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-magic" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="magnet"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-magnet" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="mail-forward (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-mail-forward (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="mail-reply (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-mail-reply (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="mail-reply-all (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-mail-reply-all (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="male"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-male" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="map"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-map" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="map-marker"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-map-marker" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="map-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-map-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="map-pin"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-map-pin" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="map-signs"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-map-signs" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="meh-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-meh-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="microchip"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-microchip" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="microphone"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-microphone" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="microphone-slash"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-microphone-slash" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="minus"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-minus" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="minus-circle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-minus-circle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="minus-square"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-minus-square" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="minus-square-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-minus-square-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="mobile"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-mobile" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="mobile-phone (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-mobile-phone (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="money"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-money" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="moon-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-moon-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="mortar-board (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-mortar-board (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="motorcycle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-motorcycle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="mouse-pointer"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-mouse-pointer" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="music"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-music" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="navicon (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-navicon (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="newspaper-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-newspaper-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="object-group"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-object-group" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="object-ungroup"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-object-ungroup" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="paint-brush"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-paint-brush" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="paper-plane"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-paper-plane" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="paper-plane-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-paper-plane-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="paw"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-paw" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="pencil"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-pencil" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="pencil-square"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-pencil-square" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="pencil-square-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-pencil-square-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="percent"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-percent" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="phone"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-phone" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="phone-square"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-phone-square" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="photo (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-photo (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="picture-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-picture-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="pie-chart"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-pie-chart" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="plane"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-plane" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="plug"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-plug" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="plus"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-plus" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="plus-circle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-plus-circle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="plus-square"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-plus-square" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="plus-square-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-plus-square-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="podcast"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-podcast" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="power-off"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-power-off" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="print"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-print" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="puzzle-piece"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-puzzle-piece" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="qrcode"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-qrcode" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="question"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-question" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="question-circle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-question-circle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="question-circle-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-question-circle-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="quote-left"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-quote-left" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="quote-right"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-quote-right" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="random"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-random" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="recycle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-recycle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="refresh"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-refresh" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="registered"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-registered" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="remove (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-remove (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="reorder (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-reorder (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="reply"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-reply" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="reply-all"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-reply-all" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="retweet"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-retweet" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="road"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-road" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="rocket"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-rocket" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="rss"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-rss" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="rss-square"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-rss-square" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="s15 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-s15 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="search"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-search" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="search-minus"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-search-minus" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="search-plus"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-search-plus" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="send (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-send (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="send-o (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-send-o (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="server"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-server" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="share"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-share" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="share-alt"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-share-alt" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="share-alt-square"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-share-alt-square" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="share-square"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-share-square" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="share-square-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-share-square-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="shield"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-shield" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="ship"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-ship" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="shopping-bag"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-shopping-bag" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="shopping-basket"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-shopping-basket" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="shopping-cart"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-shopping-cart" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="shower"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-shower" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sign-in"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sign-in" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sign-language"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sign-language" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sign-out"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sign-out" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="signal"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-signal" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="signing (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-signing (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sitemap"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sitemap" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sliders"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sliders" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="smile-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-smile-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="snowflake-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-snowflake-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="soccer-ball-o (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-soccer-ball-o (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sort"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sort" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sort-alpha-asc"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sort-alpha-asc" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sort-alpha-desc"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sort-alpha-desc" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sort-amount-asc"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sort-amount-asc" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sort-amount-desc"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sort-amount-desc" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sort-asc"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sort-asc" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sort-desc"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sort-desc" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sort-down (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sort-down (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sort-numeric-asc"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sort-numeric-asc" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sort-numeric-desc"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sort-up (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sort-up (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="space-shuttle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-space-shuttle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="spinner"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-spinner" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="spoon"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-spoon" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="square"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-square" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="square-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-square-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="star"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-star" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="star-half"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-star-half" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="star-half-empty (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-star-half-empty (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="star-half-full (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-star-half-full (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="star-half-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-star-half-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="star-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-star-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sticky-note"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sticky-note" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sticky-note-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sticky-note-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="street-view"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-street-view" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="suitcase"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-suitcase" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="sun-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-sun-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="support (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-support (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="tablet"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-tablet" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="tachometer"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-tachometer" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="tag"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-tag" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="tags"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-tags" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="tasks"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-tasks" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="taxi"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-taxi" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="television"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-television" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="terminal"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-terminal" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thermometer (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thermometer (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thermometer-0 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thermometer-0 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thermometer-1 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thermometer-1 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thermometer-2 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thermometer-2 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thermometer-3 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thermometer-3 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thermometer-4 (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thermometer-4 (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thermometer-empty"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thermometer-empty" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thermometer-full"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thermometer-full" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thermometer-half"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thermometer-half" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thermometer-quarter"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thermometer-quarter" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thermometer-three-quarters"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thermometer-three-quarters" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thumb-tack"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thumb-tack" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thumbs-down"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thumbs-down" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thumbs-o-down"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thumbs-o-down" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thumbs-o-up"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thumbs-o-up" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="thumbs-up"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-thumbs-up" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="ticket"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-ticket" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="times"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-times" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="times-circle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-times-circle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="times-circle-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-times-circle-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="times-rectangle (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-times-rectangle (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="times-rectangle-o (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-times-rectangle-o (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="tint"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-tint" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="toggle-down (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-toggle-down (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="toggle-left (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-toggle-left (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="toggle-off"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-toggle-off" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="toggle-on"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-toggle-on" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="toggle-right (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-toggle-right (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="toggle-up (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-toggle-up (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="trademark"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-trademark" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="trash"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-trash" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="trash-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-trash-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="tree"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-tree" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="trophy"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-trophy" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="truck"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-truck" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="tty"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-tty" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="tv (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-tv (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="umbrella"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-umbrella" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="universal-access"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-universal-access" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="university"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-university" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="unlock"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-unlock" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="unlock-alt"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-unlock-alt" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="unsorted (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-unsorted (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="upload"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-upload" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="user"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-user" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="user-circle"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-user-circle" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="user-circle-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-user-circle-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="user-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-user-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="user-plus"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-user-plus" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="user-secret"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-user-secret" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="user-times"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-user-times" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="users"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-users" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="vcard (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-vcard (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="vcard-o (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-vcard-o (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="video-camera"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-video-camera" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="volume-control-phone"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-volume-control-phone" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="volume-down"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-volume-down" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="volume-off"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-volume-off" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="volume-up"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-volume-up" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="warning (alias)"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-warning (alias)" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="wheelchair"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-wheelchair" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="wheelchair-alt"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-wheelchair-alt" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="wifi"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-wifi" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="window-close"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-window-close" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="window-close-o"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-window-close-o" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="window-maximize"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-window-maximize" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="window-minimize"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-window-minimize" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="window-restore"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-window-restore" aria-hidden="true"></i></span></label></li>
            <li class="icon-width"><label><input name="icon" type="radio" value="wrench"><span class="lbl">&nbsp;&nbsp;<i class="fa fa-wrench" aria-hidden="true"></i></span></label></li>
        </ul>
    </div>
    <div class="box-foot text-right">
        <a class="btn btn-xs btn-primary" id="selectBtn"><i class="ace-icon fa fa-floppy-o"></i>&nbsp;选择</a>
        <a class="btn btn-xs" id="clearBtn"><i class="ace-icon fa fa-eraser"></i>&nbsp;清除</a>
        <a class="btn btn-xs" id="closeBtn"><i class="ace-icon fa fa-times"></i>&nbsp;关闭</a>
    </div>
</div>
<script>
    $(function () {
        $(".box-content").css("height", $(window).height() - 100);
        //初始化数据
        // initData();
        //初始化组件
        initICheck();

        $('#selectBtn').on('click', function () {
            var fa = $("input[name=icon]:checked").val();
            parent.$(".main-iframe").contents().find("#icon").val("fa-" + fa);
            parent.$(".main-iframe").contents().find("#icon-i").html("<i class='fa fa-" + fa + "'></i>");
            top.layer.closeAll();
        });
        // 清除按钮
        $('#clearBtn').on('click', function () {
            parent.$(".main-iframe").contents().find("#icon").val("");
            parent.$(".main-iframe").contents().find("#icon-i").html("");
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
