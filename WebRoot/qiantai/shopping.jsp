<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�ҵĶ��ͳ�</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="img/css.css" type="text/css" rel="stylesheet"/>
	
  </head>
    	<style>
<!--
.input1 {
	BORDER-BOTTOM-WIDTH: 0px; WIDTH: 60px; COLOR: #000000; HEIGHT: 20px; BORDER-RIGHT-WIDTH: 0px
}
-->
</style> 
  <script language="JavaScript">
		function abc222(id,i)
			{
				form1.action="servlet/ShoppingServlet?i="+i+"&bookId="+id;
  				form1.submit();
			}
</script>
  <%
String nulls = (String)request.getAttribute("null");
String ok = (String)request.getAttribute("ok");
if(nulls != null && nulls.equals("1")){
%><script>alert('���Ķ��ͳ���û����Ʒ!')</script><%
}
if(ok != null && ok.equals("1")){
%><script>alert('��ϲ�������ͳɹ�!')</script><%
}
 %>
  <body>
  <form name="form1" action="" method="post">
  <table bgcolor="#ffcc00" border="0" cellpadding="1" cellspacing="1" align="center" width="620">
		<tr bgcolor="#ffe2a6">
			<td align="center" valign="middle" colspan="6">
			<font face="�����п�" size="3">�ҵĶ��ͳ�</font></td>
		</tr>
		<tr bgcolor="#ffe2a6">
			<td align="center" valign="middle">��Ʒ����</td>
			<td align="center" valign="middle">����</td>
			<td align="center" valign="middle">����</td>
			<td align="center" valign="middle">�ܼ�</td>
			<td align="center" valign="middle">�޸�����</td>
			<td align="center" valign="middle">ɾ��</td>
		</tr>
		<%
		ArrayList shopping = (ArrayList)session.getAttribute("shopping");
		int sum = 0;
  		int sumPrices = 0;
		if(shopping == null || shopping.size() == 0){
		%>
		<tr bgcolor="#fff9ec"><td colspan="6" align="center" valign="middle"><font size="1" color="red">���ͳ���û�в�Ʒ��</font></td></tr>
		<%}else{
		for(int i = 0;i < shopping.size();i++){
		ArrayList alShop = (ArrayList)shopping.get(i);
		sum += Integer.parseInt(alShop.get(3).toString());
		sumPrices += Integer.parseInt(alShop.get(2).toString())*Integer.parseInt(alShop.get(3).toString());
		%>
		<tr bgcolor="#fff9ec">
			<td valign="middle" align="center"><a href="servlet/BookinfServlet?id=<%=alShop.get(0) %>"><%=alShop.get(1)%></a></td>
			<td valign="middle" align="center"><%=alShop.get(2)%>Ԫ</td>
			<td valign="middle" align="center"><input class="input1" type="text" value="<%=alShop.get(3)%>" name="num<%=i %>"/></td>
			<td valign="middle" align="center"><%=Integer.parseInt(alShop.get(2).toString())*Integer.parseInt(alShop.get(3).toString())%>Ԫ</td>
			<td align="center" valign="middle">
			<input type="button" value="�޸�����" onclick="abc222(<%=alShop.get(0)%>,<%=i %>)"/></td>
			<td align="center" valign="middle">
			<a href="servlet/ShoppingServlet?del=<%=i%>">
            <img src="img/trash.gif" border="0" height="17" width="15" alt="">
          	</a>
			</td>
		</tr>
		<%}%>
		<tr bgcolor="#fff9ec">
			<td colspan="6" align="center">���ͳ����в�Ʒ��<%=shopping.size()%>����������<%=sum%>�����ƣ�<%=sumPrices%>Ԫ��</td>
		</tr>
		<%}%>
		<tr bgcolor="#ffffff">
			<td colspan="6" align="center" height="25">
				<a href="qiantai/index.jsp">
		          ��������
		        </a>
		        <a href="servlet/ShoppingServlet?remove=1">
		          ��ն��ͳ�
		        </a>
		        <a href="servlet/ReckoningServlet">
		          ����̨
		        </a>
		     </td>
		</tr>
		<tr><td colspan="6"valign="middle"><font color="red">*</font>�����ˢ���˶��ͳ�ҳ�棬�ϴ�������Ʒ��Ŀ��������1��</br><font color="red">*</font>��������������̨��ϵͳ���ᱣ�����Ķ���������������Ĺ��ﳵ��</td></tr>
	</table>
	</form>
  </body>
</html>
