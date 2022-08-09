
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

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="img/css.css" type="text/css" rel="stylesheet" />

	</head>

	<body bgcolor="#ffffff">
		<center>
			<table
				style="margin-left: 1px;  height: 68px; width:942px;background-color: #ffffff">

				<tr>
					<%--<td class="style1" align="center">
						<img src="img/dianhua.jpg" />
					</td>
					--%><td width="814" align="center">
						<img src="img/4.jpg" />
					</td>

				</tr>
			</table>
		</center>
		<table cellspacing="0" cellpadding="0" width="942" align="center"
			border="0">
			<tr>
				<td>
					<table cellspacing="0" cellpadding="0" width="942" align="center"
						border="0">
						<tr>
							<td background="img/bg_bot.gif" height="60" align="center">
								<table
									style="text-align: center;" width="880" height="58">
									<tr>
										<td colspan="1" style="width: 100%; height: 26px">
											<span style="font-size: 10pt">版权所有 杨学周、王汐、赵紫玉
												&nbsp; </span>
										</td>
									</tr>
									<tr>
										<td colspan="1" style="width: 100%; height: 17px">
											<span style="font-size: 10pt">&nbsp; </span>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td width="770" background="img/bot770.jpg" height="40">
								<table cellspacing="0" cellpadding="0" width="770"
									align="center" border="0">
									<tr>
										<td align="right" width="335">
										</td>
										<td width="335">
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
