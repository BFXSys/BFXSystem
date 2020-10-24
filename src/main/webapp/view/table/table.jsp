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
                        <span class="text-uppercase page-subtitle">User Data <Table></Table></span>
                        <h3 class="page-title">用户数据表</h3>
                    </div>
                </div>
                <!-- End Page Header -->
                <!-- Default Light Table -->
                <div class="row">
                    <div class="col">
                        <div class="card card-small mb-4">
                            <div class="card-header border-bottom">
                                <h6 class="m-0">全部用户</h6>
                            </div>
                            <div class="card-body p-0 pb-3 text-center tablePd">
                                <table class="table table-bordered table-hover mb-0" id="queryAllUserInfo"></table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Default Light Table -->
            </div>
            <%@ include file="../common/nav-footer.jsp"%>
        </main>
    </div>
</div>

<%@include file="../common/index-js-common.jsp"%>
<script>
    $(document).ready(function (){
        initTable();
    })
    function initTable(){
        $("#queryAllUserInfo").bootstrapTable({
            url: "/userCenter/queryAllUserInfo",
            contentType: "application/x-www-form-urlencoded",
            cache: false,
            toolbar: 'queryAllUserInfo',
            pagination: true,
            sortable: true,
            sortOrder: 'asc',
            pageNumber: 1,
            pageSize: 10,
            pageList: [10,25,50,100],
            queryParamsType: '',
            sidePagination: 'server',
            search: true,
            strictSearch: true,
            showRefresh: true,
            minimumCountColumns: 2,
            clickToSelect: true,
            columns: [{
                field: 'id',
                title: '序号',
                align: 'center'
            },{
                field: 'jobNum',
                title: '工号'
            },{
                field: 'workerName',
                title: '姓名',
                align: 'center'
            },{
                field: 'sex',
                title: '性别',
                align: 'center'
            },{
                field: 'phone',
                title: '电话',
                align: 'center'
            },{
                field: 'email',
                title: '邮箱',
                align: 'center'
            },{
                field: 'education',
                title: '学历',
                align: 'center'
            },{
                field: 'userNation',
                title: '民族',
                align: 'center'
            },{
                field: 'position',
                title: '职位',
                align: 'center'
            },{
                field: 'entryTime',
                title: '入职时间',
                align: 'center'
            },{
                field: 'workType',
                title: '工作类型',
                align: 'center'
            },{
                field: 'id',
                title: '操作',
                align: 'center',
                formatter:function (value,row,index){
                    var result = "";
                    result += '<a href="#" class="btn btn-info" title="查看">查看</a>';
                    result += '<a href="#" class="btn btn-success" title="编辑">编辑</a>';
                    result += '<a href="#" class="btn btn-danger" title="删除">删除</a>';
                    return result;
                }
            }]
        });
    }

    //操作栏的格式化
    function actionFormatter(value, row, index) {

        return [
            ,
            '<a href=\'#\' class=\'btn btn-xs blue\' title=\'编辑\'></a>',
            '<a href=\'#\' class=\'btn btn-xs red\' title=\'删除\'></a>'
        ].join("")
    }

    // function selBycondition(){
    //     var url = "/test/getPage?name=aaa";
    //     $("#tb_departments").bootstrapTable('refresh',{'url':url});
    // }
</script>
</body>
</html>
