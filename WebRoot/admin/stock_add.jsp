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
	<script language="JavaScript" src="img/date.js"></script>
	

  </head>
<style>
<!--
*{padding:0;margin:0}
.ry{background:#FFF8F0}
td{font:13px ����}
#TbM td{border:0;font-size:13px;line-height:24px!important;line-height:24px}
}
#TbM td.pl{width:64px}
a:link{color:#000;text-decoration:none}
a:link.greenfont1{color:#178517; cursor: hand; font-family:����; text-decoration: none}
#TbM td.pr{width:60px}
.rb{background:#F0F7FF}
a:link.greenfont{color:#179117; cursor: hand; font-family:����; text-decoration: none}
}
.redfont{color:#fd2828}
-->
</style>
<script language="JavaScript">
		function check11()
			{
				var reg = "^[0-9a-zA-Z]+([0-9a-zA-Z])+$";        
              	var regu = "^[0-9a-zA-Z]+$"; 
             	var re = new RegExp(reg); 
				if (document.form1.name.value == "" ) 
				{
					alert("������ɹ�Ʒ����!");
					document.form1.name.focus();
					return false;
				}
				if (document.form1.unit.value == ""  )  
				{
					alert("������ɹ�Ʒ��λ!");
					document.form1.unit.focus();
					return false;
				}
				if (document.form1.sums.value == ""  )  
				{
					alert("������ɹ�Ʒ����!");
					document.form1.sums.focus();
					return false;
				}
				if (isNaN(document.form1.sums.value )  )  
				{
					alert("�ɹ�Ʒ��������������!");
					document.form1.sums.focus();
					return false;
				}
				if (document.form1.price.value == ""  )  
				{
					alert("������ɹ�Ʒ����!");
					document.form1.price.focus();
					return false;
				}
				if (isNaN(document.form1.price.value )  )  
				{
					alert("�ɹ�Ʒ��������������!");
					document.form1.price.focus();
					return false;
				}
			}
</script>
<%
String error = (String)request.getAttribute("error");
if(error != null && error.equals("1")){
%><script>alert('��Ʒ�����ظ�!')</script><%
}
 %> 
	<jsp:include flush="true" page="/servlet/SessAdminServlet"/> 
  <body>
	<div align="center">
	<jsp:include flush="true" page="/servlet/ListServlet"/>
	<jsp:include flush="true" page="/admin/top.jsp"/>
	<form action="servlet/StockAddServlet" method="post" name="form1" onSubmit="return check11()">
	<table id="table2" style="width: 800; border-left: 1px solid #7BD676; border-right: 1px solid #7BD676; border-top: 11px solid #7bd676; border-bottom: 1px solid #7BD676; margin: 0; padding: 0" cellSpacing="1" cellPadding="0">
				<tbody style="margin: 0; padding: 0">
					<tr class="rb">
						<td class="pl" align="center" colspan="2" height="25">
						��Ӳɹ�Ʒ</td>
					</tr>
					<tr class="ry">
						<td class="pl" width="382" align="right">
						<span style="color: #874604">�ɹ�Ʒ���ƣ�</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: ����; border: 0 none; margin: 0; padding: 0" width="409" align="left">
						<input class="input6" type="text" name="name" size="20"></td>
					</tr>
					<tr class="rb">
						<td class="pl" width="382" align="right">
						<span style="color: #874604">�ɹ�Ʒ��λ��</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: ����; border: 0 none; margin: 0; padding: 0" width="409" align="left">
						<input class="input6" type="text" name="unit" size="20"></td>
					</tr>					
					<tr class="ry">
						<td class="pl" width="382" align="right">
						<span style="color: #874604">�ɹ�Ʒ������</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: ����; border: 0 none; margin: 0; padding: 0" width="409" align="left">
						<input class="input6" type="text" name="sums" size="20"></td>
					</tr>
					<tr class="rb">
						<td class="pl" width="382" align="right">
						<span style="color: #874604">�ɹ�Ʒ������</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: ����; border: 0 none; margin: 0; padding: 0" width="409" align="left">
						<input class="input6" type="text" name="price" size="20"></td>
					</tr>					
					<tr><td colspan="2" align="center"><input type="submit" value="���"/></td></tr>
					</table>
	</form>
  	</div>
  </body>
</html>