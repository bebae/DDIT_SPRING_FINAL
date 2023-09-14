<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>LOGIN</title>
    
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="/resources/master/light/css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="/resources/master/light/css/feather.css">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="/resources/master/light/css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="/resources/master/light/css/app-light.css" id="lightTheme">
    <link rel="stylesheet" href="/resources/master/light/css/app-dark.css" id="darkTheme" disabled>
</head>
<body class="light">
<div class="wrapper vh-100">
    <div class="row align-items-center h-100">
        <div class="col-lg-3 col-md-4 col-10 mx-auto text-center">
            <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="./index.html">
<!--                 <svg version="1.1" id="logo" class="navbar-brand-img brand-md" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 120 120" xml:space="preserve"> -->
<!--                     <g> -->
<!--                         <polygon class="st0" points="78,105 15,105 24,87 87,87 	" /> -->
<!--                         <polygon class="st0" points="96,69 33,69 42,51 105,51 	" /> -->
<!--                         <polygon class="st0" points="78,33 15,33 24,15 87,15 	" /> -->
<!--                     </g> -->
<!--                 </svg> -->
			<div style="text-align: center;">
    			<img alt="..." src="/resources/master/light/assets/avatars/로고.png" style="max-width: 50%; display: block; margin: 0 auto;">
			</div>
            </a>
            <h1 class="h6 mb-3">LOGIN</h1>
            <form action="/login" method="post">
                <sec:csrfInput/>
                <div class="form-group">
                    <label for="username" class="sr-only">ID</label>
                    <input type="text" id="username" name="username" class="form-control form-control-lg" placeholder="ID" required="" autofocus="">
                </div>
                <div class="form-group">
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" id="password" name="password" class="form-control form-control-lg" placeholder="Password" required="">
                </div>
                <div class="checkbox mb-3">
                    <label for="remember">
                        <input type="checkbox" name="remember-me" value="true"> 자동 로그인
                    </label>
                </div>
                <button class="btn btn-lg btn-block" type="submit" style="background-color: #B61A53; color: white;">Login</button>
            </form>
        </div>
    </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/moment.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/simplebar.min.js"></script>
<script src='js/daterangepicker.js'></script>
<script src='js/jquery.stickOnScroll.js'></script>
<script src="js/tinycolor-min.js"></script>
<script src="js/config.js"></script>
<script src="js/apps.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-56159088-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag()
    {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());
    gtag('config', 'UA-56159088-1');
</script>
</body>
</html>
</body>
</html>
