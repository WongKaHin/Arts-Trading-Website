<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="assets/images/logo.ico" type="image/x-icon" >
    <script src="assets/src/header.js"></script>
    <link rel="stylesheet" type="text/css" href="assets/css/header.css">
    <link rel="stylesheet" type="text/css" href="assets/css/footer.css">
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
    <title>Login</title>
</head>
<body>
<header>
    <!--header-->
    <a href="index.jsp" class="logo"><span class="Tchange">MEME</span>RY</a>
    <ul>
        <li><a href="aboutus.jsp">About Us</a></li>
        <li><a href="shop.jsp">Shop</a></li>       
        <li><a href="cart.jsp">Cart</a></li>
        <% if(session.getAttribute("ID")!=null){%>
          <a href="signout.jsp" style="text-decoration:none;">登出</a>
          <%if(session.getAttribute("ID").equals("admin")){%>	
            <li><a href="Mmember.jsp" style="text-decoration:none;">後臺管理</a></li>
          <%}else{%>
            <li><a href="member.jsp" style="text-decoration:none;">會員專區</a></li>
        <%}}else{%>
          <li><a href="login.jsp">MemberShip</a></li>
        <%}%>
    </ul>
    </header>
    <!--login-->
    <div class="page">
        <div class="login-box">
            <form class="login-form" method="POST" action="check.jsp">
                <h1 class="login-title"><span class="Tchange">LOG</span>IN</h1>
                <div class="loginGroup">
                    <label>ID :
                        <input type="tel" name="id" placeholder="請輸入ID">
                    </label>
                </div>
                <div class="loginGroup">
                    <label>Password：
                        <input type="password" name="psw" placeholder="請輸入密碼">
                    </label>
                </div>    
                <div class="btn">
                    <button class="btn-login">登入</button>
                </div>
            </form>
        </div>
        <!--forget and join-->
        <div class="icon">
            <div class="left-icon">
                <a class="icon-a" href="forget.html" title="Forget"><span class="Tchange">For</span>get <span class="Tchange">Pass</span>word</a>
            </div>
            <div class="right-icon">
                <a class="icon-a" href="join.jsp" title="Join"><span class="Tchange">Join</span> Our <span class="Tchange">Mem</span>ber</a>
            </div>
        </div>
    </div>
    <section class="banner-login"></section>

</body>
</html>