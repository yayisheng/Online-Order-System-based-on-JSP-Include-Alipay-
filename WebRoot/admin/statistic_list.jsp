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
	<table border="1" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" style="border-collapse: collapse" bordercolor="#E8E8E8" bgcolor="#E8E8E8" width="30%">
		<tr>
			<td height="25" align="center"><a href="servlet/StatisticServlet?flag=1">本日销售额统计</a></td>
			<td height="25" align="center"><a href="servlet/StatisticServlet?flag=2">本日采购品统计</a></td>
		</tr>
	</table>
	</td></tr>
		<tr>
			<td valign="top" align="center">
			<%
			ArrayList stocks = (ArrayList)request.getAttribute("stocks");
			ArrayList sell = (ArrayList)request.getAttribute("sell");
			if(sell != null){
			 %>
			<table id="table2" style="width: 800; border-left: 1px solid #7BD676; border-right: 1px solid #7BD676; border-top: 11px solid #7bd676; border-bottom: 1px solid #7BD676; margin: 0; padding: 0" cellSpacing="1" cellPadding="0">
				<tbody style="margin: 0; padding: 0">
					<tr class="rb">
						<td class="pl" align="center" colspan="4" height="20">						
						<span style="color: #874604">本日销售额统计</span></td>
					</tr>
					<tr class="ry">
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center">
						<span style="color: #874604">菜品名称</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center">
						<span style="color: #874604">订购数量</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center">
						<span style="color: #874604">单价</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center">
						<span style="color: #874604">合计</span></td>
					</tr>
					<%
						int tem = 0;
						for(int i = 0;i < sell.size();i++){
							ArrayList alRow = (ArrayList)sell.get(i);							
							if(i%2 == 0){
							%>
							<tr class="rb">
							<%}else {%>
							<tr class="ry">
							<%} %>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center"> 
						<%=alRow.get(0) %></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center"> 
						<%=alRow.get(1) %></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center"> 
						<%=alRow.get(2) %>元</td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center"> 
						<%=Integer.parseInt(alRow.get(1).toString())*Integer.parseInt(alRow.get(2).toString()) %>元</td>
					</tr>
							<%
							tem += Integer.parseInt(alRow.get(1).toString())*Integer.parseInt(alRow.get(2).toString());
						}
					 %>
					 <tr class="rb">
						<td class="pl" align="center" colspan="4" height="20">						
						<span style="color: #874604">本日销售总额：<%=tem %>元</span></td>
					</tr>
					</table>
					<%
					}
					if(stocks != null && stocks.size() != 0){
					%>
					<table id="table2" style="width: 800; border-left: 1px solid #7BD676; border-right: 1px solid #7BD676; border-top: 11px solid #7bd676; border-bottom: 1px solid #7BD676; margin: 0; padding: 0" cellSpacing="1" cellPadding="0">
				<tbody style="margin: 0; padding: 0">
					<tr class="rb">
						<td class="pl" align="center" colspan="4" height="20">						
						<span style="color: #874604">本日采购品统计</span></td>
					</tr>
					<tr class="ry">
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center">
						<span style="color: #874604">采购品名称</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center">
						<span style="color: #874604">采购品单位</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center">
						<span style="color: #874604">采购品数量</span></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center">
						<span style="color: #874604">采购品花销</span></td>
					</tr>
					<%
						for(int i = 0;i < stocks.size();i++){
							ArrayList alRow = (ArrayList)stocks.get(i);							
							if(i%2 == 0){
							%>
							<tr class="rb">
							<%}else {%>
							<tr class="ry">
							<%} %>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center"> 
						<%=alRow.get(0) %></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center"> 
						<%=alRow.get(1) %></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center"> 
						<%=alRow.get(2) %></td>
						<td style="font-size: 13px; line-height: 24px !important; font-style: normal; font-variant: normal; font-weight: normal; font-family: 宋体; border: 0 none; margin: 0; padding: 0" align="center"> 
						<%=alRow.get(3) %>元</td>
					</tr>
							<%
						}
					 %>
					</table>
					<%} %>
					<table><tr><td>
	<style media=print> 
.Noprint{display:none;}<!--用本样式在打印时隐藏非打印项目--> 
.PageNext{page-break-after: always;}<!--控制分页--> 
</style> 
<object id="WebBrowser" width=0 height=0 classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"> 
</object>
<center class="Noprint" > 
<input type=button value=打印 onclick=document.all.WebBrowser.ExecWB(6,1)> 
<input type=button value=直接打印 onclick=document.all.WebBrowser.ExecWB(6,6)> 
<input type=button value=页面设置 onclick=document.all.WebBrowser.ExecWB(8,1)>
<input type=button value=打印预览 onclick=document.all.WebBrowser.ExecWB(7,1)> 
</center>
	</td></tr></table>
			</td>			
		</tr>
		</table>
	</form>
  	</div>
  </body>
</html>