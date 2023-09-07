<%@page contentType="text/html;
<%charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
	request.setCharacterEncoding("utf-8");
	if(request.getParameter("password") != "" && request.getParameter("name") != "" && request.getParameter("ID") != ""&& request.getParameter("email") != ""&& request.getParameter("Phone") != ""&& request.getParameter("address") != "")
	{	
		String xx = request.getParameter("ID");
		String ID = request.getParameter("ID");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("Phone");
		String address = request.getParameter("address");
		
		sql = "UPDATE `member` SET `address` = '"+address+"',`Password` = '"+password+"', `Name` = '"+name+"', `ID` = '"+ID+"', `email` ='"+email+"', `Phone` ='"+phone+"' WHERE `ID` ='"+xx+"'";
		con.createStatement().execute(sql);
		con.close();
		out.print("<script>alert('修改成功');</script>");
	    response.setHeader("refresh","0;URL=member.jsp") ;
	}
	else
	{
		out.println("<script>alert('修改失敗');</script>");
	    response.setHeader("refresh","0;URL=member.jsp") ;
	}
%>