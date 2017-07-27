{% extends "../../_layout.tpl" %}

{% block head %}

<link rel="stylesheet" href="/css/ask.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js"></script>
<script src="/js/jqueryvalidate_CN.js"></script>
<title>寒门知识社区--提问</title>
{% endblock %}

{% block body %}
<div class="panel panel-default main-area">
  <form method="post" action="/userp/ask" id="askFrm">
    <p class="text-danger">三人行，必有我师，寒门苦读，不懈坚持！</p>
    <div class="form-group">
      <input type="text" required class="form-control input-lg" id="title" name="title" placeholder="标题：一句话说清楚核心问题">
    </div>
    <div class="form-group">
      <input type="text" class="form-control" id="labels" name="labels" placeholder="标签：多个用逗号隔开。">
    </div>
    <div class="input-group">
      <span class="input-group-addon">打赏：¥</span>
      <input type="number" required placeholder="打赏最低0元" value="0" name="reward" class="form-control" aria-label="Amount (to the nearest rmb)">
    </div>

    {#富文本编辑器#}
    <div class="row wmd-editor">
      <div class="wmd-panel">
        <div id="wmd-button-bar"></div>
        <div class="col-xs-6">
          <textarea class="wmd-input" required placeholder="胜多负少" name="askbody" id="wmd-input">
1. 描述你的问题

2. 贴上相关代码

3. 贴上报错信息

4. 贴上相关截图

5. 已经尝试过哪些方法仍然没解决（附上相关链接）
          </textarea>
        </div>
        <div class="col-xs-6 panel">
          <div id="wmd-preview" class="wmd-panel wmd-preview"></div>
        </div>
      </div>
    </div>

    <div class="container">
      <button type="submit" class="btn btn-success">提问</button>
    </div>    
  </form>
</div>

<script src="/lib/pagedown/Markdown.Converter.js"></script>
<script src="/lib/pagedown/Markdown.Sanitizer.js"></script>
<script src="/lib/pagedown/Markdown.Editor.js"></script>
<script type="text/javascript">
(function () {
    var converter1 = Markdown.getSanitizingConverter();
    
    var editor1 = new Markdown.Editor(converter1);
    
    editor1.run();
})();

$("#askFrm").validate();
</script>
{% endblock %}
