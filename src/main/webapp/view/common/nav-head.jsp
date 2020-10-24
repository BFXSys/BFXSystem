<%--
  Created by IntelliJ IDEA.
  User: 王凯
  Date: 2020/10/17
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!-- Main Navbar -->
<nav class="navbar align-items-stretch navbar-light flex-md-nowrap p-0">
    <form action="#" class="main-navbar__search w-100 d-none d-md-flex d-lg-flex">
        <div class="input-group input-group-seamless ml-3">
            <div class="input-group-prepend">
                <div class="input-group-text">
                    <i class="fas fa-search"></i>
                </div>
            </div>
            <input class="navbar-search form-control" type="text" placeholder="Search for something..." aria-label="查询"> </div>
    </form>
    <ul class="navbar-nav border-left flex-row ">
        <li class="nav-item border-right dropdown notifications">
            <a class="nav-link nav-link-icon text-center" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <div class="nav-link-icon__wrapper">
                    <i class="material-icons">&#xE7F4;</i>
                    <span class="badge badge-pill badge-danger"></span><%--提示消息数量--%>
                </div>
            </a>
            <div class="dropdown-menu dropdown-menu-small" aria-labelledby="dropdownMenuLink">
                <a class="dropdown-item" href="#">
                    <div class="notification__icon-wrapper">
                        <div class="notification__icon">
                            <i class="material-icons">&#xE6E1;</i>
                        </div>
                    </div>
                    <div class="notification__content">
                        <span class="notification__category">Analytics</span>
                        <p>Your website’s active users count increased by
                            <span class="text-success text-semibold">28%</span> in the last week. Great job!</p>
                    </div>
                </a>
                <a class="dropdown-item" href="#">
                    <div class="notification__icon-wrapper">
                        <div class="notification__icon">
                            <i class="material-icons">&#xE8D1;</i>
                        </div>
                    </div>
                    <div class="notification__content">
                        <span class="notification__category">Sales</span>
                        <p>Last week your store’s sales count decreased by
                            <span class="text-danger text-semibold">5.52%</span>. It could have been worse!</p>
                    </div>
                </a>
                <a class="dropdown-item notification__all text-center" href="#"> View all Notifications </a>
            </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-nowrap px-3" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                <img class="user-avatar rounded-circle mr-2" src="${ctx}/resources/images/avatars/4.jpg" alt="User Avatar">
                <span class="d-none d-md-inline-block"> ${workerName} </span>
            </a>
            <div class="dropdown-menu dropdown-menu-small">
                <a class="dropdown-item" href="/userCenter/toPersonInfo">
                    <i class="material-icons">&#xE7FD;</i>个人信息</a>
                <a class="dropdown-item" href="/userCenter/toPicture">
                    <i class="material-icons">vertical_split</i>图片展示</a>
                <a class="dropdown-item" href="/userCenter/toAddEmail">
                    <i class="material-icons">note_add</i>添加新邮件</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item text-danger" href="/userCenter/toLoginUser">
                    <i class="material-icons text-danger">&#xE879;</i> 登出 </a>
            </div>
        </li>
    </ul>
    <nav class="nav">
        <a href="#" class="nav-link nav-link-icon toggle-sidebar d-md-inline d-lg-none text-center border-left" data-toggle="collapse" data-target=".header-navbar" aria-expanded="false" aria-controls="header-navbar">
            <i class="material-icons">&#xE5D2;</i>
        </a>
    </nav>
</nav>
