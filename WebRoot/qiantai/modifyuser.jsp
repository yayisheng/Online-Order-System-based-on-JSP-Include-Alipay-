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
  <script language="JavaScript">
		function check11()
			{				
				if (document.form1.pwd.value == ""  )  
				{
					alert("���벻��Ϊ��!");
					document.form1.pwd.focus();
					return false;
				}
				if (document.form1.age.value == ""  )  
				{
					alert("���䲻��Ϊ��!");
					document.form1.age.focus();
					return false;
				}
				if (document.form1.noid.value == ""  )  
				{
					alert("���֤����Ϊ��!");
					document.form1.noid.focus();
					return false;
				}
				if (document.form1.address.value == ""  )  
				{
					alert("��ͥסַ����Ϊ��!");
					document.form1.address.focus();
					return false;
				}
				if (document.form1.phone.value == ""  )  
				{
					alert("�绰���벻��Ϊ��!");
					document.form1.phone.focus();
					return false;
				}
				if (document.form1.email.value == ""  )  
				{
					alert("�������䲻��Ϊ��!");
					document.form1.email.focus();
					return false;
				}
				if (document.form1.code.value == ""  )  
				{
					alert("�������벻��Ϊ��!");
					document.form1.code.focus();
					return false;
				}
			}
</script>
<jsp:include flush="true" page="/servlet/SessLoginServlet"/>
  <body>  
  <form action="servlet/ModifyUserServlet" name="form1" method="post" onSubmit="return check11()">
  <jsp:include flush="true" page="top.jsp"/>
  <div align="center"><br>
  <table bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" border="1">
				<tr>
					<td colspan="3" align="center" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#666666">����д�û���Ϣ(��<font color="red">*</font>Ϊ������)</font>
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">�� �� ����</font>
					</td>
					<%
  					ArrayList user = (ArrayList)request.getAttribute("user");
  					ArrayList users = (ArrayList)user.get(0);
   					%>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
					<%=users.get(1) %></td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;</font></td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">��&nbsp;&nbsp; &nbsp;�룺</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="password" name="pwd" value="<%=users.get(2) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>���ȱ������5��С��16���ַ���ֻ��ΪӢ���֡�����
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">��ʵ������</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
					<%=users.get(3) %></td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						��</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">��&nbsp; &nbsp;&nbsp;��</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
					<%=users.get(4) %></td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						��</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">��&nbsp;&nbsp; &nbsp;�䣺</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="age" value="<%=users.get(5) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>������������ʵ����
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">���֤�ţ�</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="noid" value="<%=users.get(6) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>����д������ʵ��Ϣ
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">��ͥסַ��</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="address" value="<%=users.get(7) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>����д������ʵ��Ϣ
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">�绰���룺</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="phone" value="<%=users.get(8) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>����д������ʵ��Ϣ(��ʽΪ02411111111��13911111111) </td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">�������䣺</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="email" value="<%=users.get(9) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>����д����Ч���ʼ���ַ���Ա�������Ϊ���ṩ��Ч�ķ���
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">�������룺</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="code" value="<%=users.get(10) %>"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>����д������ʵ��Ϣ(��ʽΪ111111)</td>
				</tr>
				<tr>
					<td colspan="3" align="center" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input type="submit" value="�޸�">
					</td>
				</tr>
			</table><input type="hidden" name="id" value="<%=users.get(0) %>">
  </div>
  </form>
  <jsp:include flush="true" page="Copyright.jsp"/>
  </body>
</html>