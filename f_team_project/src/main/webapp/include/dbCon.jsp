<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String url = "jdbc:oracle:thin:@//localhost1521/xe";
String username = "scott";
String userpass = "123456";

Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection (url,username,userpass);
Statement stmt = conn.createStatement();
%>

<% request.setCharacterEncoding("utf-8"); //한글깨짐 방지 %>
