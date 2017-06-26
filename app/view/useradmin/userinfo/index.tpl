{% extends "../../_layout.tpl" %}

{% block head %}
<title>寒门知识社区欢迎{{user.userName}}</title>
<link rel="stylesheet" href="/css/userreg.css">
{% endblock %}

{% block body %}
<div class="panel panel-default reg-body">
  用户名： {{user.userName}} <br>
  id： {{user._id}}
  <a href="/userinfo/logout" class="btn btn-success">退出</a>
</div>
<script src="/js/jquerysetup.js"></script>
{% endblock %}
