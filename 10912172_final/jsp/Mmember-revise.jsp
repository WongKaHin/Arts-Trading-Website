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
    <link rel="stylesheet" type="text/css" href="assets/css/member.css">
    <title>MEMERY</title>
</head>
<body>
    <!--header-->
    <header>
        <a href="index.jsp" class="logo"><span class="Tchange">MEME</span>RY</a>
        <ul>
            <li><a href="Mmember.jsp">會員資料</a></li>
            <li><a href="Mproduct.jsp">商品資訊</a></li>
            <li><a href="Mproduct-add.jsp">新增商品</a></li>
			<li><a href="signout.jsp">登出</a></li>
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
                        <h1>Imformation</h1>
                            <label>ID :
                                <input type="tel" name="ID" placeholder="請輸入ID">
                            </label>
                            <br><br>
                            <label>password :
                                <input type="password" name="password" placeholder="密碼" >
                            </label>
                            <br><br>
                            <label>name :
                                <input type="text" name="name" placeholder="姓名" >
                            </label>
                            <br><br>
                            <label>email :
                                <input type="email" name="email" placeholder="電子信箱">
                            </label>
                            <br><br>
                            <label>phone :
                                <input type="phone" name="phone" placeholder="電話號碼">
                            </label>
                            <br><br>
                            <label>address :
                                <input type="address" name="address" placeholder="地址">
                            </label>
                        </form>   
                    </div>                    
                </div>
            </div>            
            <div class="btn">
                <button class="btn-sty" type="submit">確認</button>
            </div>
        </form>   
        </div>
    </div>

</body>
</html>