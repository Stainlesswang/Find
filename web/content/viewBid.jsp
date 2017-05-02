<%@ page contentType="text/html; charset=gbk" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="author" content="Yeeku.H.Lee(CrazyIt.org)" />
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>您参与的全部竞价</title>
</head>
<body>
<table width="1300" height="430" align="center" cellspacing="0"
	background="">
<tr>
<td>
<br />
<table width="80%" align="center" cellpadding="0" cellspacing="1" style="border:1px solid black">
  <tr>
    <td colspan="4" ><div class="mytitle">您参与的全部竞价</div></td>
	  <s:actionmessage/>
  </tr>
  <tr  height="30">
    <th>物品名</th>
    <th>竞标价格</th>
    <th>竞标时间</th>
    <th>竞标人</th>
  </tr>
<s:iterator value="bids" id="bid" status="st">
<tr  height="24" <s:if test="#st.odd">
	style="background-color:#dddddd"</s:if>
	<s:else>style="background-color:#eeeeee"</s:else>>
	<td><s:property value="item"/></td>
	<td><s:property value="price"/></td>
	<td><s:property value="bidDate"/></td>
	<td><s:property value="user"/></td>
</tr>
</s:iterator>
</table>
</td>
</tr>
</table>
</body>
</html>