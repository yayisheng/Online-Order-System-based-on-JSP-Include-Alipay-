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
  <%
  String error = (String)request.getAttribute("error");
  if(error != null && !error.equals("")){
  	%><script>alert('������в�Ʒ������ɾ��!')</script><%
  }
   %>
   <%
  String ok = (String)request.getAttribute("ok");
  if(ok != null && !ok.equals("")){
  	%><script>alert('��ӳɹ�!')</script><%
  }
   %>
	<div align="center">
	<jsp:include flush="true" page="/servlet/ListServlet"/>
	<jsp:include flush="true" page="/admin/top.jsp"/>
  	<table border="0" width="800" id="table1" bgcolor="#CCFFCC">
		<tr>
			<td align="center">���ID</td>
			<td align="center">�������</td>
			<td align="center">��</td>
			<td align="center">��</td>
		</tr>
		<%
		ArrayList books = (ArrayList)request.getAttribute("type");
		for(int i = 0;i < books.size();i++){
			ArrayList alRow = (ArrayList)books.get(i);
		 %>
		<tr>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(0) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(1) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><a href="servlet/UpdateTypeServlet?id=<%=alRow.get(0) %>">�޸�</a></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><a href="servlet/DelServlet?typeid=<%=alRow.get(0) %>">ɾ��</a></td>
		</tr>
		<%} %>
		<tr>
			<td bgcolor="#FFE3BB" align="center" colspan="4" height="25"><a href="admin/addtype.jsp">��������</a></td>
		</tr>
	</table>
  	</div>
  </body>
</html>