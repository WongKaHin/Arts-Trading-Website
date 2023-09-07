<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>add</title>
</head>
<body>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫
    sql="use test";
    con.createStatement().execute(sql);
    request.setCharacterEncoding("UTF-8");  
    String name = request.getParameter("name");
    String author = request.getParameter("author");
    String price = request.getParameter("price");
    String img = request.getParameter("img");   
    String kind = request.getParameter("kind");   
    String contant = request.getParameter("contant");  
    String amount = request.getParameter("amount"); 
    String pid = request.getParameter("pid"); 
//Step 4: 執行 SQL 指令	
    sql="INSERT products (`產品名稱`, `作者`, `產品id`, `價格`, `圖片`, `種類`,`內文`,`庫存`) ";
    sql+="VALUES ('" + name + "', ";
    sql+="'"+author+"\', ";
    sql+="'"+pid+"', ";
    sql+="'"+price+"', ";
    sql+="'"+"assets/images/product/product"+img+"', "; 
    sql+="'"+kind+"', ";   
    sql+="'"+contant+"', ";
    sql+="'"+amount+"')";  

    con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
		   out.print("<script>alert('成功新增產品');</script>");
	response.setHeader("refresh","0;URL=Mproduct-add.jsp");
       }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>