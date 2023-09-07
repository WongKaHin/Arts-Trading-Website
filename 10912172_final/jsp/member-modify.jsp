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
        <a href="index.html" class="logo"><span class="Tchange">MEME</span>RY</a>
        <ul>
            <li><a href="../aboutus.html">About Us</a></li>
            <li><a href="../shop.html">Shop</a></li>       
            <li><a href="../cart.html">Cart</a></li>
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
            <form class="login-form" method="POST" action="udmember.jsp">
            <div class="member-infor">
                <div class="photo"><img class="member-photo" src="assets/images/avatar.png" ></div>
                <div class="right">
                    <div class="data">
                        <h1>Modify Personal </h1>
                        <h1>Information</h1>
                            <label>ID :
                                <input type="tel" name="ID" placeholder="請輸入ID">
                            </label>
                            <br><br>
                            <label>Password :
                                <input type="password" name="password" placeholder="請輸入密碼">
                            </label>
                            <br><br><label>Name :
                                <input type="name" name="name" placeholder="請輸入您的姓名">
                            </label>
                            <br><br>
                            <label>Email :
                                <input type="email" name="email" placeholder="請輸入電子信箱">
                            </label>
                            <br><br>
                            <label>Phone :
                                <input type="phone" name="Phone" placeholder="請輸入電話號碼">
                            </label>
                            <br><br>
                            <label>address :
                                <input type="text" name="address" placeholder="請輸入地址">
                            </label>
                            <br><br>  
                    </div>                    
                </div>
            </div>            
            <div class="btn">
                <a href=""><button class="btn-sty">確認</button></a>
            </div> 
        </form>   
        </div>
    </div>

</body>
</html>