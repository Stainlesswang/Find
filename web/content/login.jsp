<%@ page contentType="text/html; charset=gbk" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
<head><title>登录页面</title>
</head>
<body>

		<br /><br /><br /><br/>
				<input type="hidden" id="TenantId" name="TenantId" value="" />
				<div class="header"></div>
				<div class="loginWraper">
					<div id="loginform" class="loginBox">
				<form class="form form-horizontal" action="proLogin" method="post">
					<div class="row cl" w>
						<label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
						<div class="formControls col-xs-8">
							<s:textfield   id="username" name="username" type="text" placeholder="账户" class="input-text size-L"/>
						</div>
					</div>
					<div class="row cl" >
						<label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
						<div class="formControls col-xs-8">
							<s:textfield id="password" name="password" type="password" placeholder="密码" class="input-text size-L"/>
						</div>
					</div>
					<div class="row cl">
						<div class="formControls col-xs-8 col-xs-offset-3">
							<input name="vercode" class="input-text size-L" type="text" placeholder="验证码" onblur="if(this.value==''){this.value='验证码:'}" onclick="if(this.value=='验证码:'){this.value='';}" value="验证码:" style="width:150px;"/>
							<img src="auth.jpg"> <a id="kanbuq" href="javascript:;">看不清，换一张</a> </div>
					</div>

					<div class="row cl">
						<div class="formControls col-xs-8 col-xs-offset-3">
							<input name="" type="submit" class="btn btn-success radius size-L" value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;"/>
							<input name="" type="reset" class="btn btn-default radius size-L" value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;"/>
						</div>
					</div>
				</form>
					</div>
				</div>
		<script>
			var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
			var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
			document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E"));
		</script>
</body>
</html>