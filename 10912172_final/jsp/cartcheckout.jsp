<%@ page import = "java.sql.*, java.util.*,  java.text.*"%>
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
        <div class="buyitem-c">
            <h1 class="cart-title"><span class="Tchange">CART</span> LIST</h1>
            <table class="buylist" id="list">
                <tr class="item_header">
                    <td class="pic"></td>
                    <td class="namebox">Product</td>
                    <td class="count">Quantity</td>
                    <td class="amount">Total</td>
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
                    <td class="count"><%=m%></td>
                    <td class="subtotal"><%=p_price%></td>
                </tr>
                <%}%>
                <tr class="product">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="total"><h2>TOTAL AMOUNT:$<%=total%></h2></td>
                </tr>
            </table>
            <hr>

            <%}
            else
            {%>
            <script>alert('請先登入會員！');document.location ='index.jsp'</script>
            <%}%>
            
            <div class="member-data">
                <%
                sql = "SELECT * FROM member where ID= '"+session.getAttribute("ID")+"'";
                ResultSet rs = con.createStatement().executeQuery(sql);
                while(rs.next())
                {%>
                <div class="buymember">填寫收件資料</div>
                <div>收件人：<input type="text" id="customer" required placeholder="姓名" value="<%=rs.getString(3)%>"></div>
                <div>收件地址：<input type="text" id="address" required placeholder="地址" value="<%=rs.getString(6)%>"></div>
                <div>連絡電話：<input type="tel" required placeholder="電話" value="<%=rs.getString(4)%>"></div>
                <%}%>
            </div>
                <form method="POST" action="order.jsp">
                <div>付款方式：
                    <input name="pay" type="radio" value="貨到付款"checked>貨到付款&emsp;
                    <input name="pay" type="radio" value="Line Pay">Line Pay&emsp;
                    <input name="pay" type="radio" value="信用卡付款">信用卡付款
                </div>
            <div class="btn">
                <button class="btn-sty" id="end" type="submit">ORDER</button>
            </div>
            </form>
        </div>
    </section>
    <script src="assets/src/cart.js"></script>
</body>
</html>