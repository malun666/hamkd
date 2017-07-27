
  {% extends "../_layout.tpl" %}
  {% block head %}
  <link rel="stylesheet" href="/css/index.css">
  <title>寒门社区--IT知识型社区</title>
  {% endblock %}
  {% block body %}
  <div class="col-md-9 col-xs-12">
    {#<div class="panel panel-default">#}
    <div class="panel panel-default">

      {#tab栏目#}
      <ul class="nav nav-tabs">
        <li role="presentation" class="active"><a href="#">悬赏</a></li>
        <li role="presentation"><a href="#">问答</a></li>
        <li role="presentation"><a href="#">话题</a></li>
        <li role="presentation"><a href="#">圈子</a></li>
      </ul>
      
        {#排序#}
        <div class="btn-group btn-group-xs sort-box" role="group" >
          <button type="button" class="btn btn-default active">最新</button>
          <button type="button" class="btn btn-default">最热</button>
          <button type="button" class="btn btn-default">最高</button>
        </div>
        {#列表#}
        <ul class="note-list list-group">

            {% for item in asks %}
            <li class="list-group-item">
              <div class="media">
                <div class="media-left media-top">
                  <div class="data">
                    <a href="/ask/{{item._id}}" class="btn btn-danger"><span>1</span><br>回答</a>
                  </div>
                </div>

                <div class="media-left media-top">
                  <div class="data">
                    <a href="/ask/{{item._id}}" class="btn btn-default"><span>¥{{ item.reward }}</span><br>悬赏</a>
                  </div>
                </div>

                <div class="media-body ask-item">
                  <div class="media-heading">
                    <small><a href="/showuser/{{item.user._id}}">{{ item.user.userName }}</a>&nbsp;发布于<span class="t-time">{{item.subOn}}</span>前</small> 
                    <h4 class="">
                      <a href="/ask/{{item._id}}">{{ item.title }}</a>
                    {% for lb in item.labels %}
                      <a href="/lable/{{lb}}" class="lb-link label label-default">{{ lb }}</a>
                    {% endfor %}
                    </h4>
                    
                  </div>
                  <div class="media-body ask-btn-group">
                    <a class="btn btn-up" val="1" href="javascript:0" askid="{{item._id}}"><i class="glyphicon glyphicon-thumbs-up">赞</i>(<span class="num">{{item.up}}</span>)</a>
                    <a class="btn btn-down" val="-1" href="javascript:0" askid="{{item._id}}"><i class="glyphicon glyphicon-thumbs-down">毁</i>(<span class="num">{{item.down}}</span>)</a>
                    <a class="btn" href="/ask/{{item._id}}"><i class="glyphicon glyphicon-pencil">答</i></a>
                    <a class="btn" href="#"><i class="glyphicon glyphicon-eye-open">&nbsp;{{ item.showNum }}</i></a>
                  </div>
                </div>
                <div class="media-right meida-top">
                  
                </div>
              </div>
            </li>
            {% endfor%}
          </ul>

          {#分页列表#}
          <nav aria-label="Page navigation" class="page-box">
            <ul class="pagination">
              <li class="disabled">
                <span href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </span>
              </li>
              <li class="active"><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li>
                <a href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>
    </div> 
  </div>{# column #}
  {% include 'component/sidebar.tpl'%}

<div>
</div>
<script src="/js/jsdate.js"></script>
<script src="/js/index.js"></script>
  {% endblock %}

