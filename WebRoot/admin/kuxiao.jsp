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
	<form action="servlet/KuXiaoServlet" name="form1" method="post">
	<table border="1" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" bgcolor="#CCFFFF">
		<tr>
			<td>���������ѯ</td>
			<td>
			<table border="0" cellspacing="0" cellpadding="0" id="table2">
				<tr>
					<td>���� <input type="text" name="kuda" size="8"></td>
					<td><input type="submit" value="��ѯ"></td>
				</tr>
				<tr>
					<td>С�� <input type="text" name="kuxiao" size="8"></td>
					<td><input type="submit" value="��ѯ"></td>
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td>��������ѯ</td>
			<td>
			<table border="0" cellspacing="0" cellpadding="0" id="table2">
				<tr>
					<td>���� <input type="text" name="souda" size="8"></td>
					<td><input type="submit" value="��ѯ"></td>
				</tr>
				<tr>
					<td>С�� <input type="text" name="souxiao" size="8"></td>
					<td><input type="submit" value="��ѯ"></td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
	</form>
  	<table border="0" width="800" id="table1" bgcolor="#CCFFCC">
		<tr>
			<td align="center">��Ʒ����</td>
			<td align="center">��ʦ</td>
			<td align="center">������</td>
			<td align="center">����</td>
			<td align="center">ÿ�ճɱ�</td>
			<td align="center">ԭ���Ͽ����</td>
			<td align="center">���۴���</td>
			<td align="center">�ϲ˴���</td>
		</tr>
		<%
		ArrayList books = (ArrayList)request.getAttribute("books");
		if(books != null){
		for(int i = 0;i < books.size();i++){
			ArrayList alRow = (ArrayList)books.get(i);
		 %>
		<tr>
			<td bgcolor="#FFE3BB" align="center" height="20"><a href="servlet/BookinfServlet?id=<%=alRow.get(0) %>&adminshow=1"><%=alRow.get(1) %></a></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(2) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(3) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(12) %>Ԫ</td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(5) %>Ԫ</td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(6) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(13) %></td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(10) %></td>
		</tr>
		<%}} %>
	</table>
  	</div>
  </body>
</html>