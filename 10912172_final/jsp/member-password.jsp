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
    <link rel="stylesheet" type="text/css" href="assets/css/member.css">
    <title>Member Profile</title>
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
    <!--member data-->
    <section class="banner"></section>
    <h1 class="title"><span class="Tchange">Mem</span>ber <span class="Tchange">Pro</span>file</h1>
    <div class="page">
        <div class="page-box">
            <form class="login-form" method="POST" action="changepsw.jsp">
            <div class="member-infor">
                <div class="photo"><img class="member-photo" src="assets/images/avatar.png" ></div>
                <div class="right">
                    <div class="data">
                        <h1>Change</h1>
                        <h1>Password</h1>
                            <label>Old Password：
                                <input type="password" name="userID" placeholder="請輸入舊密碼">
                            </label>
                            <br><br>
                            <label>New Password：
                                <input type="password" name="Reset" placeholder="請輸入新密碼">
                            </label>
                            <br><br>
                            <label>Dinfine：
                                <input type="password" name="Difine" placeholder="再次確認密碼">
                            </label>
                            <br><br><br>                   
                    </div>                    
                </div>
            </div>            
            <div class="btn">
            <button class="btn-sty" type="submit">確認</button></a>
            </div>
            </form>    
        </div>
    </div>

</body>
</html>