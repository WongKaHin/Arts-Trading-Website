<%@ page import = "java.sql.*, java.util.*,  java.text.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>

<%
try
{
    request.setCharacterEncoding("utf-8");
	
	String name=request.getParameter("name");
	String id=request.getParameter("id");
	String password = request.getParameter("password");
	String phone=request.getParameter("phone");
	String email=request.getParameter("email");
	String address=request.getParameter("address");

	sql="INSERT member (ID, Password, Name, Phone, email, address)";
	sql+="VALUES ('" + id+ "', ";
	sql+="'" + password + "', "; 
	sql+="'"+ name +"', "; 
	sql+="'"+ phone+"', "; 
	sql+="'"+ email+"', ";  
	sql+="'"+ address +"')";  
				
	con.createStatement().execute(sql);	 //執行SQL
	con.close();						 //關閉連線
	out.print("<script>alert('註冊成功！');</script>"); 
	response.setHeader("refresh","0;URL=index.jsp");
}
catch ( SQLException e)
{
	out.print(e.toString());
		   
}
%>
</body>
</html>