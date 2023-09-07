<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
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
			<li><a href="index.jsp">登出</a></li>
        </ul>
    </header>
    <section class="page">
        <div class="buyitem">
            <table class="buylist" id="list">
                <tr class="item_header">
                    <td class="name">商品名稱</td>
                    <td class="author">作者</td>
                    <td class="price">商品價格</td>
                    <td class="star">圖片</td>
                    <td class="operate">修改</td>
                    <td class="operate">刪除</td>               
                </tr>
                <%
                sql = "SELECT * FROM products";
                ResultSet rs1 = con.createStatement().executeQuery(sql);
                
                while(rs1.next())
                {%>
                <tr class="item_header">
                    <form method="POST" action="Mproduct-revise.jsp">
                        <td><%=rs1.getString(2)%></td><input type="hidden" name="pname" value="<%=rs1.getString("產品名稱")%>">
                        <td><%=rs1.getString(3)%></td><input type="hidden" name="author" value="<%=rs1.getString("作者")%>">
                        <td><%=rs1.getString(4)%></td><input type="hidden" name="price" value="<%=rs1.getString("價格")%>">
                        <td><%=rs1.getString(5)%>
                    </form>
                        <td class="operate"><a href="Mproduct-revise.jsp"><button type="button" class="revise">修改</button></a></td>
                        <form method="POST" action="delP.jsp">
                            <td class="operate">
                                <input type="hidden" name="userid" value="<%=rs1.getString(2)%>"><button type="submit" class="remove">刪除</button>
                            </td>
                        </form>
                    </tr>	
                <%}%>

            </table>
        </div>
    </section>
</body>
</html>