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
String ok = request.getParameter("ok");
if(ok != null && ok.equals("1")){
%><script>alert('修改成功!')</script><%
}
 %> 
	<jsp:include flush="true" page="/servlet/SessAdminServlet"/> 
  <body>
	<div align="center">
	<jsp:include flush="true" page="/servlet/ListServlet"/>
	<jsp:include flush="true" page="/admin/top.jsp"/>
	<%
			ArrayList emp = (ArrayList)request.getAttribute("emp");
			String id = request.getParameter("id");
			ArrayList alRow = null;
			for(int i = 0;i < emp.size();i++){
				alRow = (ArrayList)emp.get(i);
				if(alRow.get(0).equals(id)){
					break;
				}
			}
			 %>
	<form action="servlet/EmpReworkServlet?id=<%=alRow.get(0) %>" method="post" name="form1" onSubmit="return check11()">
	<table border="0" align="center" background="img/MainBg.gif" height="494" width="100%">
		<tr>
			<td valign="top" bgcolor="#E8E8E8" align="center">
			<table id="table2" style="width: 800; border-left: 1px solid #7BD676; border-right: 1px solid #7BD676; border-top: 11px solid #7bd676; border-bottom: 1px solid #7BD676; margin: 0; padding: 0" cellSpacing="1" cellPadding="0">
				<tbody style="margin: 0; padding: 0">
					<tr class="rb">
						<td class="pl" align="center" colspan="2" height="25">
						<span style="color: #874604">修改员工信息</span></td>
					</tr>
					<tr class="ry">
						<td class="pl" align="right" width="47%">
						<span style="color: #874604">员工姓名：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="left" width="53%">
						<input class="input6" type="text" name="name" size="20" value="<%=alRow.get(1) %>"></td>
					</tr>
					<tr class="rb">
						<td class="pl" align="right" width="47%">
						<span style="color: #874604">员工性别：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="left" width="53%">
						<%
						if(alRow.get(2).equals("男")){
						 %>
						<input type="radio" value="男" checked name="sex"> 男
						<%}else{ %>
						<input type="radio" value="男" name="sex"> 男
						<%} %>
						&nbsp;&nbsp;
						<%
						if(alRow.get(2).equals("女")){
						 %>
						<input type="radio" value="女" checked name="sex"> 女
						<%}else{ %>
						<input type="radio" value="女" name="sex"> 女
						<%} %></td>
					</tr>
					<tr class="ry">
						<td class="pl" align="right" width="47%">
						<span style="color: #874604">员工生日：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="left" width="53%">
						<input class="input6" value="<%=alRow.get(3) %>" type="text" name="birthday" size="20" readonly onclick="CalendarWebControl.show(this,false,this.value);"></td>
					</tr>					
					<tr class="ry">
						<td class="pl" align="right" width="47%">
						<span style="color: #874604">联系电话：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="left" width="53%">
						<input class="input6" type="text" name="phone" size="20" value="<%=alRow.get(4) %>"></td>
					</tr>					
					<tr class="ry">
						<td class="pl" align="right" width="47%">
						<span style="color: #874604">家庭住址：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="left" width="53%">
						<input class="input6" type="text" name="addr" size="20" value="<%=alRow.get(5) %>"></td>
					</tr>					
					<tr class="ry">
						<td class="pl" align="right" width="47%">
						<span style="color: #874604">员工职务：</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="left" width="53%">
						<input class="input6" type="text" name="duty" size="20" value="<%=alRow.get(6) %>"></td>
					</tr>					
					<tr><td colspan="2" align="center"><input type="submit" value="修改"/></td></tr>
					</table>
			</td>
			
		</tr>
		</table>
	</form>
  	</div>
  </body>
</html>