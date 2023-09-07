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
            <form class="login-form" method="POST" action="addP.jsp">
            <div class="member-infor">
                <div class="right">
                    <div class="data">
                        <h1>Add Product</h1>
                        <h1>Imformation</h1>
                        <label>pid :
                            <input type="text" name="pid" placeholder="產品id">
                        </label>
                        <br><br>
                            <label>name :
                                <input type="text" name="name" placeholder="姓名">
                            </label>
                            <br><br>
                            <label>author :
                                <input type="text" name="author" placeholder="作者">
                            </label>
                            <br><br>
                            <label>price :
                                <input type="text" name="price" placeholder="價格">
                            </label>
                            <br><br>
                            <label>img :
                                <input type="text" name="img" placeholder="圖片名稱">
                            </label>
                            <br><br>
                            <label>kind :
                                <input type="text" name="kind" placeholder="產品種類">
                            </label>
                            <br><br>
                            <label>contant :
                                <input type="text" name="contant" placeholder="內文">
                            </label> 
                            <br><br>
                            <label>contant :
                                <input type="text" name="amount" placeholder="庫存">
                            </label> 
                    </div>                    
                </div>
            </div>            
            <div class="btn">
                <button class="btn-sty">確認</button>
            </div>
        </form>    
        </div>
    </div>

</body>
</html>