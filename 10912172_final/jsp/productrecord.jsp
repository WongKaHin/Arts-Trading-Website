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
    <link rel="stylesheet" type="text/css" href="assets/css/bttop.css">
    <link rel="stylesheet" type="text/css" href="assets/css/product.css">
    <link rel="stylesheet" type="text/css" href="assets/css/productstar.css">
    <link rel="stylesheet" type="text/css" href="assets/css/comment.css">
    <title>Review</title>
</head>
<body>
    <!--header-->
    <header>
      <a href="index.jsp" class="logo"><span class="Tchange">MEME</span>RY</a>
      <ul>
        <li><a href="../aboutus.html">About Us</a></li>
        <li><a href="shop.jsp">Shop</a></li>       
        <li><a href="cart.jsp">Cart</a></li>
        <% if(session.getAttribute("ID")!=null){%>
          <li><a href="signout.jsp" style="text-decoration:none;">登出</a></li>
          <%if(session.getAttribute("ID").equals("admin")){%>	
            <li><a href="Mmember.jsp" style="text-decoration:none;">後臺管理</a></li>
          <%}else{%>
            <li><a href="member.jsp" style="text-decoration:none;">會員專區</a></li>
        <%}}else{%>
          <li><a href="login.jsp">MemberShip</a></li>
        <%}%>
      </ul>
  </header>
  <%
  sql = "SELECT * FROM `buy` WHERE `會員id`= '"+session.getAttribute("ID")+"'";
  ResultSet rs=con.createStatement().executeQuery(sql);
  while(rs.next())
  {
    String x=rs.getString("產品id");
    String sql1 = "SELECT * FROM `member` WHERE `ID`= '"+session.getAttribute("ID")+"'";
    ResultSet rs1=con.createStatement().executeQuery(sql1);
    while(rs1.next())
    {    
      String sql2 = "SELECT * FROM `products` WHERE `產品id`= '"+x+"'";
      ResultSet rs2=con.createStatement().executeQuery(sql2);
      while(rs2.next())
      {
        int total=0;
        total += rs.getInt("購買數量")*rs2.getInt("價格");
    %>
    <section id="product">
      <div class="photo">
        <img class="round" src="<%=rs2.getString("圖片")%>">
      </div>
      <div class="right">
        <div class="detail">
            <h1><%=rs.getString("產品名稱")%></h1>
            <h2>收貨者:<%=rs1.getString("Name")%></h2>
			      <h2>收貨者電話:<%=rs1.getString("Phone")%></h2>
			      <h2>收貨者地址:<%=rs1.getString("address")%></h2>
            <h2>數量:<%=rs.getInt("購買數量")%>份</h2>
            <h2>金額: $<%=total%></h2>
        </div>
      </div>
    </section>
    <hr><div class="title"><span class="Tchange">RE</span>VIEWS</div>
		<div class="RS">
      <div class="rating">
        <label>
          <input type="radio" name="stars" value="1" />
          <span class="icon">★</span>
        </label>
        <label>
          <input type="radio" name="stars" value="2" />
          <span class="icon">★</span>
          <span class="icon">★</span>
        </label>
        <label>
          <input type="radio" name="stars" value="3" />
          <span class="icon">★</span>
          <span class="icon">★</span>
          <span class="icon">★</span>   
        </label>
        <label>
          <input type="radio" name="stars" value="4" />
          <span class="icon">★</span>
          <span class="icon">★</span>
          <span class="icon">★</span>
          <span class="icon">★</span>
        </label>
        <label>
          <input type="radio" name="stars" value="5" />
          <span class="icon">★</span>
          <span class="icon">★</span>
          <span class="icon">★</span>
          <span class="icon">★</span>
          <span class="icon">★</span>
        </label>
      </div>
  </div>
      <!--comments-->
      <div class="comments-app" ng-app="commentsApp" ng-controller="CommentsController as cmntCtrl">
        <!-- From -->
        <div class="comment-form">
        <!-- Comment Avatar -->
        <div class="comment-avatar">
          <img src="assets/images/avatar.png">
        </div>
        <form method="POST" action="comment.jsp">
          <input type="hidden" name="name" value="<%=rs1.getString("Name")%>">
          <input type="hidden" name="id" value="<%=rs1.getString("ID")%>">
          <input type="hidden" name="pid" value="<%=rs.getString("產品id")%>">
        <div class="form">
          <div class="form-row">
            <textarea class="input" name="comment" placeholder="Add comment..." required></textarea>
          </div>
          <div class="form-row">
            <input type="submit" value="Add Review">
          </div>
        </div>
        </form>
        </div>
        </div>
<%}}}%>
<%
request.setCharacterEncoding("UTF-8");
String username=session.getAttribute("ID").toString();
sql = "DELETE FROM `buy` WHERE `會員id`='"+username+"'";
con.createStatement().execute(sql);
%>
</body>
</html>