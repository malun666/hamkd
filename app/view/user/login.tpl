{% extends "../_layout.tpl" %}

{% block head %}
<title>寒门知识社区--用户登录</title>
<link rel="stylesheet" href="/css/userreg.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js"></script>
<script src="/js/jqueryvalidate_CN.js"></script>
{% endblock %}

{% block body %}
<div class="panel panel-default reg-body">

<form class="form-horizontal" method="post" action="" id="frmReg">
  <div class="col-sm-12 col-sm-offset-2">
    <span class="label label-danger">{{ msg }}</span>
  </div>
  <div class="form-group  has-feedback" id="userNameGroup">
    <label for="userName" class="col-sm-2 control-label">用户名</label>
    <div class="col-sm-4">
      <input type="text" class="form-control"  required minlength="2" name="userName" id="userName" value="{{ userName }}" placeholder="用户名">
    </div>
    
  </div>
  <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label">密码</label>
    <div class="col-sm-4">
      <input required minlength="6" type="password" value="{{ password }}" name="password" data-msg="必填,而且密码不得少于6位" class="form-control" id="password" placeholder="#密码不得少于6位，不能有空格">
    </div>

    <div class="col-sm-6">
      <span id="userNameErrorMsg" class="help-block" >#密码不得少于6位，不能有空格</span>      
    </div>
  </div>
  
  <div class="form-group">
    <label for="vcode" class="col-sm-2 control-label">验证码</label>
    <div class="col-sm-4">
      <input type="text" required minlength="4" maxlength="4" data-msg="请输入验证码" class="form-control" name="vcode" id="vcode" placeholder="">
    </div>
    <div class="col-sm-6">
    <img id="vcodeImg" src="/user/getCodeImage/200" alt="">
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-4">
      <button type="submit" class="btn btn-info">登录</button>
    </div>
  </div>
   <div class="form-group">
   <div class="col-sm-offset-2 col-sm-10">
      <a href="/user/reg" class="">没有账号，需要注册</a>
    </div>
  </div>
</form>

</div>

<script src="/js/user/login.js"></script>
{% endblock %}
