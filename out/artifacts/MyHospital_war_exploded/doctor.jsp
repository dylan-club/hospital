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
    <link href="vendor/bootstrap-table-master/dist/bootstrap-table.min.css" rel="stylesheet" />

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
                <span>医生工作站</span>
            </a>
            <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a id="clickHome-tab" class="collapse-item">医生看诊</a>
                    <a id="clickProfile-tab" class="collapse-item">医生开药</a>
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
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-4 text-gray-800">医生门诊</h1>

                <div class="row">
                    <div class="shadow border col-md-3 mx-lg-3" style="padding: 20px; height:min-content;">
                        <div class="row border">
                            <span class="badge badge-primary col-md-3" style="height: min-content;margin-top: 5px">患者选择:</span>
                            <div style="margin-left:auto">
                                <a id="refreshBtn" class="btn btn-sm btn-success text-white" style="height: 28px">
                                    <i class="fa fa-history"></i>
                                    <span>刷新</span>
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="table-responsive">
                                <p class="h5 text-gray-800 alert-primary" style="margin-top: 5px">待诊患者:</p>
                                <table id="waitPatient"></table>
                            </div>
                        </div>
                        <div class="row my-4">
                            <div class="table-responsive">
                                <p class="h5 text-gray-800 alert-primary" style="margin-top: 5px">已诊患者:</p>
                                <table id="diagPatient"></table>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-8 border shadow" style="height: min-content">
                        <div class="row border" style="margin: 10px; height: 30px">
                            <span class="badge badge-primary col" style="height: min-content;margin-top: 5px">患者信息栏:</span>
                            <p class="col-md-10" id="patientInfo">
                            </p>
                            <div style="margin-left: auto">
                                <button id="removePatientBtn" class="btn-sm btn-info" style="height: 28px;">诊毕</button>
                            </div>
                        </div>
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#diagnosis" role="tab" aria-controls="home" aria-selected="true">医生看诊</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#prescription" role="tab" aria-controls="profile" aria-selected="false">医生开药</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <%--医生看诊界面--%>
                            <div class="tab-pane fade show active" id="diagnosis" role="tabpanel" aria-labelledby="home-tab" style="padding: 20px">
                                <span class="badge badge-primary">病史内容:</span>

                                <form id="diagnosisForm">
                                    <div class="form-group row">
                                        <label for="diagDescription" class="col-sm-1 col-form-label">主诉:</label>
                                        <div class="col-sm-11">
                                            <textarea class="form-control" id="diagDescription" name="diagDescription" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="diagExistence" class="col-sm-1 col-form-label">现病史:</label>
                                        <div class="col-sm-11">
                                            <textarea class="form-control" id="diagExistence" name="diagExistence" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="diagHistory" class="col-sm-1 col-form-label">过往病史:</label>
                                        <div class="col-sm-11">
                                            <textarea class="form-control" id="diagHistory" name="diagHistory" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="diagAllergy" class="col-sm-1 col-form-label">过敏史:</label>
                                        <div class="col-sm-11">
                                            <textarea class="form-control" id="diagAllergy" name="diagAllergy" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="diagResult" class="col-sm-1 col-form-label">诊断结果:</label>
                                        <div class="col-sm-11">
                                            <textarea class="form-control" id="diagResult" name="diagResult" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="diagDis" class="col-md-1 col-form-label">疾病判定:</label>
                                        <div class="col-md-4 my-2">
                                            <select class="form-control" id="diagDis" name="disId" required>
                                                <option value="">请选择疾病</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group" style="text-align: center">
                                        <button type="submit" class="btn btn-primary"
                                                data-container="body" data-toggle="popover" data-placement="bottom"
                                                data-content="保存">保存诊断书</button>
                                        <button type="reset" class="btn btn-warning">清空</button>
                                    </div>
                                </form>
                            </div>
                            <%--医生开药界面--%>
                            <div class="tab-pane fade" id="prescription" role="tabpanel" aria-labelledby="profile-tab" style="padding: 20px">
                                <div class="row">
                                    <span class="badge badge-primary" style="margin: 10px">药品明细列表:</span>
                                    <div class="table-responsive border-left-success">
                                        <table id="templateList"></table>
                                    </div>
                                </div>

                                <div class="row my-4">
                                    <span class="badge badge-primary" style="margin: 10px">处方模板列表:</span>
                                    <div class="table-responsive border-left-primary">
                                        <table id="template"></table>
                                    </div>
                                    <div class="row my-3 mx-3">
                                        <button type="button" id="doPrescription" class="btn btn-primary">开立处方</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <br/>
                <br/>

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

    function ajaxSessionPatient(row){
        //发送ajax请求，将挂号信息存入session
        $.get("diagnosis/startDiagnosing",{"regId":row.regId},function (data) {
            if (data.flag===true){
                var info = '病历号:'+row.chId+'  患者姓名:'+row.chName+'  年龄:'+row.chAge;
                //设置提示信息栏
                $("#patientInfo").html(info);
            }else{
                alert("患者诊断中，请耐心等候！");
            }
        });
    }

    $(function () {
        //切换到诊断书界面
        $("#clickHome-tab").click(function () {
            $("#home-tab").click();
        });

        //切换到开药界面
        $("#clickProfile-tab").click(function () {
            $("#profile-tab").click();
        });

        //刷新待诊和已诊列表
        $("#refreshBtn").click(function () {
            $("#waitPatient").bootstrapTable('refresh');
            $("#diagPatient").bootstrapTable('refresh');
        });

        //初始化当前科室的疾病列表
        $.get("diagnosis/initDiseases",function (data) {
            for (var i = 0; i < data.length; i++) {
                $("#diagDis").append("<option value='"+data[i].disId+"'>"+data[i].disName+"</option>");
            }
        });

        //提交诊断书表单
        $("#diagnosisForm").submit(function () {
            $.post("diagnosis/doDiagnosing",$(this).serialize(),function (data) {
                //给出提示信息
                if (data.flag == 1){
                    alert("当前没有患者正在诊断中，无法开立诊断书！");
                }else if (data.flag == 2){
                    alert("该挂号已被诊断，无法重复开立诊断书！");
                }else if (data.flag == 3){
                    alert("开立诊断书成功!");
                    $("#waitPatient").bootstrapTable('refresh');
                    $("#diagPatient").bootstrapTable('refresh');
                }
            })


            return false;
        });

        $("#waitPatient").bootstrapTable({
            url:'diagnosis/getPatients?regStatus=待诊',
            method:'get',
            cache:false,
            onClickRow:function (row,$element) {
                $("#waitPatient").find("tbody").find("tr").each(function () {
                    $(this).removeClass('alert-primary');
                });
                $element.addClass('alert-primary');

                ajaxSessionPatient(row);

            },
            columns:[{
                field:'chId',
                title:'病历号'
            },{
                field:'regId',
                title:'挂号id'
            },{
                field:'chName',
                title:'姓名'
            },{
                field:'chAge',
                title:'年龄'
            }],

        });

        $("#diagPatient").bootstrapTable({
            url:'diagnosis/getPatients?regStatus=已诊',
            method:'get',
            cache:false,
            onClickRow:function (row,$element) {
                $("#diagPatient").find("tbody").find("tr").each(function () {
                    $(this).removeClass('alert-primary');
                });
                $element.addClass('alert-primary');

                ajaxSessionPatient(row);
            },
            columns:[{
                field:'chId',
                title:'病历号'
            },{
                field:'regId',
                title:'挂号id'
            },{
                field:'chName',
                title:'姓名'
            },{
                field:'chAge',
                title:'年龄'
            }],
        });

        $("#template").bootstrapTable({
            url:'prescription/getTemplate',
            method:'get',
            cache:false,
            pageNumber:1,
            pagination:true,
            sidePagination:'client',
            pageSize:3,
            onClickRow:function (row,$element) {
                //发送异步请求，更新药品明细表的数据
                $("#templateList").bootstrapTable('refresh',{url:'prescription/getTemplateList?temId='+row.temId})
            },
            columns:[{
                checkbox:true,
            },{
                field:'temId',
                title:'模板id'
            },{
                field:'temName',
                title:'处方模板名称'
            },{
                field:'deptName',
                title:'使用范围'
            }]
        });

        $("#templateList").bootstrapTable({
            pageNumber:1, //默认显示第一页
            pagination:true, //分页功能开启
            sidePagination:'client', //客户端分页
            pageSize:3, //每页显示条数
            method:'get',
            cache:false,
            columns:[{
                field:'mdName',
                title:'药品名称'
            },{
                field:'tlType',
                title:'规格'
            },{
                field:'tlPrice',
                title:'单价'
            },{
                field:'tlAmount',
                title:'数量'
            }]
        });

        //提交开药数据
        $("#doPrescription").click(function () {
            //获取处方模板的选中项
            var templateList = $("#template").bootstrapTable('getSelections');
            //如果处方模板未选中，提示医生选择一个处方模板
            if (templateList.length == 0){
                alert("请选择一个模板再开药！");
            }else{
                //已经有模板被选择，发送异步请求给后端

                //将选中项转换成json格式的数据
                var templates = new Array();
                for (var i = 0; i < templateList.length; i++) {
                    var template = {
                        temId:templateList[i].temId,
                        temName:templateList[i].temName,
                        deptName:templateList[i].deptName
                    };
                    templates.push(template);
                }
                $.ajax({
                    type:'POST',
                    url:"prescription/doPrescribing",
                    data:JSON.stringify(templates),
                    contentType:'application/json;charset=utf-8',
                    success:function (data) {
                        //当前没有患者正在诊断或者患者未诊断
                        if (JSON.parse(data).flag == 1){
                            alert("请先选择一名患者进行诊断再开药！");
                        }else{
                            alert("开药成功！");
                            $("#template").bootstrapTable('uncheckAll');
                        }
                    }
                });
            }
        });

        //将session域中的diagnosingPatient移除，并清空患者信息栏
        $("#removePatientBtn").click(function () {
            //移除diagnosingPatient
            $.get("diagnosis/removeDiagnosingPatient",function (data) {
                //当前没有患者诊断中
                if (data.flag==1){
                    alert("当前没有患者诊断中，无法诊毕！");
                }else if (data.flag ==2){
                    //当前患者还未书写诊断书
                    alert("还未给患者书写诊断书，无法诊毕！");
                }else if(data.flag == 3){
                    //清空患者信息栏
                    $("#patientInfo").html(null);
                }
            });
        });
    });
</script>

</body>

</html>




