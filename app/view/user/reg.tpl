{% extends "../_layout.tpl" %}

{% block head %}
<title>寒门知识社区--用户注册</title>
<link rel="stylesheet" href="/css/userreg.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js"></script>
<script src="/js/jqueryvalidate_CN.js"></script>
{% endblock %}

{% block body %}
<div class="panel panel-default reg-body">

<form class="form-horizontal" method="post" action="/user/reg" id="frmReg">
  <div class="col-sm-12 col-sm-offset-2">
    <span class="label label-danger">{{ msg }}</span>
  </div>
  <div class="form-group  has-feedback" id="userNameGroup">
    <label for="userName" class="col-sm-2 control-label" required minlength="2" message="必填，而且不得少于2个字符">用户名</label>
    <div class="col-sm-4">
      <input type="text" value="{{userName}}" class="form-control" name="userName" id="userName" placeholder="用户名">
      <span id="statusUserName" class="glyphicon form-control-feedback" aria-hidden="true"></span>
    </div>
    <div class="col-sm-6">
      <span id="userNameErrorMsg" class="help-block hidden" >用户名不可用</span>      
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword" class="col-sm-2 control-label">密码</label>
    <div class="col-sm-4">
      <input required minlength="6" type="password" value="" name="password" data-msg="必填,而且密码不得少于6位" class="form-control" id="password" placeholder="#密码不得少于6位，不能有空格">
    </div>

    <div class="col-sm-6">
      <span id="userNameErrorMsg" class="help-block" >#密码不得少于6位，不能有空格</span>      
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword" required minlength="6" class="col-sm-2 control-label">重复密码</label>
    <div class="col-sm-4">
      <input type="password" class="form-control" name="password2" id="password2" placeholder="重复密码">
    </div>
    <div class="col-sm-6">
      <span id="userNameErrorMsg" class="help-block" >#请输入相同密码</span>      
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
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-info">注册</button>
    </div>
  </div>

  <div class="form-group">
   <div class="col-sm-offset-2 col-sm-10">
      <a href="/user/login" class="">已经有账号，直接登录</a>
    </div>
  </div>
</form>

</div>
<script src="/js/user/userreg.js"></script>
{% endblock %}
