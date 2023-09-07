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
    <link rel="stylesheet" type="text/css" href="assets/css/cart.css">
    <title>Cart</title>
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
    <section class="page">
        <div class="buyitem">
            <h1 class="cart-title"><span class="Tchange">CART</span> LIST</h1>
            <table class="buylist" id="list">
                <tr class="item_header">
                    <td class="pic"> </td>
                    <td class="namebox">Product</td>
                    <td class="price">Price</td>
                    <td class="count">Quantity</td>
                    <td class="amount">Total</td>
                    <td class="operate"></td>
                </tr>
                <%
                if(session.getAttribute("ID")!=null){
                String username=(String)session.getAttribute("ID");
                sql="select * from buy where 會員id='"+ username+"'";
                ResultSet rs=con.createStatement().executeQuery(sql);
                int total=0;
                while(rs.next()){
                String no=rs.getString("會員id");
                int m= rs.getInt("購買數量");
                String g=rs.getString("會員id");
                String x=rs.getString("產品id");
                String sqlProduct="select * from products where 產品id='"+x+"'";
                ResultSet rsProduct=con.createStatement().executeQuery(sqlProduct);
                rsProduct.next();
                String pname= rsProduct.getString("產品名稱");
                String p_picture=rsProduct.getString("圖片");
                int p_price= rsProduct.getInt("價格");
                total += (p_price*m);
            %>
                <tr class="product">
                    <td><img src="<%=p_picture%>" alt="" width="150px" height="150px"></td>
                    <td class="namebox">
                        <span class="name"><%=pname%></span>
                    </td>
                    <td class="price"><%=p_price%></td>
                    <td class="count">
                        <%=m%>
                    </td>
                    <td class="subtotal"><%=total%></td>
                    <td class="operate">
                        <button type="button" class="remove" onclick="rm(this)">REMOVE</button>
                    </td>
                </tr>
                <%}%>
                
            </table>
            <div class="btn">
                <a href="shop.jsp"><button class="btn-sty">SHOP</button></a>
                <button class="btn-sty" onclick="totalprice(this)">TOTAL</button>
                <a href="cartcheckout.jsp"><button class="btn-sty" >CHECKOUT</button></a>
            </div>
            <%}
            else
            {%>
            <script>alert('請先登入會員！');document.location ='index.jsp'</script>
            <%}%>
        </div>
    </section>
    <script src="assets/src/cart.js"></script>
</body>
</html>