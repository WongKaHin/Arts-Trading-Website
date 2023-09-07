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
    <link rel="stylesheet" type="text/css" href="assets/css/record.css">
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
            
            <div class="member-infor">
                <div class="photo"><img class="member-photo" src="assets/images/avatar.png" ></div>
                <div class="right">
                    <div class="data">
                        <%
                        sql = "SELECT * FROM member where ID= '"+session.getAttribute("ID")+"'";
                        ResultSet rs = con.createStatement().executeQuery(sql);
                        while(rs.next())
                        {%>
                            <h1>會員名稱：</h1>
                            <h1><%=rs.getString(3)%></h1>
                            <h3>住址：<%=rs.getString(6)%></h3>
                            <h3>手機號碼：<%=rs.getString(4)%></h3>
                            <h3>電子信箱：<%=rs.getString(5)%></h3>
                            <%}%>  
                    </div>                    
                </div>
            </div>            
            <div class="btn">
                <a href="member-modify.jsp"><button class="btn-sty">修改個人資料</button></a>
                <a href="member-password.html"><button class="btn-sty">修改密碼</button></a>
                <a href="consumingrecord.jsp"><button class="btn-sty">購買紀錄</button></a>
                <a href="commentcord.jsp"><button class="btn-sty">評價紀錄</button></a>
            </div>    
        </div>
    </div>
    <hr>            
    <h1 class="title"><span class="Tchange">Con</span>suming <span class="Tchange">Re</span>cords</h1>
    <div class="page">
        <table class="recordlist">
            <tr class="list_header">
                <td>訂購日期</td>
                <td></td>
                <td>商品名稱</td>
                <td>評價</td>
                <td>留言</td>
            </tr>
            <%
            String sql1 = "SELECT * FROM `board` WHERE `會員id`= '"+session.getAttribute("ID")+"'";
            ResultSet rs1=con.createStatement().executeQuery(sql1);
            while(rs1.next())
            {   
                String x = rs1.getString("產品id");
                String sql2 = "SELECT * FROM `buy` WHERE `會員id`= '"+session.getAttribute("ID")+"' && `產品id`='"+x+"'";
                ResultSet rs2=con.createStatement().executeQuery(sql2);
                while(rs2.next())
                {    
                    String sql3 = "SELECT * FROM `products` WHERE `產品id`= '"+x+"'";
                    ResultSet rs3=con.createStatement().executeQuery(sql3);
                    while(rs3.next())
                    {
            %>
            <tr class="list_body">
                <td><%=rs2.getString("day")%></td>
                <td><img src="<%=rs3.getString("圖片")%>"></td>
                <td><%=rs3.getString("產品名稱")%></td>
                <td><%=rs1.getInt("分數")%></td>
                <td><%=rs1.getString("評論內容")%></td>
            </tr>
            <%}}}%>

        </table>
    </div>
</body>
</html>