<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<style type="text/css">
	.footer{
		position: fixed;
		bottom: 0;
		left: 0;
		width: 100%;
		text-align: center;
	}
</style>
<head>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<LINK rel="Bookmark" href="./favicon.ico" >
	<LINK rel="Shortcut Icon" href="./favicon.ico" />
	<!--[if lt IE 9]>
	<script type="text/javascript" src="content/images/lib/html5.js"></script>
	<script type="text/javascript" src="content/images/lib/respond.min.js"></script>
	<script type="text/javascript" src="content/images/lib/PIE_IE678.js"></script>
	<![endif]-->
	<link href="content/images/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
	<link href="content/images/static/h-ui.admin/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
	<link href="content/images/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet" type="text/css" />

	<!--[if IE 6]>
	<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
	<script>DD_belatedPNG.fix('*');</script>
	<![endif]-->
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title><decorator:title default="帮寻系统"/></title>
	<link href="images/css.css" rel="stylesheet" type="text/css">
	<!-- 使用s:head标签引入Struts 2标签的CSS样式文件 -->
	<s:head/>
</head>
<body>
<header class="navbar-wrapper">
	<div class="navbar navbar-black navbar-fixed-top">
		<div class="container cl"> <a class="logo navbar-logo hidden-xs" >帮寻系统</a> <a class="logo navbar-logo-m visible-xs" >H-ui</a> <span class="logo navbar-slogan hidden-xs">快捷 &middot; 免费 &middot; 让世界更美好</span> <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
			<nav class="nav navbar-nav nav-collapse" role="navigation" id="Hui-navbar">
				<ul class="cl">
					<li class="current"> <a href="index.action" >首页</a> </li>
					<li> <a href="viewItem.action">在寻找物品</a> </li>
					<li> <a href="mgrItem.action" >我的发布</a> </li>
					<li> <a href="viewItemSu.action" >我收到的线索</a> </li>
					<li> <a href="viewBid.action" >我提供的线索</a> </li>
					<li> <a href="mgrKind.action" >种类管理</a> </li>
					<li> <a href="viewFailItem.action" >失效记录</a> </li>
					<li> <a href="">联系我们</a> </li>
				</ul>
			</nav>
			<nav class="navbar-userbar hidden-xs"> </nav>
		</div>
	</div>
</header>

<%--<tr>--%>
<%--<td colspan="3"><br>--%>
	<%--<table width="1320" border="0" align="center" cellpadding="0" cellspacing="0">--%>
		<%--<tr>--%>
			<%--<td width="116"><a href="viewItemSu.action"><input class="btn btn-primary-outline radius" type="button" value="我收到的线索"/></a></td>--%>
			<%--<td width="101"><a href="viewFailItem.action" ><input class="btn btn-primary-outline radius" type="button" value="失效记录"/></a></td>--%>
			<%--<td width="79"><a href="mgrKind.action" ><input class="btn btn-primary-outline radius" type="button" value="种类管理"/></a></td>--%>
			<%--<td width="79"><a href="mgrItem.action" ><input class="btn btn-primary-outline radius" type="button" value="我的发布"/></a></td>--%>
			<%--<td width="105"><a href="viewItem.action" ><input class="btn btn-primary-outline radius" type="button" value="在寻找物品"/></a></td>--%>
			<%--<td width="107"><a href="viewBid.action" ><input class="btn btn-primary-outline radius" type="button" value="我提供的线索"/></a></td>--%>
			<%--<td width="70"><a href="index.action" ><input class="btn btn-primary-outline radius" type="button" value="首页"/></a></td>--%>
		<%--</tr>--%>
	<%--</table>--%>
<%--</td>--%>
<%--</tr>--%>
<!-- 输出被装饰页面的body部分 -->
<decorator:body/>
<script type="text/javascript" src="content/images/lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="content/images/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>

<script type="text/javascript" src="content/images/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="content/images/lib/Validform/5.3.2/Validform.min.js"></script>
<script type="text/javascript" src="content/images/lib/layer/2.1/layer.js"></script>
<script type="text/javascript" src="content/images/static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="content/images/static/h-ui.admin/js/H-ui.admin.js"></script>
</body>

</html>
