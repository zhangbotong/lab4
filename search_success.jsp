<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'search_success.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<h2>this is the mix2 of search_success.jsp</h2>
  	<p>success</p>
    <s:iterator value="baas"> 
    <s:property value="ISBN" /> 
    <s:property value="title" />
    <s:property value="authorID" />
    <s:property value="publisher" />
    <s:property value="publishDate" />
    <s:property value="price" />
    <s:a href="delete.action?isbn=%{ISBN}" onclick="return confirm('are you sure?');">delete</s:a>
    
   <br/>
    </s:iterator>
    
  </body>
</html>
