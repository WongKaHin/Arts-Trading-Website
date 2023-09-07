<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
	if(request.getParameter("id") !=null && request.getParameter("psw") != null)
{
	sql = "SELECT * FROM member WHERE ID=? AND Password=?";
	PreparedStatement pstmt = null;
	pstmt = con.prepareStatement(sql);
    pstmt.setString(1,request.getParameter("id"));
    pstmt.setString(2,request.getParameter("psw"));

	ResultSet paperrs = pstmt.executeQuery();
	if(request.getParameter("id").equals("admin") && request.getParameter("psw").equals("12345"))
	{
	  session.setAttribute("ID",request.getParameter("id"));
      response.sendRedirect("index.jsp") ;
	}
    
    else if(paperrs.next())
	{            
        session.setAttribute("ID",request.getParameter("id"));
        out.print("<script>alert('登入成功');</script>"); 
		response.setHeader("refresh","0;URL=index.jsp");
    }
    else
	{
		out.print("<script>alert('密碼錯誤');</script>"); 
		response.setHeader("refresh","0;URL=index.jsp");
	}
}
%>