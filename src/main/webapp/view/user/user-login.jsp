<%--
  Created by IntelliJ IDEA.
  User: 王凯
  Date: 2020/10/14
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<html>
<head>
    <title>中研智达OA系统</title>
    <%@ include file="user-common/user-css-common.jsp"%>
</head>
<body>

<div class="nav">
    <div class="container center-pill">
        <div style="color: cornflowerblue;">
            <h1>中研智达</h1>
        </div>
    </div>
</div>

<div class="loginmain">
    <div class="container">
        <div class="row float-right">
            <div class="card card-body login">
                <form action="/userCenter/usrLogin" method="post">
                    <div class="form-group">
                        <label>用户名</label>
                        <input id="loginname" required="required" type="text" name="jobNum" class="form-control" placeholder="请输入工号"/>
                    </div>
                    <div class="form-group">
                        <label>密码</label>
                        <input id="password" required="required" type="password" name="userPassword" class="form-control" placeholder="请输入密码"/>
                    </div>
                    <%--  滑动验证
                    <div class="form-group">
                        <div class="outer">
                            <div class="filter-box"></div>
                            <span>滑动解锁</span>
                            <div class="inner">&gt;&gt;</div>
                        </div>
                    </div>--%>
                    <div class="form-group">
                        <input id="submitbutton" type="submit" class="btn btn-block btn-success"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%@ include file="user-common/user-js-common.jsp"%>
</body>
</html>
