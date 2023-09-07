<%@ page import = "java.sql.*, java.util.*,  java.text.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>

<%
try
{
    request.setCharacterEncoding("utf-8");
	String pid=request.getParameter("pid");
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String comment = request.getParameter("comment");

	sql="INSERT board (會員id, 會員名稱, 產品id, 評論內容)";
	sql+="VALUES ('" + id+ "', ";
	sql+="'" + name + "', "; 
	sql+="'" + pid + "', "; 
	sql+="'"+ comment +"')"; 
				
	con.createStatement().execute(sql);	 //執行SQL
	con.close();						 //關閉連線
	out.print("<script>alert('留言成功！');</script>"); 
	response.setHeader("refresh","0;URL=index.jsp");
}
catch ( SQLException e)
{
	out.print(e.toString());
		   
}
%>
</body>
</html>