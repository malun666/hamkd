{% extends "../../_layout.tpl" %}

{% block head %}

<link rel="stylesheet" href="/css/ask.css">

<title>寒门知识社区--问题详情</title>
{% endblock %}

{% block body %}
<div class="panel panel-default main-area">
  title: {{ title }}<br >

  body: {{ askbody }}
</div>
{% endblock %}
