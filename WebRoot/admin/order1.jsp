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
  <body>
	<div align="center">
	<jsp:include flush="true" page="/admin/top.jsp"/>
	<form action="servlet/OrderList1Servlet" name="form1" method="post">
	<table border="1" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" bgcolor="#CCFFFF">
		<tr>
			<td>按用户名查询</td>
			<td>
			<table border="0" cellspacing="0" cellpadding="0" id="table2">
				<tr>
					<td> <input type="text" name="username" size="14"></td>
					<td><input type="submit" value="查询"></td>
				</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>按菜品名称查询</td>
			<td>
			<table border="0" cellspacing="0" cellpadding="0" id="table2">
				<tr>
					<td> <input type="text" name="bookname" size="14"></td>
					<td><input type="submit" value="查询"></td>
				</tr>
				</table>
				</td>
		</tr>
		</table>
	</form>
  	<table border="0" width="800" id="table1" bgcolor="#CCFFCC">
		<tr>
			<td align="center">用户名</td>
			<td align="center">真实姓名</td>
			<td align="center">菜品名称</td>
			<td align="center">单价</td>
			<td align="center">时间</td>
			<td align="center">　</td>
		</tr>
		<jsp:include flush="true" page="/servlet/ListServlet"/>
		<%
		ArrayList books = null;
		if(request.getAttribute("order1") == null){
			books = (ArrayList)request.getAttribute("orders1");
		}else{
			books = (ArrayList)request.getAttribute("order1");
		}
		for(int i = 0;i < books.size();i++){
			ArrayList alRow = (ArrayList)books.get(i);
		 %>
		<tr>
			<td bgcolor="#FFE3BB" align="center" height="20"><a href="servlet/AdminShowUserServlet?id=<%=alRow.get(4) %>" title="点击查看该用户详细信息"><%=alRow.get(0) %></a></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(1) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><a href="servlet/BookinfServlet?id=<%=alRow.get(5) %>&adminshow=1"><%=alRow.get(2) %></a></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(6) %>元</td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(7) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><a href="servlet/DelServlet?beforehand=<%=alRow.get(3) %>">删除</a></td>
		</tr>
		<%} %>
	</table>
	<table><tr><td>
	<style media=print> 
.Noprint{display:none;}<!--用本样式在打印时隐藏非打印项目--> 
.PageNext{page-break-after: always;}<!--控制分页--> 
</style> 
<object id="WebBrowser" width=0 height=0 classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"> 
</object>
<center class="Noprint" > 
<input type=button value=打印 onclick=document.all.WebBrowser.ExecWB(6,1)> 
<input type=button value=直接打印 onclick=document.all.WebBrowser.ExecWB(6,6)> 
<input type=button value=页面设置 onclick=document.all.WebBrowser.ExecWB(8,1)>
<input type=button value=打印预览 onclick=document.all.WebBrowser.ExecWB(7,1)> 
</center>
	</td></tr></table>
  	</div>
  </body>
</html>