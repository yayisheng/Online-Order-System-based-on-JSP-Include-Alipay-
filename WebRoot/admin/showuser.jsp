<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
  </head>

  <body>
  <form action="" name="form1" method="post">
  <div align="center">
  <jsp:include flush="true" page="/admin/top.jsp"/><br>
  <table bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" border="1" width="369">
  <%
  ArrayList al = (ArrayList)request.getAttribute("user");
  ArrayList user = (ArrayList)al.get(0);
   %>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="30" bgcolor="#FFE3BB" align="right" width="80">
						<font color="#996633">�� �� ����</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25" bgcolor="#99CCFF">
					<%=user.get(1) %></td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="30" bgcolor="#FFE3BB" align="right" width="80">
						<font color="#996633">��ʵ������</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25" bgcolor="#99CCFF">
					<%=user.get(3) %></td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="30" bgcolor="#FFE3BB" align="right" width="80">
						<font color="#996633">��&nbsp; &nbsp;&nbsp;��</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25" bgcolor="#99CCFF">
					<%=user.get(4) %></td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="30" bgcolor="#FFE3BB" align="right" width="80">
						<font color="#996633">��&nbsp;&nbsp; &nbsp;�䣺</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25" bgcolor="#99CCFF">
					<%=user.get(5) %></td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="30" bgcolor="#FFE3BB" align="right" width="80">
						<font color="#996633">���֤�ţ�</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25" bgcolor="#99CCFF">
					<%=user.get(6) %></td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="30" bgcolor="#FFE3BB" align="right" width="80">
						<font color="#996633">��ͥסַ��</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25" bgcolor="#99CCFF">
					<%=user.get(7) %></td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="30" bgcolor="#FFE3BB" align="right" width="80">
						<font color="#996633">�绰���룺</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="26" bgcolor="#99CCFF">
					<%=user.get(8) %></td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="30" bgcolor="#FFE3BB" align="right" width="80">
						<font color="#996633">�������䣺</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="24" bgcolor="#99CCFF">
					<%=user.get(9) %></td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="30" bgcolor="#FFE3BB" align="right" width="80">
						<font color="#996633">�������룺</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25" bgcolor="#99CCFF">
					<%=user.get(10) %></td>
				</tr>
				</table>
  </div>
  </form>
  </body>
</html>