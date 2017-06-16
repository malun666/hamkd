
  {% extends "../_layout.tpl" %}

  {% block body %}
  <div class="col-md-8 col-xs-12">
    <div class="panel panel-default">

      {#tab栏目#}
      <ul class="nav nav-tabs">
        <li role="presentation" class="active"><a href="#">悬赏</a></li>
        <li role="presentation"><a href="#">问答</a></li>
        <li role="presentation"><a href="#">话题</a></li>
        <li role="presentation"><a href="#">圈子</a></li>
      </ul>

      
      <div class="panel-body">
        {#排序#}
        <div class="btn-group btn-group-xs" role="group" >
          <button type="button" class="btn btn-default active">最新</button>
          <button type="button" class="btn btn-default">最热</button>
          <button type="button" class="btn btn-default">最高</button>
        </div>

        {#列表#}
        <ul class="note-list list-group">

            {% set a = [1,1,2,3,4,5]%}
            {% for item in a %}
            <li class="list-group-item">
              <div class="media">
                <div class="media-left media-top">
                  <a href="#">
                  <img src="/img/a.jpg" width="40"  class="img-rounded" alt="作者">
                  </a>
                </div>

                <div class="media-left media-top">
                  <div class="data">
                    <a href="#" class="btn btn-danger"><span>1</span><br>回答</a>
                  </div>

                </div>

                <div class="media-left media-top">
                  <div class="data">
                    <a href="#" class="btn btn-default"><span>¥1</span><br>悬赏</a>
                  </div>
                </div>

                <div class="media-body">
                  <h4 class="media-heading">Middle aligned mddddddddddddddddddedia</h4>
                  <div>
                    <a href=""></a>
                  </div>
                  <div class="">
                    <a class="btn" href="#"><i class="glyphicon glyphicon-thumbs-up">赞</i></a>
                    <a class="btn" href="#"><i class="glyphicon glyphicon-thumbs-down">毁</i></a>
                    <a class="btn" href="#"><i class="glyphicon glyphicon-pencil">答</i></a>
                    <a class="" href="#"><i class="glyphicon glyphicon-eye-open">&nbsp;2000</i></a>
                  </div>
                </div>
              
              </div>
            </li>
            {% endfor%}
          </ul>

          {#分页列表#}
          <nav aria-label="Page navigation">
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
      </div>  {# panelbody #}
    </div>{# panel #}
  </div>{# column #}
  {% include 'component/sidebar.tpl'%}

  {% endblock %}

