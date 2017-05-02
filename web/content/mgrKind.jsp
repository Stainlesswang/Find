<%@ page contentType="text/html; charset=gbk" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="author" content="Yeeku.H.Lee(CrazyIt.org)" />
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>管理拍卖种类</title>
</head>
<body>
<table >
<tr>
<td>
<br />
<table  class="table table-border table-striped table-bordered table-bg table-hover table-sort" >
<s:iterator id="kind" value="kinds" status="st">
<tr class="text-c">
<td>种类名</td>
<td><s:property value="kindName"/></td>
</tr>
<tr class="text-c">
<td>种类描述</td>
<td><s:property value="kindDesc"/></td>
</tr>
</s:iterator>
</table>
</td>
</tr>
<tr>
<td>
<br />
<h3>添加新种类</h3>
<div align="center">
<s:actionerror cssClass="error"/>
<s:form action="proAddKind">
<s:textfield name="kind.kindName" label="种类名"/>
<s:textfield name="kind.kindDesc" label="种类描述"/>
<s:textfield name="vercode" label="验证码"/>
<s:submit value="添加"/>
</s:form>
验证码：<img name="d" src="auth.jpg">
</div>
</td>
</tr>
</table>
</body>
</html>