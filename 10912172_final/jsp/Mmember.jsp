<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>p
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="assets/src/header.js"></script>
    <link rel="icon" href="assets/images/logo.ico" type="image/x-icon" >
    <link rel="stylesheet" type="text/css" href="assets/css/header.css">
    <link rel="stylesheet" type="text/css" href="assets/css/footer.css">
    <link rel="stylesheet" type="text/css" href="assets/css/bttop.css">
    <link rel="stylesheet" type="text/css" href="assets/css/cart.css">
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
    <section class="page">
        <div class="buyitem">
            <table class="buylist" id="list">

                <tr class="item_header">
                    <td class="name">會員名字</td>
                    <td class="ID">會員郵件</td>
                    <td class="password">會員密碼</td>
                    <td class="phone">會員手機</td>
                    <td class="address">會員地址</td> 
                    <td class="operate">修改</td>
                    <td class="operate">刪除</td>               
                </tr>
                <%
                sql = "SELECT * FROM member";
                ResultSet rs1 = con.createStatement().executeQuery(sql);
                
                while(rs1.next())
                {%>
                <form method="POST" action="Mmember-revise.jsp">
                <tr>
                        <td><%=rs1.getString(3)%></td>
                        <td><%=rs1.getString(5)%></td>
                        <td><%=rs1.getString(2)%></td>
                        <td><%=rs1.getString(4)%></td>
                        <td><%=rs1.getString(6)%></td>
                        <%
                        String name=request.getParameter("name");
                        %>
                            <td class="operate"><button type="button" class="revise"><a href="Mmember-revise.jsp">修改</button></td>
                        </form>
                        <form method="POST" action="delM.jsp">
                            <td class="operate">
                                <input type="hidden" name="userid" value="<%=rs1.getString(3)%>"><button type="submit" class="remove">刪除</button>
                            </td>
                        </form>
                    </tr>	
                <%}%>
            </table>
        </div>
    </section>
</body>
</html>