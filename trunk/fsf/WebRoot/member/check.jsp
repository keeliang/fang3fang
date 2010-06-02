<%@ page contentType="text/html;charset=UTF-8" %>
<%
String UserName = request.getParameter("UserName");

String sql = "SELECT * FROM dbo.USERS WHERE UserName='" + UserName + "'";

java.sql.Connection sqlConn;
java.sql.Statement sqlStmt;
java.sql.ResultSet sqlRs;

Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
String url = "jdbc:microsoft:sqlserver://192.168.228.7:1433;DatabaseName=Fang3Fang";
String url1 = "jdbc:microsoft:sqlserver://192.168.226.238:1433;DatabaseName=Fang3Fang";
String url2 = "jdbc:sqlserver://192.168.228.6:1433;DatabaseName=db1";
String user = "sa";
String user1 = "f3f";
String password = "sa";
String password1 = "abcabc";

sqlConn = java.sql.DriverManager.getConnection(url1,user1,password1);
//out.println("Connect Database successful!");

sqlStmt = sqlConn.createStatement();
sqlRs = sqlStmt.executeQuery(sql);
boolean check = sqlRs.next();
if(check){
	out.println("用户名" + UserName + "已被使用！");
}else{
	out.println("用户名" + UserName + "可用！");
}
%>