<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title><decorator:title default="商业拍卖Java EE程序框架"/></title>
	<link href="images/css.css" rel="stylesheet" type="text/css">
	<!-- 使用s:head标签引入Struts 2标签的CSS样式文件 -->
	<s:head/>
</head>
<body>
<table width="780" height="120" border="0" align="center" 
	cellspacing="0" background="">
<tr>
	<td width="167" height="94" rowspan="2">
		<a href="http://www.crazyit.org">
		<img src="http://www.crazyit.org/logo.jpg" width="160" height="80"
		border="0" align="right"></a></td>
	<td width="440" height="65"><div align="center" 
	style="font-size:16pt;color:#cc6600;font-weight:bold">
		商业拍卖Java EE程序框架</div></td>
	<td width="173" rowspan="2"><a href="http://www.crazyit.org">
		<img src="http://www.crazyit.org/logo.jpg" width="160"
			height="80" border="0"></a></td>
</tr>
<tr>
<td height="15"><div align="center" class="title">如果需要开发高档的Java EE应用
	，请登录<a href="http://www.crazyit.org">疯狂Java联盟</a>。谢谢</div></td>
</tr>
<tr>
<td colspan="3"><br>
<table width="1320" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
	<td width="116"><a href="viewItemSu.action">查看竞得的物品（自己帮助的任务）</a></td>
	<td width="101"><a href="viewFailItem.action" >浏览流拍物品（失效记录）</a></td>
	<td width="79"><a href="mgrKind.action" >管理种类（丢失物品的种类）</a></td>
	<td width="79"><a href="mgrItem.action" >管理物品（管理丢失的物品）</a></td>
	<td width="105"><a href="viewKind.action" >浏览拍卖物品（浏览在寻找的物品）</a></td>
	<td width="107"><a href="viewBid.action" >查看自己的竞标（修改为自己发布的丢失信息）</a></td>
	<td width="70"><a href="index.action" >返回首页</a></div></td>
</tr>
</table>
</td>
</tr>
<tr>
<td height="5" colspan="3"><hr /></td>
</tr>
</table>
<!-- 输出被装饰页面的body部分 -->
<decorator:body/>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td background="">
<br><br>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">	
<tr>
<td width="283"><img src="images/struts2.png" width="188" height="66"></td>
<td width="246"><img src="images/spring.gif" width="152" height="66"></td>
<td width="243"><img src="images/hibernate.png" width="203" height="56"></td>
</tr>
</table>
</td>
</tr>
<tr>
<td height="68" background="">   <div align="center" >
All Rights Reserved.<br>
版权所有 Copyright@2006 Yeeku.H.Lee <br />
如有任何问题和建议，请登录<a href="http://www.crazyit.org">疯狂Java联盟</a>反映！<br />
建议您使用1024*768分辨率，IE6.0以上版本浏览本站!</p>
</div></td>
</tr>
<tr height="5"><td ></td></tr>
</table>
</body>
</html>
