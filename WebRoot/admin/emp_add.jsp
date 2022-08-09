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
td{font:13px 宋体}
#TbM td{border:0;font-size:13px;line-height:24px!important;line-height:24px}
}
#TbM td.pl{width:64px}
a:link{color:#000;text-decoration:none}
a:link.greenfont1{color:#178517; cursor: hand; font-family:宋体; text-decoration: none}
#TbM td.pr{width:60px}
.rb{background:#F0F7FF}
a:link.greenfont{color:#179117; cursor: hand; font-family:宋体; text-decoration: none}
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
					alert("请输入员工姓名!");
					document.form1.name.focus();
					return false;
				}
				if (document.form1.birthday.value == ""  )  
				{
					alert("请输入员工生日!");
					document.form1.birthday.focus();
					return false;
				}
				if (document.form1.phone.value == ""  )  
				{
					alert("请输入联系电话!");
					document.form1.phone.focus();
					return false;
				}
				if (isNaN(document.form1.phone.value )  )  
				{
					alert("联系电话必须是数字!");
					document.form1.phone.focus();
					return false;
				}
				if (document.form1.addr.value == ""  )  
				{
					alert("请输入家庭住址!");
					document.form1.addr.focus();
					return false;
				}
				if (document.form1.duty.value == ""  )  
				{
					alert("请输入职务!");
					document.form1.duty.focus();
					return false;
				}
			}
</script>
<%
String error = (String)request.getAttribute("error");
if(error != null && error.equals("1")){
%><script>alert('菜品名称重复!')</script><%
}
 %> 
	<jsp:include flush="true" page="/servlet/SessAdminServlet"/> 
  <body>
	<div align="center">
	<jsp:include flush="true" page="/servlet/ListServlet"/>
	<jsp:include flush="true" page="/admin/top.jsp"/>
	<form action="servlet/EmpAddServlet" method="post" name="form1" onSubmit="return check11()">
	<table id="table2" style="width: 800; border-left: 1px solid #7BD676; border-right: 1px solid #7BD676; border-top: 11px solid #7bd676; border-bottom: 1px solid #7BD676; margin: 0; padding: 0" cellSpacing="1" cellPadding="0">
				<tbody style="margin: 0; padding: 0">
					<tr class="rb">
						<td class="pl" align="center" colspan="2" height="25">
						添加员工</td>
					</tr>
					<tr class="ry">
						<td class="pl" width="382" align="right">
						<span style="color: #874604">员工姓名：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" width="409" align="left">
						<input class="input6" type="text" name="name" size="20"></td>
					</tr>
					<tr class="rb">
						<td class="pl" width="382" align="right">
						<span style="color: #874604">员工性别：</span></td>
						<td>
						&nbsp; <input type="radio" value="男" checked name="sex"> 
						男&nbsp;
						<input type="radio" name="sex" value="女"> 女</td>
					</tr>
					<tr class="ry">
						<td class="pl" width="382" align="right">
						<span style="color: #874604">员工生日：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" width="409" align="left">
						<input class="input6" type="text" name="birthday" size="20" readonly onclick="CalendarWebControl.show(this,false,this.value);"></td>
					</tr>					
					<tr class="rb">
						<td class="pl" width="382" align="right">
						<span style="color: #874604">联系电话：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" width="409" align="left">
						<input class="input6" type="text" name="phone" size="20"></td>
					</tr>					
					<tr class="ry">
						<td class="pl" width="382" align="right">
						<span style="color: #874604">家庭住址：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" width="409" align="left">
						<input class="input6" type="text" name="addr" size="20"></td>
					</tr>					
					<tr class="rb">
						<td class="pl" width="382" align="right">
						<span style="color: #874604">员工职务：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" width="409" align="left">
						<input class="input6" type="text" name="duty" size="20"></td>
					</tr>					
					<tr><td colspan="2" align="center"><input type="submit" value="添加"/></td></tr>
					</table>
	</form>
  	</div>
  </body>
</html>