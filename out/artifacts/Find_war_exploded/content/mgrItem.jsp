
<%@ page contentType="text/html; charset=gbk" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="author" content="Yeeku.H.Lee(CrazyIt.org)" />
	<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
	<title>管理我的发布</title>
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
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a  onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
		<a class="btn btn-primary radius" data-title="添加资讯" _href="article-add.html" onclick="article_add('发布丢失消息','viewFailItem.action','','510')" ><i class="Hui-iconfont">&#xe600;</i> 发布丢失</a></span> </div>


	<div class="row cl" id="from_div" hidden="hidden">
		<s:actionerror/>
		<s:form class="form form-horizontal"  action="proAddItem">
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">物品名：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text"  name="item.itemName">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">详细地址：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" name="item.itemDesc">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">所在城市：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" name="item.itemRemark">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">悬赏：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="number" class="input-text"  name="item.initPrice">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">物品描述：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text"  name="item.beizhu">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>分类栏目：</label>
				<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
					<select name="avail" class="select">
						<option value="1">一天</option>
						<option value="2">两天</option>
						<option value="3">三天</option>
						<option value="4">四天</option>
						<option value="5">五天</option>
						<option value="6">一个星期</option>
						<option value="7">一个月</option>
						<option value="8">一年</option>
					</select>
				</span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>分类栏目：</label>
				<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
				<select  name="kindId"  class="select"  >
					<s:iterator id="kind" value="kinds" >
						<option value="<s:property value="id"/>"><s:property value="kindName"/></option>
					</s:iterator>
				</select>
				</span>
				</div>
			</div>
			<div class="row cl">
				<div class="formControls col-xs-8 col-xs-offset-3">
					<input name="vercode" class="input-text size-L" type="text" placeholder="验证码" onblur="if(this.value==''){this.value='验证码:'}" onclick="if(this.value=='验证码:'){this.value='';}" value="验证码:" style="width:150px;"/>
					<img src="auth.jpg"> <a id="kanbuq" href="javascript:;">看不清，换一张</a> </div>
			</div>
			<div class="row cl">
				<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
					<button class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 保存并提交审核</button>
					<button onClick="cancel();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
				</div>
			</div>
		</s:form>
	</div>
	<table class="table table-border table-bordered table-bg table-hover table-sort">
		<tr class="text-c">
			<td><b>物品名</b></td>
			<td><b>发布时间</b></td>
			<td><b>物品种类</b></td>
			<td><b>赢取价格</b></td>
			<td><b>物品备注</b></td>
			<td><b>操作</b></td>
		</tr>
		<s:iterator id="item" value="items" status="st">
			<tr class="text-c">
				<td><s:property value="name"/></td>
				<td><s:property value="addTime"/></td>
				<td><s:property value="kind"/></td>
				<td><s:property value="maxPrice"/></td>
				<td><s:property value="remark"/></td>
				<td class="f-14 td-manage"><i class="Hui-iconfont">&#xe6de;</i></a> <a style="text-decoration:none" class="ml-5" onClick="article_edit('资讯编辑','article-add.html','10001')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5" onClick="article_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
			</tr>
		</s:iterator>
	</table>

</div>


<script type="text/javascript">
	$('.table-sort').dataTable({
		"aaSorting": [[ 2, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
			//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			{"orderable":false,"aTargets":[0,5]}// 不参与排序的列
		]
	});

	function cancel(){
		$("#from_div").hide();
	}
	/*资讯-添加*/
	function article_add(title,url,w,h){
		$("#from_div").show();
//		var index = layer.open({
//			type: 2,
//			title: title,
//			content: url
//		});
//		layer.full(index);
	}
	/*资讯-编辑*/
	function article_edit(title,url,id,w,h){
		var index = layer.open({
			type: 2,
			title: title,
			content: url
		});
		layer.full(index);
	}
	/*资讯-删除*/
	function article_del(obj){
		layer.confirm('确认要删除吗？',function(index){


			var cardtr= $(obj).parents("tr");
			var cardid=cardtr.find("td").eq(1);

			$.ajax({
				type: "POST",
				url : "/appshop/deletecard?cardid="+cardid.text(),
				success: function(){
					layer.msg('已删除数据!',{icon:1,time:1000});
					$(obj).parents("tr").remove();
				},
				error : function(){
					layer.msg('删除失败！',{icon:1,time:1000});
				}
			})

		});;
	}
</script>
</body>

</html>