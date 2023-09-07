<%@ page import = "java.sql.*, java.util.*,  java.text.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<%
try{
	if(session.getAttribute("ID") != null)
	{
		String pid=request.getParameter("pid");
		String pname=request.getParameter("pname");
		String x=request.getParameter("quantity");
		String name=(String)session.getAttribute("ID");
		
		sql="INSERT buy (會員id, 產品id, 產品名稱, 購買數量) ";
		sql+="VALUES ('" + name + "', ";
		sql+="'"+ pid +"', ";
		sql+="'"+ pname +"', ";
		sql+="'"+ x +"' ) ";

		con.createStatement().execute(sql);
		con.close();	 //執行SQL
		out.println("<script>alert('成功加入購物車');</script>");
		response.setHeader("refresh","0;URL=cart.jsp") ;
		}
	else
	{
		out.print("<script>alert('請先登入會員!');</script>");
		response.setHeader("refresh","0;URL=cart.jsp");
	}	
}
catch ( SQLException e)
{
	out.print(e.toString());
		   
}
%>
</body>
</html>









		 
