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
function openwin(pagename)
{
	window.open (pagename,'go', 'height=400, width=400, top=0, left=0, toolbar=no, menubar=no, scrollbars=yes,resizable=yes,location=no, status=no')
}
</script>
<%
String ok = (String)request.getAttribute("ok");
if(ok != null && ok.equals("1")){
%><script>alert('添加成功!')</script><%
}
 %> 
	<jsp:include flush="true" page="/servlet/SessAdminServlet"/> 
  <body style="background:url(img/bg1.jpeg)">
	<div align="center">
	<jsp:include flush="true" page="/servlet/ListServlet"/>
	<jsp:include flush="true" page="/admin/top.jsp"/>
	<form action="servlet/EmpSearchServlet" method="post" name="form1" onSubmit="">
	<table border="0" width="100%" align="center" background="img/MainBg.gif" height="494">
  <tr><td height="25" align="center">
	<table border="0" height="20" id="table3" bgcolor="#C2F5C2">
		<tr>
			<td><a href="admin/stock_add.jsp">添加采购品</a></td>
		</tr>
	</table>
	</td></tr>
		<tr>
			<td valign="top" align="center">
			<table id="table2" style="width: 800; border-left: 1px solid #7BD676; border-right: 1px solid #7BD676; border-top: 11px solid #7bd676; border-bottom: 1px solid #7BD676; margin: 0; padding: 0" cellSpacing="1" cellPadding="0">
				<tbody style="margin: 0; padding: 0">
					<tr class="rb">
						<td class="pl" align="center" colspan="6" height="20">						
						<span style="color: #874604">采购品信息列表</span></td>
					</tr>
					<tr class="ry">
						<td class="pl" align="center">
						<span style="color: #874604">采购品名称</span></td>
						<td class="pl" align="center">
						<span style="color: #874604">采购品单位</span></td>
						<td class="pl" align="center">
						<span style="color: #874604">采购品数量</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center">
						<span style="color: #874604">采购品花销</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center">
						<span style="color: #874604">采购时间</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center">
						　</td>
					</tr>
					<%
					ArrayList stock = (ArrayList)request.getAttribute("stock");
						for(int i = 0;i < stock.size();i++){
							ArrayList alRow = (ArrayList)stock.get(i);							
							if(i%2 == 0){
							%>
							<tr class="rb">
							<%}else {%>
							<tr class="ry">
							<%} %>
						<td class="pl" align="center">
						<%=alRow.get(1) %></td>
						<td class="pl" align="center"><%=alRow.get(2) %></td>
						<td class="pl" align="center"><%=alRow.get(3) %></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center"> 
						<%=alRow.get(4) %>元</td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center"> 
						<%=alRow.get(5) %></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center"> 
						<a href="servlet/DelServlet?stock=<%=alRow.get(0)%>">删除</a></td>
					</tr>
							<%
						}
					 %>
					</table>
			</td>
			
		</tr>
		</table>
	</form>
  	</div>
  </body>
</html>