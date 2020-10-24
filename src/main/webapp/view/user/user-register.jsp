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
    <title>中研智达信息科技</title>
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
        <div class="registerBody">
            <form action="/userCenter/userRegister" id="registerverificate" method="post">
            <div class="row float-left">
                <div class="card card-body">
                    <div class="form-group">
                        <label>姓名</label><span id="workerNameTitle"></span>
                        <input type="text" name="workerName" id="workerName" required="required" class="form-control" placeholder="请输入姓名"/>
                    </div>
                    <div class="form-group">
                        <label>性别</label>
                        <div style="height: 50%;">
                            <input type="radio" required="required" value="男" name="sex"/> 男
                            <input type="radio" required="required" value="女" name="sex"/> 女
                        </div>
                    </div>
                    <div class="form-group">
                        <label>民族</label>
                        <input type="text" id="userNation" required="required" name="userNation" class="form-control" placeholder="请输入民族"/>
                    </div>
                    <div class="form-group">
                        <label>学历</label>
                        <select name="education" id="education" class="form-control">
                            <option value="博士">博士</option>
                            <option value="研究生">研究生</option>
                            <option value="本科">本科</option>
                            <option value="大专">大专</option>
                            <option value="高中">高中</option>
                            <option value="中专">中专</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>身份证号</label>
                        <input type="text" id="identityNum" required="required" name="identityNum" class="form-control" placeholder="请输入身份证号"/>
                    </div>
                    <div class="form-group">
                        <label>宿舍号</label>
                        <input type="text" id="dormRoomNum" required="required" name="dormRoomNum" class="form-control" placeholder="请输入宿舍号"/>
                    </div>
                    <div class="form-group">
                        <label>岗位名称</label>
                        <select name="position" id="position" class="form-control">
                            <option value="数据标注岗">数据标注岗</option>
                            <option value="数据审核岗">数据审核岗</option>
                            <option value="游戏拨测岗">游戏拨测岗</option>
                            <option value="项目组长">项目组长</option>
                            <option value="技术经理">技术经理</option>
                            <option value="项目经理">项目经理</option>
                            <option value="管理层">管理层</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row float-right">
                <div class="card card-body">
                    <div class="form-group">
                        <label>电话</label>
                        <input type="text" id="phone" required="required" name="phone" class="form-control" placeholder="请输入电话号"/>
                    </div>
                    <div class="form-group">
                        <label>邮箱</label>
                        <input type="text" id="email" required="required" name="email" class="form-control" placeholder="请输入邮箱"/>
                    </div>
                    <div class="form-group">
                        <label>户籍地</label>
                        <input type="text" id="domicile" required="required" name="domicile" class="form-control" placeholder="请输入户籍地"/>
                    </div>
                    <div class="form-group">
                        <label>银行卡号</label>
                        <input type="text" id="bankNum" required="required" name="bankNum" class="form-control" placeholder="请输入银行卡号"/>
                    </div>
                    <div class="form-group">
                        <label>工作类型</label>
                        <select class="form-control" id="workType" name="workType">
                            <option value="兼职">兼职</option>
                            <option value="全职">全职</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>密码</label>
                        <input type="password" id="userPassword" required="required" name="userPassword" class="form-control" placeholder="请输入个人密码"/>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="注册" class="btn btn-success">
                        <div class="form-group">
                            <a class="float-right" href="/userCenter/toLoginUser">已有账号？去登录</a>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>

</div>


<%@ include file="user-common/user-js-common.jsp"%>
</body>
</html>
