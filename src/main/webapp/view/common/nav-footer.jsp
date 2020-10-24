<%--
  Created by IntelliJ IDEA.
  User: 王凯
  Date: 2020/10/17
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<%--MainFooter--%>
<footer class="main-footer d-flex p-2 px-3 bg-white border-top">
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" href="#">首页</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">服务</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">关于</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">项目</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">博客</a>
        </li>
    </ul>
    <span class="copyright ml-auto my-auto mr-2">Copyright &copy; 2020.Company name All rights reserved.</span>
</footer>