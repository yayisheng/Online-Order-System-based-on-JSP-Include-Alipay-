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
				
				if (document.form1.name.value == "" ) 
				{
					alert("�û�������Ϊ��!");
					document.form1.name.focus();
					return false;
				}
				if (document.form1.pwd.value == ""  )  
				{
					alert("���벻��Ϊ��!");
					document.form1.pwd.focus();
					return false;
				}
				if (document.form1.qpwd.value == ""  )  
				{
					alert("ȷ�����벻��Ϊ��!");
					document.form1.qpwd.focus();
					return false;
				}
				if (document.form1.qpwd.value != document.form1.pwd.value  )  
				{
					alert("�������벻һ��!");
					document.form1.qpwd.focus();
					return false;
				}
				if (document.form1.zname.value == ""  )  
				{
					alert("��ʵ��������Ϊ��!");
					document.form1.zname.focus();
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
<%
String error = (String)request.getAttribute("error");
if(error != null && error.equals("1")){
%><script>alert('�û����ظ�!')</script><%
}
%>
  <body>
  <form action="servlet/RegServlet" name="form1" method="post" onSubmit="return check11()">
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
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="name"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>��������¼���û���
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">��&nbsp;&nbsp; &nbsp;�룺</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="password" name="pwd"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>���ȱ������5��С��16���ַ���ֻ��ΪӢ���֡�����
					</td>
				</tr>				
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">ȷ�����룺</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="password" name="qpwd"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>�뽫����������ٴ�����
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">��ʵ������</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="zname"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>��д������ʵ������
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">��&nbsp; &nbsp;&nbsp;��</font>
					</td>
					<td align="center" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input type="radio" name="sex" checked value="��">
						��&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="sex" value="Ů">
						Ů
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>����д������ʵ��Ϣ
					</td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">��&nbsp;&nbsp; &nbsp;�䣺</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="age"/>
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
						<input class="input7" type="text" name="noid"/>
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
						<input class="input7" type="text" name="address"/>
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
						<input class="input7" type="text" name="phone"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>����д������ʵ��Ϣ(��ʽΪ02411111111��13911111111) </td>
				</tr>
				<tr>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="#996633">�������䣺</font>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input class="input7" type="text" name="email"/>
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
						<input class="input7" type="text" name="code"/>
					</td>
					<td bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<font color="red">&nbsp;* </font>����д������ʵ��Ϣ(��ʽΪ111111)</td>
				</tr>
				<tr>
					<td colspan="3" align="center" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" height="25">
						<input type="submit" value="ע��">
					</td>
				</tr>
				<tr>
				<%
				if(request.getAttribute("ok") != null){
				%>
					<th colspan="3" height="40" style="border: 2px groove #D5CD71" bgcolor="#FCCE8F">
						<font size="3" color="red"> ��ϲ��ע��ɹ���������</font><br>
						��ҳ����5���Ӻ��Զ���ת����ҳ����û�Զ���ת�밴<a href="qiantai/index.jsp">����</a>
					</th>
				<%}%>
				</tr>
			</table>
  </div>
  </form>
  <jsp:include flush="true" page="Copyright.jsp"/>
  </body>
</html>