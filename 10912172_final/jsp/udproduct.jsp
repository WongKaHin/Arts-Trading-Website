<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
	request.setCharacterEncoding("utf-8");
	if(request.getParameter("name") != "" && request.getParameter("author") != "" && request.getParameter("pid") != "" && request.getParameter("price") != ""&& request.getParameter("img") != ""&& request.getParameter("amount") != ""&& request.getParameter("kind") != "")
	{	
		String xx = request.getParameter("name");
		String name = request.getParameter("name");
		String author = request.getParameter("author");
		String price = request.getParameter("price");
		String amount = request.getParameter("amount");
		String kind = request.getParameter("kind");
		String pid = request.getParameter("pid");
		
		sql = "UPDATE `products` SET `產品名稱` = '"+name+"',`作者` = '"+author+"',`產品id` = '"+pid+"', `價格` = '"+price+"',  `庫存` ='"+amount+"', `種類` ='"+kind+"' WHERE `產品名稱` ='"+xx+"'";
		con.createStatement().execute(sql);
		con.close();
		out.print("<script>alert('修改成功');</script>");
	    response.setHeader("refresh","0;URL=Mproduct.jsp") ;
	}
	else
	{
		out.println("<script>alert('修改失敗');</script>");
	    response.setHeader("refresh","0;URL=Mproduct.jsp") ;
	}
%>