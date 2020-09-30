<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

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

</head>

<body class="bg-gradient-primary">

<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center" style="margin-bottom: 100px">
                                    <h1 class="h4 text-gray-900 mb-4">医疗系统</h1>
                                </div>
                                <div id="verifyInput" class="alert-danger text-center my-2"></div>
                                <form class="user" id="userForm">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user" id="username" name="username" aria-describedby="username" placeholder="请输入用户名"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="请输入密码">
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <input type="checkbox" class="custom-control-input" id="customCheck">
                                            <label class="custom-control-label" for="customCheck">记住密码</label>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-user btn-block">
                                            登录
                                        </button>
                                    </div>

                                </form>
                                <hr style="margin-bottom: 100px">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>


<script>
    $(function () {
        $("#submitBtn").click(function () {
            //校验表单成功发送ajax请求
            if (checkPassword()&&checkUsername()){
                $("#verifyInput").html("");
                $.post("user/login",$("#userForm").serialize(),function (data) {
                    if (data != ""){
                        if (data.userType == 1){
                            //收费员跳转收费员界面
                            location.href = "registration.jsp";
                        }else{
                            //医生跳转医生界面
                            location.href = "doctor.jsp";
                        }
                    }else{
                        $("#verifyInput").html("用户名或密码错误");
                    }
                })
            }else{
                $("#verifyInput").html("用户名或密码不能为空")
            }
        });
    });

    /**
     * 验证用户名是否为空
     * @returns {boolean}
     */
    function checkUsername(){
        var username = $("#username").val();

        if (username != ""){
            return true;
        }else{
            return false;
        }

    }

    function checkPassword(){
        var password = $("#password").val();

        if (password != ""){
            return true;
        }else{
            return false;
        }

    }
</script>

</body>

</html>