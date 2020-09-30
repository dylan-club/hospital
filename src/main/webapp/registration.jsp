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
    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

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
                    <a class="collapse-item active" href="registration.jsp">现场挂号</a>
                    <a class="collapse-item" href="withdraw.jsp">退号</a>
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
                <h1 class="h3 mb-4 text-gray-800">现场挂号</h1>

                <form id="registrationForm" class="needs-validation">
                    <div class="form-group row">
                        <label for="pid" class="col-form-label">发票号</label>
                        <div class="col-md-2">
                            <input id="pid" type="text" name="payId" class="form-control" required/>
                            <div class="invalid-feedback">
                                发票号不能为空
                            </div>
                        </div>
                        <div>
                            <button type="submit" id="submitBtn" class="btn btn-primary">挂号</button>
                            <a id="initRegistrationBtn" class="btn btn-success text-white">
                                <i class="fa fa-history"></i>
                                <span>初始化挂号信息</span>
                            </a>
                        </div>

                        <div class="toast offset-md-7" role="alert" aria-live="assertive" aria-atomic="true">
                            <div class="toast-header">
                                <strong class="mr-auto">提示信息</strong>
                                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="toast-body alert-success">
                                挂号成功
                            </div>
                        </div>

                    </div>

                    <h3 class="h5 mb-4 text-gray-800">挂号信息</h3>

                    <div class="row">
                        <div class="col-md-3 px-md-5">
                            <label for="cid">病历号</label>
                            <input id="cid" type="text" name="chId" class="form-control" required/>
                            <div class="invalid-feedback">
                                病历号不能为空，必须是数字
                            </div>
                        </div>
                        <div class="col-md-3 px-md-5">
                            <label for="name">姓名</label>
                            <input id="name" type="text" name="chName" class="form-control" required/>
                            <div class="invalid-feedback">
                                姓名不能为空
                            </div>
                        </div>
                        <div class="col-md-3 px-md-5">
                            <label for="gender">性别</label>
                            <select class="form-control" name="chGender" id="gender">
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select>
                        </div>
                        <div class="col-md-3 px-md-5">
                            <label for="age">年龄</label>
                            <input id="age" type="text" name="chAge" class="form-control" required/>
                            <div class="invalid-feedback">
                                年龄不能为空
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3 px-md-5">
                            <label for="birthday">出生日期</label>
                            <input id="birthday" name="chBirthday" type="date" class="form-control"/>
                        </div>
                        <div class="col-md-3 px-md-5">
                            <label for="idCard">身份证号</label>
                            <input id="idCard" name="idCard" type="text" class="form-control" placeholder="请输入身份证号"/>
                        </div>
                        <div class="col-md-3 px-md-5">
                            <label for="address">家庭住址</label>
                            <input id="address" name="chAddress" type="text" class="form-control" placeholder="请输入家庭住址"/>
                        </div>
                        <div class="col-md-3 px-md-5">
                            <label for="regDate">看诊日期</label>
                            <input id="regDate" name="regDate" type="date" class="form-control" required/>
                            <div class="invalid-feedback">
                                看诊日期不能为空
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 px-md-5">
                            <label for="daTime">午别</label>
                            <select class="form-control" name="daTime" id="daTime">
                                <option value="上午">上午</option>
                                <option value="下午">下午</option>
                            </select>
                        </div>
                        <div class="col-md-3 px-md-5">
                            <label for="deptName">挂号科室</label>
                            <select class="form-control" id="deptName" name="deptId" required>
                                <option value="">请选择科室</option>
                            </select>
                            <div class="invalid-feedback">
                                挂号科室不能为空
                            </div>
                        </div>
                        <div class="col-md-3 px-md-5">
                            <label for="levelNames">号别</label>
                            <select class="form-control" id="levelNames" name="levelId" required>
                                <option value="">请选择号别</option>
                            </select>
                            <div class="invalid-feedback">
                                号别不能为空
                            </div>
                        </div>
                        <div class="col-md-3 px-md-5">
                            <label for="docNames">看诊医生</label>
                            <select class="form-control" id="docNames" name="docId" required>
                            </select>
                            <div class="invalid-feedback">
                                请选择医生
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 px-md-5">
                            <label for="isPaper">应收金额</label>
                            <input id="price" type="text" class="form-control" name="payTotal" required/>
                            <div class="invalid-feedback">
                                应收金额不能为空
                            </div>
                        </div>
                        <div class="col-md-3 px-md-5">
                            <label for="isPaper">病历本要否</label>
                            <select class="form-control" name="regIsPaper" id="isPaper">
                                <option value="true">是</option>
                                <option value="false">否</option>
                            </select>
                        </div>
                    </div>
                </form>

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

    //初始化挂号信息
    function ajaxInitRegistration(){
        $.get("registration/init",function (data) {
            //初始化病历id
            $("#cid").val(data.cid);

            //初始化发票号
            $("#pid").val(data.payId);

            //初始化科室列表
            for (var i = 0; i < data.deptNames.length; i++) {
                $("#deptName").append("<option value='"+data.deptNames[i].deptId+"'>"+data.deptNames[i].deptName+"</option>");
            }

            //初始化号别
            for (var i = 0; i < data.regLevelNames.length; i++) {
                $("#levelNames").append("<option value='"+data.regLevelNames[i].levelId+"'>"+data.regLevelNames[i].levelName+"</option>");
            }
        });
    }

    $(function () {

        ajaxInitRegistration();


        //刷新按钮
        $("#initRegistrationBtn").click(function () {
            $("#registrationForm")[0].reset();
            $.get("registration/init",function (data) {
                //初始化病历id
                $("#cid").val(data.cid);

                //初始化发票号
                $("#pid").val(data.payId);

            });
        });

        $("#deptName").change(function () {
            var deptId = $(this).children('option:selected').val();
            //初始化医生信息
            // if (deptId!='请选择科室'){
            //     $.get("registration/findDoctors",{"deptId":deptId},function (data) {
            //         var options = "";
            //         for (var i = 0; i < data.length; i++) {
            //             options += "<option value='"+data[i].docId+"'>"+data[i].docName+"</option>";
            //         }
            //         $("#docNames").html(options);
            //     });
            // }else{
            //     $("#docNames").html(null);
            // }
            //重置默认状态
            $("#levelNames").find("option").eq(0).prop("selected",true);
            $("#price").val(null);
            $("#docNames").html(null);
        });

        //初始化应收金额和改变医生数量
        $("#levelNames").change(function () {
            var levelId = $(this).children('option:selected').val();
            //初始化医生信息
            if (levelId!='请选择号别'){
                $.get("registration/findRegPrice",{"levelId":levelId},function (data) {
                    $("#price").val(data.levelPrice);
                });
                var deptId = $("#deptName").children('option:selected').val();
                //如果科室id也不为空，查找对应科室和号别的医生
                if (deptId!=''){
                    $.get("registration/findDoctorsWithLevel",{
                        "levelId":levelId,
                        "deptId":deptId
                    },function (data) {
                        var options = "";
                        for (var i = 0; i < data.length; i++) {
                            options += "<option value='"+data[i].docId+"'>"+data[i].docName+"</option>";
                        }
                        $("#docNames").html(options);
                    })
                }
            }else{
                $("#price").val(null);
            }
        });

        //查询患者基本信息
        $("#cid").blur(function () {
            var chId = $("#cid").val();
            var regId = /^\d{1,}$/;
            var flag = regId.test(chId);
            if (flag){
                $.get("registration/findPatient",{"chId":chId},function (data) {
                    if (data!=""){
                        //姓名
                        $("#name").val(data.chName);
                        //性别
                        $("#gender").find("option[text='"+data.chGender+"']").attr("selected",true);
                        //年龄
                        $("#age").val(data.chAge);
                        //出生日期
                        $("#birthday").val(data.chBirthday);
                        //身份证号
                        $("#idCard").val(data.idCard);
                        //家庭住址
                        $("#address").val(data.chAddress);
                    }else{
                        //姓名
                        $("#name").val(null);
                        //年龄
                        $("#age").val(null);
                        //出生日期
                        $("#birthday").val(null);
                        //身份证号
                        $("#idCard").val(null);
                        //家庭住址
                        $("#address").val(null);
                    }
                });
            }else {
                $("#registrationForm")[0].reset();
            }
        });

        //提交表单
        $("#registrationForm").submit(function () {

            $.post("registration/register",$(this).serialize(),function (data) {
                if (data.flag){
                    $(".toast").toast("show");
                }
            });

            return false;
        });
    });

</script>

</body>

</html>

