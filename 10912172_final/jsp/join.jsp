<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" pageEncoding="UTF-8"%>
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
    <title>Join</title>
</head>
<body>
    <!--header-->
    <header>
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
    <!--join-->
    <div class="page">
        <div class="login-box">
            <form class="login-form" method="POST" action="addM.jsp">
                <h1 class="login-title"><span class="Tchange">JOIN</span> US</h1>
                <div class="loginGroup">
                    <label>Name :
                        <input type="text" name="name" placeholder="請輸入您的姓名">
                    </label>
                </div>
                <div class="loginGroup">
                    <label>ID :
                        <input type="text" name="id" placeholder="請輸入ID">
                    </label>
                </div>
                <div class="loginGroup">
                    <label>Password：
                        <input type="password" name="password" placeholder="請輸入密碼">
                    </label>
                </div>   
                <div class="loginGroup">
                    <label>Phone :
                        <input type="text" name="phone" placeholder="請輸入電話號碼">
                    </label>
                </div> 
                <div class="loginGroup">
                    <label>Email :
                        <input type="text" name="email" placeholder="請輸入Email">
                    </label>
                </div>
                <div class="loginGroup">
                    <label>Adderss :
                        <input type="text" name="address" placeholder="請輸入地址">
                    </label>
                </div>
                <div class="btn">
                    <button class="btn-login">註冊</button>
                </div>
            </form>       
        </div>
        <!--back-->
        <div class="icon">
            <div class="left-icon">
                <a class="icon-a" href="login.jsp" title="Back"><span class="Tchange">Back to</span> Login</a>
            </div>
        </div>
    </div>
    <section class="banner-login"></section>
</body>
</html>
