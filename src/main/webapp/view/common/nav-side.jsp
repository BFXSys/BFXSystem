<%--
  Created by IntelliJ IDEA.
  User: 王凯
  Date: 2020/10/17
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!-- Main Sidebar -->
<aside class="main-sidebar col-12 col-md-3 col-lg-2 px-0">
    <div class="main-navbar">
        <nav class="navbar align-items-stretch navbar-light bg-white flex-md-nowrap border-bottom p-0">
            <a class="navbar-brand w-100 mr-0" href="#" style="line-height: 25px;">
                <div class="d-table m-auto">
                    <img id="main-logo" class="d-inline-block align-top mr-1" style="max-width: 25px;" src="${ctx}/resources/images/shards-dashboards-logo.svg" alt="中研智达">
                    <span class="d-none d-md-inline ml-1">中研智达</span>
                </div>
            </a>
            <a class="toggle-sidebar d-sm-inline d-md-none d-lg-none">
                <i class="material-icons">&#xE5C4;</i>
            </a>
        </nav>
    </div>
    <form action="#" class="main-sidebar__search w-100 border-right d-sm-flex d-md-none d-lg-none">
        <div class="input-group input-group-seamless ml-3">
            <div class="input-group-prepend">
                <div class="input-group-text">
                    <i class="fas fa-search"></i>
                </div>
            </div>
            <input class="navbar-search form-control" type="text" placeholder="Search for something..." aria-label="查询"> </div>
    </form>
    <div class="nav-wrapper">
        <ul class="nav flex-column" id="sideNav">
            <li class="nav-item clicksidenav">
                <a class="nav-link" id="toIndex" href="/userCenter/toIndex">
                    <i class="material-icons">edit</i>
                    <span>图表可视化</span>
                </a>
            </li>
            <li class="nav-item clicksidenav">
                <a class="nav-link" href="/userCenter/toPicture">
                    <i class="material-icons">vertical_split</i>
                    <span>图片展示</span>
                </a>
            </li>
            <li class="nav-item clicksidenav">
                <a class="nav-link" href="/userCenter/toAddEmail">
                    <i class="material-icons">note_add</i>
                    <span>添加新邮件</span>
                </a>
            </li>
            <li class="nav-item clicksidenav">
                <a class="nav-link " href="/userCenter/toForm">
                    <i class="material-icons">view_module</i>
                    <span>表单和组件</span>
                </a>
            </li>
            <li class="nav-item clicksidenav">
                <a class="nav-link" href="/userCenter/toTable">
                    <i class="material-icons">table_chart</i>
                    <span>人员管理</span>
                </a>
            </li>
            <li class="nav-item clicksidenav">
                <a class="nav-link " href="javascript:void(0)">
                    <i class="material-icons">person</i>
                    <span>用户信息</span>
                </a>
            </li>
            <li class="nav-item clicksidenav">
                <a class="nav-link " href="javascript:void(0)">
                    <i class="material-icons">error</i>
                    <span>错误</span>
                </a>
            </li>
        </ul>
    </div>
</aside>