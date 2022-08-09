<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>网上订餐</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="img/lucfron.css" type="text/css" rel="stylesheet" />

	</head>

	<body topmargin="0" leftmargin="0" rightmargin="0">
		<div align="center">
			<center>
				<table style="width:942px; height: 30px;" cellpadding="0"
					cellspacing="0">
					<tr>
						<td
							style="width: 518px; background-color: #fef6e1; text-align: left;">
							您好！网上订餐更快~更方便~ &nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;
							<span style="color: #ff6600"><a
								href="qiantai/reg.jsp">快来注册</a>
							</span>
						</td>
						<td
							style="width: 512px;background-color: #fef6e1; text-align: right;">
							&nbsp; 订餐如此快乐，快把我加入收藏吧！
							<span style="font-size: 10pt; color: #ff6600">|</span>
							<a href="admin/index.jsp">后台登录</a>
							<span style="font-size: 10pt; color: #ff6600">|</span>
							<a href="qiantai/index.jsp">返回首页</a>
							<span style="font-size: 10pt; color: #ff6600">|</span>
							<input type=button value=加入收藏夹
								onclick="window.external.AddFavorite('', '订餐')">
						</td>
					</tr>
				</table>
			</center>
			<div>
				<img src="img/bg.jpg"  height="200" width="900"/>
			</div>
			<table border="0" width="942" cellspacing="0" cellpadding="0"
				id="table1" height="42">
				<tr>
					<td background="img/bg1.jpeg">
						<div align="center">
							<table border="0" width="90%" id="table2" cellpadding="0"
								height="100%" cellspacing="0">
								<tr>
									<td align="center">
										<a class="linkbody" href="qiantai/index.jsp">[ 首页 ]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="qiantai/reg.jsp">[ 用户注册 ]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="servlet/ShowUserServlet">[ 用户中心
											]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="qiantai/getback_pwd.jsp">[ 找回密码
											]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="qiantai/search.jsp">[ 餐点搜索 ]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="servlet/ShoppingServlet">[ 订餐车 ]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="qiantai/nutrition_list.jsp">[
											营养小贴士 ]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="qiantai/leave_word.jsp">[ 在线留言 ]</a>
									</td>
									<td align="center">
										<a class="linkbody" href="servlet/RemoveServlet?login=1">[
											注销退出 ]</a>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
		</div>

	</body>
</html>
