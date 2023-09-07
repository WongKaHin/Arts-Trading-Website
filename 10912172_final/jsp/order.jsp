<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.text.*"%>
<%@include file="config.jsp" %>
<%
    try
    {
        request.setCharacterEncoding("UTF-8");
    
        if(session.getAttribute("ID")!=null){
        String username=session.getAttribute("ID").toString();
		String payway=request.getParameter("pay");
		
        sql="select * from buy where 會員id='"+ username+"'";
        ResultSet rs=con.createStatement().executeQuery(sql);
		
        int total=0;
        while(rs.next()){
		java.sql.Date day=new java.sql.Date(System.currentTimeMillis());
        String no=rs.getString("會員id");
        int num= rs.getInt("購買數量");
        String g=rs.getString("會員id");
        String itemid=rs.getString("產品id");
        String sqlProduct="select * from products where 產品ID='"+itemid+"'";
        ResultSet rsProduct=con.createStatement().executeQuery(sqlProduct);
        rsProduct.next();
		String q =rsProduct.getString("產品ID");
		int t =rsProduct.getInt("庫存");
        String p_name= rsProduct.getString("產品名稱");
        String p_picture=rsProduct.getString("圖片");
		
        int p_price= rsProduct.getInt("價格");
        total += (p_price*num);
		int king = t - num ;
 		String w = Integer.toString(king);
		String x = Integer.toString(num);
		
 		sql = "Update `products` Set `庫存` ='"+w+"' WHERE `產品ID` ='"+q+"'"; 
 		con.createStatement().execute(sql);
 		sql="INSERT `order` (payway,  會員id, day, 產品id, 產品名稱, 單價, 數量, total) ";
 		sql+="VALUES ('" + payway+ "', ";
 		sql+="'"+ username+"', ";  
		sql+="'"+ day+"', ";  
 		sql+="'"+ itemid+"', "; 
 		sql+="'"+ p_name+"', ";  
 		sql+="'"+ p_price+"', "; 
		sql+="'"+ x+"', "; 
 		sql+="'"+ total+"')"; 
 		con.createStatement().execute(sql);

		}

 		con.close();

        }

        response.setHeader("refresh","0;URL=productrecord.jsp");
    }
	
    catch(SQLException s)
    {
        out.print(s.toString());
    }
%>
