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
	<table border="1" bordercolorlight="#C0C0C0" cellspacing="0" cellpadding="0" bordercolordark="#C0C0C0" bgcolor="#E8E8E8" style="border-collapse: collapse">
		<tr>
			<td align="center"><a href="admin/nutrition_add.jsp">添加营养小贴士</a></td>
		</tr>
		</table>
  	<table border="0" width="800" id="table1" bgcolor="#CCFFCC">
		<tr>
			<td align="center" colspan="3" height="25">营养小贴士列表</td>
		</tr>
		<tr>
			<td align="center">主题</td>
			<td align="center">主要内容</td>
			<td align="center">　</td>
		</tr>
		<%
		ArrayList nutrition = (ArrayList)request.getAttribute("nutrition");
		for(int i = 0;i < nutrition.size();i++){
			ArrayList alRow = (ArrayList)nutrition.get(i);
		 %>
		<tr>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(1) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(2) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><a href="servlet/DelServlet?nutrition=<%=alRow.get(0) %>">删除</a></td>
		</tr>
		<%} %>
	</table>
  	</div>
  </body>
</html>