<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>���綩�ͺ�̨����</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="img/lucfron.css">
	

  </head>
  
  <body topmargin="0" leftmargin="0" rightmargin="0">
	<div align="center">
	<table style="border-style: dotted; border-width: 1px">
	<tr><td background="img/tpbg.jpg" width="795" height="100"></td></tr>
  <tr>
  <td align="center" valign="top">
  <table width="100%">
  <tr><td align="center" bgcolor="#C0C0C0">
  <table>
  <tr>
  <td><a href="admin/booklist.jsp">��Ʒ����|</a></td>
  <td><a href="admin/typelist.jsp">��Ʒ������|</a></td>
  <td><a href="admin/nutrition_list.jsp">Ӫ��С��ʿ����|</a></td>
  <td><a href="admin/userlist.jsp">��Ա����|</a></td>
  <td><a href="admin/emp_list.jsp">Ա������|</a></td>
  <td><a href="admin/leave_word.jsp">���Թ���|</a></td>
  <td><a href="admin/stock_list.jsp">�ɹ�����|</a></td>
  <td><a href="admin/order2.jsp">���۶�����ѯ|</a></td> 
  <td><a href="admin/statistic_list.jsp">ͳ�ƹ���|</a></td> 
  <td><a href="admin/modifypwd.jsp">�û�����|</a></td>
  <td><a href="admin/fenxi.jsp">�������ݷ���|</a></td>
  <td><a href="servlet/RemoveServlet?admin=1">ע���˳�|</a></td> 
  </tr>
  </table>
  </td></tr>
  </table>
  </td>
  </tr>
  </table>
  	</div>
  </body>
</html>