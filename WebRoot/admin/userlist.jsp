<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Language" content="zh-cn">
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="img/css.css">
	

  </head>
  <jsp:include flush="true" page="/servlet/SessAdminServlet"/>
  <body style="background:url(img/bg1.jpeg)">
	<div align="center">
	<jsp:include flush="true" page="/servlet/ListServlet"/>
	<jsp:include flush="true" page="/admin/top.jsp"/>
  	<table border="0" width="800" id="table1" bgcolor="#CCFFCC">
		<tr>
			<td align="center">会员用户名</td>
			<td align="center">会员真实姓名</td>
			<td align="center">性别</td>
			<td align="center">年龄</td>
			<td align="center">联系方式</td>
			<td align="center">家庭住址</td>
			<td align="center">　</td>
		</tr>
		<%
		ArrayList books = (ArrayList)request.getAttribute("users");
		for(int i = 0;i < books.size();i++){
			ArrayList alRow = (ArrayList)books.get(i);
		 %>
		<tr>
			<td bgcolor="#FFE3BB" align="center" height="20"><a href="servlet/AdminShowUserServlet?id=<%=alRow.get(0) %>" title="点击查看该用户详细信息"><%=alRow.get(1) %></a></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(3) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(4) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(5) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(8) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(7) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><a href="servlet/DelServlet?userid=<%=alRow.get(0) %>">删除</a></td>
		</tr>
		<%} %>
	</table>
  	</div>
  </body>
</html>