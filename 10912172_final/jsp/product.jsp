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
    <link rel="stylesheet" type="text/css" href="assets/css/bttop.css">
    <link rel="stylesheet" type="text/css" href="assets/css/product.css">
    <link rel="stylesheet" type="text/css" href="assets/css/comment.css">
    <title>Product</title>
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
  <a href="#Top">
    <img src="assets/images/backtotop.png" width="100px" class="backtotop">
  </a>
  <div id="back">
    <a href="shop.jsp"><img src="assets/images/exit.png"></a>
  </div>
  <%
  String pid = request.getParameter("page");
  session.setAttribute("new_pid",pid);
  String sql3="SELECT * FROM products WHERE 產品id = '"+pid+"'";
  ResultSet rs = con.createStatement().executeQuery(sql3);
  while(rs.next())
  {
%>
    <section id="product">
      
      <div class="photo">
        <img class="round" src="<%=rs.getString(5)%>">
      </div>
      <div class="right">
        <div class="detail">
            <h1><input type="hidden" name="name" value="<%=rs.getString(2)%>"><%=rs.getString(2)%></h1>
            <h2><%=rs.getString(3)%></h2>
            <h2 id="sale">售價: $<%=rs.getString(4)%></h2>
            <h2 >剩餘:<%=rs.getString(8)%></h2>
        </div>

        <!--數量選擇-->
        <form method="GET" id="myform" action="toorder.jsp">
          <input type="hidden" name="pid" value="<%=rs.getString(1)%>">
          <input type="hidden" name="pname" value="<%=rs.getString(2)%>">
          <input type="button" value="-" class="qtyminus" field="quantity" />
          <input type="text" name="quantity" value="1" class="qty" />
          <input type="button" value="+" class="qtyplus" field="quantity" />
        <form action="toorder.jsp">
        <button type="submit"><h1>加入購物車</a></h1></button>
        </form>
      </form>
        <!--stars-->
        <div class="star">★★★★★</div>
      </div>
    </section>
    <hr><div class="title"><span class="Tchange">CON</span>TANT</div>
    <div class="word">
      <h2><%=rs.getString(7)%></h2>
    </div> 
    <%}%>
    <hr><div class="title"><span class="Tchange">COM</span>MENTS</div>
    <!--comments-->
      <div class="comments-app" ng-app="commentsApp" ng-controller="CommentsController as cmntCtrl">
        <%
        String sql5="SELECT * FROM board WHERE 產品id='"+(String)session.getAttribute("new_pid")+"'";
        ResultSet rs5=con.createStatement().executeQuery(sql5);
        while(rs5.next())
        {
          %>
    <!-- Comment - Dummy -->
        <div class="comment">
    <!-- Comment Avatar -->
          <div class="comment-avatar">
            <img src="assets/images/avatar.png">
          </div>
    <!-- Comment Box -->
          <div class="comment-box">
            <div class="comment-text">
              <%=rs5.getString("會員名稱")%>
              </div>
            <div class="comment-footer">
              <div class="comment-info">
                <span class="comment-author">
                  <%=rs5.getString(3)%>
                </span>
              </div>
            </div>
          </div>
        </div>
        <%}%>
    <!--footer-->
    <footer>
      <div class="Copyright">
        <p>Copyright © 2022 , CYCUIM<br>GROUP22</p>
        <div class="contact">
          <a href="mailto:we751015@gmail.com"><img src="assets/images/mail.png"></a>
        </div>
        <p>CONTACT US</p>
      </div>
    </footer>
</body>
</html>