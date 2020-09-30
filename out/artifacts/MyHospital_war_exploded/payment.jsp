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
    <link href="vendor/bootstrap-table-master/dist/bootstrap-table.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

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
                    <a class="collapse-item" href="withdraw.jsp">退号</a>
                    <div class="collapse-divider"></div>
                    <h6 class="collapse-header">收费窗口:</h6>
                    <a class="collapse-item active" href="payment.jsp">收费</a>
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
                <h1 class="h3 mb-4 text-gray-800">收费</h1>
                <h5 class="h5 mb-4 text-gray-800">患者信息查询</h5>
                <div class="form-group row" style="height: 50px">
                    <label for="cid" class="col-form-label">病历号</label>
                    <div class="col-md-2">
                        <input type="text" class="form-control" id="cid">
                    </div>
                    <div class="col">
                        <button id="searchInfoBtn" type="button" class="btn btn-primary">搜索</button>
                    </div>

                    <div class="toast offset-md-7" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header">
                            <strong class="mr-auto">提示信息</strong>
                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="toast-body alert-success">
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

                <h5 class="h5 mb-4 text-gray-800">患者缴费信息</h5>

                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">需要缴费的项目</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="payListTable" width="100%" cellspacing="0">
                            </table>
                        </div>

                        <div class="row" style="margin-left: 5px; margin-top: 20px">
                            <!-- Button trigger modal -->
                            <button type="button" id="payingBtn" class="btn btn-primary" data-toggle="modal" data-target="#payingModal">
                                收费结算
                            </button>
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


<!-- Modal -->
<div class="modal fade" id="payingModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel1">发票信息(交费)</h5>
                <button type="button" id="closePayBtn" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="payingForm">
                <div class="modal-body">
                    <div style="margin-left: 30px">
                        <div class="form-group row">
                            <label for="pid" class="col-form-label">发票号</label>
                            <div class="col-md-4">
                                <input type="text" name="payId" class="form-control" id="pid">
                            </div>
                            <label for="pCid" class="col-form-label" style="margin-left: 20px">病历号</label>
                            <div class="col-md-4">
                                <input type="text" name="chId" class="form-control" id="pCid">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="pName" class="col-form-label">姓名</label>
                            <div class="col-md-4">
                                <input type="text" name="chName" class="form-control" id="pName">
                            </div>
                            <label for="pTotalPay" class="col-form-label" style="margin-left: 20px">应收金额</label>
                            <div class="col-md-4">
                                <input type="text" name="payTotal" class="form-control" id="pTotalPay">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="realPay" class="col-form-label">实收金额</label>
                            <div class="col-md-4">
                                <input type="text" name="payReal" class="form-control" id="realPay">
                            </div>
                            <label for="backPay" class="col-form-label" style="margin-left: 20px">找零</label>
                            <div class="col-md-4">
                                <input type="text" name="payBack" class="form-control" id="backPay">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                    <button type="button" id="submitPayingBtn" class="btn btn-primary" data-dismiss="modal">收费</button>
                </div>
            </form>
        </div>
    </div>
</div>


<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<script>
    $(function () {

        //初始化患者缴费信息明细表
        $("#payListTable").bootstrapTable({
            pageNumber:1,
            pagination:true,
            sidePagination:'client',
            pageSize:4,
            method:'get',
            cache:false,
            columns:[
                {
                    checkbox:true
                },
                {
                    field: 'chId',
                    title: '病历号'
                },
                {
                    field: 'plId',
                    title: '项目id'
                },
                {
                    field: 'plName',
                    title: '项目名称'
                },
                {
                    field: 'plPrice',
                    title: '单价'
                },
                {
                    field: 'plAmount',
                    title: '数量'
                },
                {
                    field: 'plDate',
                    title: '开立时间'
                },
                {
                    field: 'plPayStatus',
                    title: '状态'
                }
            ]
        });

        //查询患者病历号对应的患者信息
        $("#searchInfoBtn").click(function () {
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
                        $("#payListTable").bootstrapTable('refresh',{url:'payment/searchPaymentList/?chId='+data.chId +'&plPayStatus=已开立'});
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

        //收费
        $("#payingBtn").click(function () {
            $(this).removeAttr("data-target");
            $("#payingForm")[0].reset();
            var payInfoList = $("#payListTable").bootstrapTable('getSelections');
            //如果未选择缴费条目，提示用户
            if (payInfoList.length == 0){
                $("#closePayBtn").click();
                $(".toast-body").html("请先选择缴费条目");
                $(".toast").toast("show");
            }else{
                //开始缴费
                $(this).attr('data-target','#payingModal');


                //获取可用发票号
                $.get("payment/searchAvailablePayId",function (data) {
                    $("#pid").val(data);
                });

                //获取病历号和姓名
                $("#pCid").val(payInfoList[0].chId);
                $("#pName").val($("#name").val());

                //获取应收金额
                $("#pTotalPay").val(Number(sumPrice(payInfoList)).toFixed(2));
            }
        });

        //计算找零金额
        $("#realPay").blur(function () {
            var realPay = $(this).val();
            var regExpChId = /^\d{1,}$/;
            var flag = regExpChId.test(realPay);
            if (flag){
                var backPay = Number(realPay-$("#pTotalPay").val()).toFixed(2);
                $("#backPay").val(backPay);
            }
        });

        $("#submitPayingBtn").click(function () {

            var payInfoList = $("#payListTable").bootstrapTable('getSelections');
            //将payInfoList转换成json字符串
            var paymentLists = [];
            for (var i = 0; i < payInfoList.length; i++) {
                var paymentList = {"plId":payInfoList[i].plId};
                paymentLists.push(paymentList);
            }

            var submitForm = {
                "payId":$("#pid").val(),
                "chId":$("#pCid").val(),
                "chName":$("#pName").val(),
                "payTotal":$("#pTotalPay").val(),
                "payReal":$("#realPay").val(),
                "payBack":$("#backPay").val(),
                "paymentLists":paymentLists
            };

            $.ajax({
                type: 'POST',
                url: 'payment/doPaying',
                data: JSON.stringify(submitForm),
                contentType: 'application/json;charset=utf-8',
                success: function (data) {
                    if (JSON.parse(data).flag == 1){
                        $(".toast-body").html("缴费成功！");
                    }else{
                        $(".toast-body").html("缴费失败，请确认输入信息是否有误或联系管理员！");
                    }

                    //重置费用明细表
                    $("#payListTable").bootstrapTable('refresh',{url:'payment/searchPaymentList/?chId='+$("#pCid").val() +'&plPayStatus=已开立'});
                    $(".toast").toast("show");
                }
            });

        });
    });


    //计算总金额
    function sumPrice(payInfoList) {
        var sum = 0;
        for (var i = 0; i < payInfoList.length; i++) {
            sum += payInfoList[i].plAmount * payInfoList[i].plPrice;
        }
        return sum;
    }
</script>

</body>

</html>



