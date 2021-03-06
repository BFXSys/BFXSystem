<%--
  Created by IntelliJ IDEA.
  User: 王凯
  Date: 2020/10/19
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>中研智达</title>
    <%@ include file="../common/index-css-common.jsp"%>
</head>
<body class="h-100">
<div class="container-fluid">
    <div class="row">
        <!-- Main Sidebar -->
        <%@include file="../common/nav-side.jsp"%>
        <!-- End Main Sidebar -->
        <main class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">
            <div class="main-navbar sticky-top bg-white">
                <!-- Main Navbar -->
                <%@ include file="../common/nav-head.jsp"%>
            </div>
            <div class="main-content-container container-fluid px-4">
                <!-- Page Header -->
                <div class="page-header row no-gutters py-4">
                    <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
                        <span class="text-uppercase page-subtitle">Blogs-Post</span>
                        <h3 class="page-title">Form</h3>
                    </div>
                </div>
                <!-- End Page Header -->
                <div class="row"></div>
            </div>
            <%@ include file="../common/nav-footer.jsp"%>
        </main>
    </div>
</div>

<%@include file="../common/index-js-common.jsp"%>
</body>
</html>
