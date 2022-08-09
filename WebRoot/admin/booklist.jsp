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
<%
String ok = (String)request.getAttribute("ok");
if(ok != null && ok.equals("1")){
%><script>alert('添加成功!')</script><%
}
 %>
  <jsp:include flush="true" page="/servlet/SessAdminServlet"/>
  <body style="background:url(img/bg1.jpeg)">
	<div align="center">
	<jsp:include flush="true" page="/servlet/ListServlet"/>
	<jsp:include flush="true" page="/admin/top.jsp"/>
  	<table border="0" width="800" id="table1" bgcolor="#CCFFCC">
		<tr>
			<td align="center">菜品名称</td>
			<td align="center">原料</td>
			<td align="center">单价</td>
			<td align="center">说明</td>
			<td align="center">　</td>
			<td align="center">　</td>
		</tr>
		<%
		ArrayList books = (ArrayList)request.getAttribute("books");
		for(int i = 0;i < books.size();i++){
			ArrayList alRow = (ArrayList)books.get(i);
		 %>
		<tr>
			<td bgcolor="#FFE3BB" align="center" height="20"><a href="servlet/BookinfServlet?id=<%=alRow.get(0) %>&adminshow=1"><%=alRow.get(1) %></a></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(2) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(12) %>元</td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(7) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><a href="servlet/BookinfServlet?id=<%=alRow.get(0) %>&adminupdate=1">修改</a></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><a href="servlet/DelServlet?id=<%=alRow.get(0) %>">删除</a></td>
		</tr>
		<%} %>
		<tr>
			<td bgcolor="#FFE3BB" align="center" colspan="6" height="25"><a href="admin/addbook.jsp">添加新菜品</a></td>
		</tr>
	</table>
  	</div>
  </body>
</html>