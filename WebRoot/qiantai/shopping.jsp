<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的订餐车</title>
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
%><script>alert('您的订餐车中没有商品!')</script><%
}
if(ok != null && ok.equals("1")){
%><script>alert('恭喜您，订餐成功!')</script><%
}
 %>
  <body>
  <form name="form1" action="" method="post">
  <table bgcolor="#ffcc00" border="0" cellpadding="1" cellspacing="1" align="center" width="620">
		<tr bgcolor="#ffe2a6">
			<td align="center" valign="middle" colspan="6">
			<font face="华文行楷" size="3">我的订餐车</font></td>
		</tr>
		<tr bgcolor="#ffe2a6">
			<td align="center" valign="middle">菜品名称</td>
			<td align="center" valign="middle">单价</td>
			<td align="center" valign="middle">数量</td>
			<td align="center" valign="middle">总价</td>
			<td align="center" valign="middle">修改数量</td>
			<td align="center" valign="middle">删除</td>
		</tr>
		<%
		ArrayList shopping = (ArrayList)session.getAttribute("shopping");
		int sum = 0;
  		int sumPrices = 0;
		if(shopping == null || shopping.size() == 0){
		%>
		<tr bgcolor="#fff9ec"><td colspan="6" align="center" valign="middle"><font size="1" color="red">订餐车中没有菜品！</font></td></tr>
		<%}else{
		for(int i = 0;i < shopping.size();i++){
		ArrayList alShop = (ArrayList)shopping.get(i);
		sum += Integer.parseInt(alShop.get(3).toString());
		sumPrices += Integer.parseInt(alShop.get(2).toString())*Integer.parseInt(alShop.get(3).toString());
		%>
		<tr bgcolor="#fff9ec">
			<td valign="middle" align="center"><a href="servlet/BookinfServlet?id=<%=alShop.get(0) %>"><%=alShop.get(1)%></a></td>
			<td valign="middle" align="center"><%=alShop.get(2)%>元</td>
			<td valign="middle" align="center"><input class="input1" type="text" value="<%=alShop.get(3)%>" name="num<%=i %>"/></td>
			<td valign="middle" align="center"><%=Integer.parseInt(alShop.get(2).toString())*Integer.parseInt(alShop.get(3).toString())%>元</td>
			<td align="center" valign="middle">
			<input type="button" value="修改数量" onclick="abc222(<%=alShop.get(0)%>,<%=i %>)"/></td>
			<td align="center" valign="middle">
			<a href="servlet/ShoppingServlet?del=<%=i%>">
            <img src="img/trash.gif" border="0" height="17" width="15" alt="">
          	</a>
			</td>
		</tr>
		<%}%>
		<tr bgcolor="#fff9ec">
			<td colspan="6" align="center">订餐车里有菜品：<%=shopping.size()%>件　总数：<%=sum%>　共计：<%=sumPrices%>元　</td>
		</tr>
		<%}%>
		<tr bgcolor="#ffffff">
			<td colspan="6" align="center" height="25">
				<a href="qiantai/index.jsp">
		          继续订餐
		        </a>
		        <a href="servlet/ShoppingServlet?remove=1">
		          清空订餐车
		        </a>
		        <a href="servlet/ReckoningServlet">
		          收银台
		        </a>
		     </td>
		</tr>
		<tr><td colspan="6"valign="middle"><font color="red">*</font>如果您刷新了订餐车页面，上次所订菜品数目将会增加1个</br><font color="red">*</font>如果您点击了收银台，系统将会保存您的订单，并会清空您的购物车！</td></tr>
	</table>
	</form>
  </body>
</html>
