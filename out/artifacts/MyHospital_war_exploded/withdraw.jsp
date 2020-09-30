<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>医疗系统</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="vendor/bootstrap-table-master/dist/bootstrap-table.min.css" rel="stylesheet" type="text/css"/>

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/bootstrap-table-master/dist/bootstrap-table.min.js"></script>
    <script src="vendor/bootstrap-table-master/dist/locale/bootstrap-table-zh-CN.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <div class="sidebar-brand d-flex align-items-center justify-content-center">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">云医疗系统</div>
        </div>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">


        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            主要功能
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item active">
            <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
                <i class="fas fa-fw fa-cog"></i>
                <span>挂号收费</span>
            </a>
            <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">挂号窗口:</h6>
                    <a class="collapse-item" href="registration.jsp">现场挂号</a>
                    <a class="collapse-item active" href="withdraw.jsp">退号</a>
                    <div class="collapse-divider"></div>
                    <h6 class="collapse-header">收费窗口:</h6>
                    <a class="collapse-item" href="payment.jsp">收费</a>
                </div>
            </div>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <%@include file="header.jsp"%>

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-4 text-gray-800">退号</h1>
                <h5 class="h5 mb-4 text-gray-800">患者信息查询</h5>
                <form>
                    <div class="form-group row" style="height: 50px">
                        <label for="cid" class="col-form-label">病历号</label>
                        <div class="col-md-2">
                            <input type="text" class="form-control" id="cid">
                        </div>
                        <div class="col">
                            <button type="button" id="searchButton" class="btn btn-primary">搜索</button>
                        </div>

                        <div class="toast offset-md-7" role="alert" aria-live="assertive" aria-atomic="true">
                            <div class="toast-header">
                                <strong class="mr-auto">提示信息</strong>
                                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="toast-body alert-success">
                                查询成功
                            </div>
                        </div>
                    </div>

                    <h5 class="h5 mb-4 text-gray-800">患者信息确认</h5>

                    <div class="form-group row">
                        <label for="name" class="col-md-1 col-form-label">姓名</label>
                        <div class="col-md-2">
                            <input type="text" readonly class="form-control" id="name">
                        </div>

                        <label for="idCard" class="col-md-1 col-form-label">身份证号</label>
                        <div class="col-md-2">
                            <input type="text" readonly class="form-control" id="idCard">
                        </div>

                        <label for="address" class="col-md-1 col-form-label">家庭住址</label>
                        <div class="col-md-2">
                            <input type="text" readonly class="form-control" id="address">
                        </div>
                    </div>
                </form>
                <h5 class="h5 mb-4 text-gray-800">患者挂号信息</h5>

                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">患者挂号信息表</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="registrationTable" width="100%" cellspacing="0">
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; 云医疗系统 2020</span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>


<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<script>

    function operateFormatter(value, row, index) {
        return [
            '<button id="backRegBtn" type="button" class="btn btn-warning">退号</button>',
        ].join('');
    }

    //点击事件
    window.operateEvent = {
        'click #backRegBtn': function (e, value, row, index) {
            if (row.regStatus=='已诊'){
                alert("已诊患者无法退号！");
            }else if(row.regStatus=='已退号'){
                alert("已退号患者无法二次退号！");
            }else if(row.regStatus=='待诊'){
                if (confirm("您确定要退号吗？")){
                    $.get("withdraw/doWithdrawing",{"regId":row.regId},function (data) {
                        if (JSON.parse(data).flag == 1){
                            alert("退号成功！");
                            //刷新表格
                            $("#registrationTable").bootstrapTable('refresh',{url:'withdraw/searchRegistrationInfo?chId='+row.chId});
                        }else{
                            alert("退号失败，请联系管理员！");
                        }
                    });
                }
            }
        }
    }

    $(function () {

        //初始化挂号列表
        $("#registrationTable").bootstrapTable({
            pageNumber:1,
            pagination:true,
            sidePagination:'client',
            pageSize:4,
            method:'get',
            cache:false,
            columns:[
                {
                    field: 'chId',
                    title: '病历号'
                },
                {
                    field: 'regId',
                    title: '挂号id'
                },
                {
                    field: 'chName',
                    title: '姓名'
                },
                {
                    field: 'idCard',
                    title: '身份证号'
                },
                {
                    field: 'regDate',
                    title: '挂号日期'
                },
                {
                    field: 'daTime',
                    title: '挂号午别'
                },
                {
                    field: 'deptName',
                    title: '看诊科室'
                },
                {
                    field: 'regStatus',
                    title: '挂号状态'
                },
                {
                    field: 'operate',
                    title: '操作',
                    events: operateEvent,
                    formatter: operateFormatter
                }
            ]
        });

        //查询患者病历号对应的患者信息
        $("#searchButton").click(function () {
            var chId = $("#cid").val();
            var regExpChId = /^\d{1,}$/;
            var flag = regExpChId.test(chId);

            if (flag){
                $.get("payment/searchCaseHistory",{"chId":chId},function (data) {
                    if ("" == data){
                        $(".toast-body").html("请输入正确的病历号！");
                        $("#name").val(null);
                        $("#idCard").val(null);
                        $("#address").val(null);
                    }else{
                        $("#name").val(data.chName);
                        $("#idCard").val(data.idCard);
                        $("#address").val(data.chAddress);
                        $(".toast-body").html("查询成功！");
                        $("#registrationTable").bootstrapTable('refresh',{url:'withdraw/searchRegistrationInfo?chId='+data.chId});
                    }
                })
            }else{
                $(".toast-body").html("请输入正确的病历号！");
                $("#name").val(null);
                $("#idCard").val(null);
                $("#address").val(null);
            }

            $(".toast").toast("show");

        });
    });
</script>

</body>

</html>


