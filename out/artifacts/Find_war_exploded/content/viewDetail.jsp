<%@ page contentType="text/html; charset=gbk" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="author" content="Yeeku.H.Lee(CrazyIt.org)" />
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>物品详细信息</title>
</head>
<body>
<div class="page-container">
<div class="text-c"> <span class="select-box inline">
		<select name="" class="select">
			<option value="0">全部分类</option>
			<option value="1">分类一</option>
			<option value="2">分类二</option>
		</select>
		</span> 日期范围：
	<input type="text" onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}'})" id="logmin" class="input-text Wdate" style="width:120px;">
	-
	<input type="text" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d'})" id="logmax" class="input-text Wdate" style="width:120px;">
	<input type="text" name="" id="" placeholder=" 资讯名称" style="width:250px" class="input-text">
	<button name="" id="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜资讯</button>
</div>
<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l">
		<a class="btn btn-primary radius"><i class="Hui-iconfont"></i>丢失详细信息</a></span> </div>

<table class="table table-border table-bordered table-bg table-hover table-sort">
<tr class="text-c">
	<td><b>物品名</b></td>
	<td><b>丢失城市</b></td>
	<td><b>丢失区域</b></td>
	<td><b>物品种类</b></td>
	<td><b>丢失者</b></td>
	<td><b>悬赏</b></td>
	<td><b>寻找时间</b></td>
	<td><b>结束时间</b></td>
</tr>
<tr  class="text-c">
	<td><s:property value="item.name"/></td>
	<td><s:property value="item.remark"/></td>
	<td><s:property value="item.desc"/></td>
	<td><s:property value="item.kind"/></td>
	<td><s:property value="item.owner"/></td>
	<td><s:property value="item.initPrice"/></td>
	<td><s:property value="item.addTime"/></td>
	<td><s:property value="item.endTime"/></td>
</tr>

</table>
	<div class="panel panel-primary">
		<div class="panel-header"><h2>如有线索请提供<small>我们将会邮件的方式通知丢失者</small></h2></div>
		<div class="panel-body"><div  class="row cl" id="from_div">

			<s:form class="form form-horizontal" action="bid">
				<%--<input type="hidden" name="itemId"--%>
				<%--value="<s:property value='item.id'/>"/>--%>
				<%--<input type="hidden" name="maxPrice"--%>
				<%--value="<s:property value='item.maxPrice'/>"/>--%>
				<%--<s:textfield name="bid.bidPrice" label="竞拍价"/>--%>
				<%--<s:textfield name="vercode" label="验证码"/>--%>
				<%--<s:submit value="竞价"/>--%>
				<div class="row cl" hidden="hidden">
					<div class="formControls col-xs-8 col-sm-9">
						<input value="<s:property value='item.id'/>" type="text" class="input-text"  name="itemId">
					</div>
				</div>
				<div class="row cl" hidden="hidden">
					<div class="formControls col-xs-8 col-sm-9">
						<input value="<s:property value='item.initPrice'/>" type="text" class="input-text" name="initPrice">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">所在城市：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" name="city">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">详细地址：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" name="address">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">备注信息：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input  type="text" class="input-text" name="bid.beizhu">
					</div>
				</div>
				<div class="row cl">
					<div class="formControls col-xs-8 col-xs-offset-3">
						<input name="vercode" class="input-text size-L" type="text" placeholder="验证码" onblur="if(this.value==''){this.value='验证码:'}" onclick="if(this.value=='验证码:'){this.value='';}" value="验证码:" style="width:150px;"/>
						<img src="auth.jpg"> <a id="kanbuq" href="javascript:;">看不清，换一张</a> </div>
				</div>
				<div class="row cl">
					<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
						<button class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i>提供线索</button>
						<button onClick="cancel();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
					</div>
				</div>
			</s:form>
		</div></div>
	</div>

	</div>
</body>
</html>