{% extends "../../_layout.tpl" %}

{% block head %}

<link rel="stylesheet" href="/css/ask.css">

<title>寒门知识社区--问题详情</title>
{% endblock %}

{% block body %}
<div class="panel panel-default main-area">
  <h2>问：{{ ask.title }}</h2>
  
  <hr>

  <div id="wmd-preview" class="wmd-panel wmd-preview">
    {{ ask.askbody }}
  </div>

</div>
<script src="/lib/pagedown/Markdown.Converter.js"></script>
<script src="/lib/pagedown/Markdown.Sanitizer.js"></script>
<script src="/lib/pagedown/Markdown.Editor.js"></script>
<script type="text/javascript">
  (function () {
    var converter1 = Markdown.getSanitizingConverter();
    $("#wmd-preview").html(converter1.makeHtml($("#wmd-preview").text()));
  })();
  $("#askFrm").validate();
</script>
{% endblock %}
