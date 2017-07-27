<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="renderer" content="webkit" />
  <meta name="description" content="寒门网 - 最大的中文知识交流社区，提供在线问答、知识会友、有偿问答等服务，是连接学习伙伴的交流平台" />
  <meta name="keyword" content="知识社交,有偿问答,IT,程序员,交友,知识变现" />

  <link rel="shortcut icon" href="/img/favicon.ico" />

  {#<link rel="dns-prefetch" href="//img.alicdn.com" />#}
  {#jquery cdn#}
  <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.js"></script>

  <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

  <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

  <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
  <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  
  <script src="/js-cookie/src/js.cookie.js"></script>
  <script src="/js/jquerysetup.js"></script>

  <link rel="stylesheet" href="/css/common.css">

  {% block head %}
  <title>寒门社区--IT知识型社区</title>
  {% endblock %}
</head>
<body>
  {% block top %} 
  {# S=>顶部导航栏  #}
  <nav class="navbar navbar-fixed-top topbar">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">折叠</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand nav-logo" href="/"><img src="/img/logo_22x22.png" alt="寒门"></a>
      </div>

      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-left">
          
          <li class="nav-active"><a href="/">首页</a></li>
          <li><a href="/userp/ask">问答</a></li>
          <li><a href="/reward/list">悬赏</a></li>
          <li><a href="/topic/list">聊天室</a></li> 
          <li><a href="/group/list">直播</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
          <form class="navbar-form navbar-left">
            <div class="btn-group">
              <a  href="/userp/ask" class="btn btn-success">提问</a>
              <a  class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="caret"></span>
                <span class="sr-only">Toggle Dropdown</span>
              </a>
              <ul class="dropdown-menu">
                <li><a href="/userp/ask">提问</a></li>
                <li><a href="/article">写文章</a></li>
                <li><a href="/microblog">写动态</a></li>
              </ul>
            </div>
            <div class="form-group">
              <input type="text" class="form-control btn-small" placeholder="搜索 回车直接搜索">
            </div>
          </form>

          <li class="user-bar">
              {% if userId %}
                <div class="user-login">
                  <a href="/userinfo/{{userId}}"><img src="/img/a.jpg" width="25" alt=""></a>
                </div>
              {% else %}
                <a target="_blank" href="/user/login"><i class="glyphicon glyphicon-user"></i></a>
                <div class="user-bar-nav list-group small">
                  <a href="/user/reg" class="list-group-item">注册</a>
                  <a href="/user/login" class="list-group-item">登录</a>
                  <a href="/user/login" class="list-group-item">微博登录</a>
                  <a href="/user/login" class="list-group-item">github登录</a>
                  <a href="/user/login" class="list-group-item">twitter登录</a>
                </div>
            {% endif %}
          </li>
          
        </ul>
      </div>

    </div>
  </nav>
  {#E=> 顶部导航栏#}

  {% endblock%}

  {#<div class="container site-slogan">
    <div class="jumbotron">
      <h2>寒窗网，陪你徜徉知识海洋！</h2>
      
      <p>三人行,必有我师焉。 再牛逼的困难，都有老师陪伴，什么也组挡不住我学习的热情！</p>
    </div>
  </div>#}

  {% block nav %}
    <div class="">
      <ul class="label-nav container">
        <li>
          <a href="#" class="btn">JavaScript <i class="badge">9</i></a>
          <a href="#" class="btn">PHP</a>
          <a href="#" class="btn">CSS</a>
          <a href="#" class="btn">Java</a>
          <a href="#" class="btn">DotNet</a>
          <a href="#" class="btn">Docker</a>
          <a href="#" class="btn">Python</a>
          <a href="#" class="btn">GO</a>
          <a href="#" class="btn">Perl</a>
          <a href="#" class="btn">MySql</a>
          <a href="#" class="btn">HTML</a>
          <a href="#" class="btn">VUE</a>
          <a href="#" class="btn">Angular</a>
          <a href="#" class="btn">React</a>
        </li>
      </ul>
    </div>
  {% endblock%}
    <div class="container main-body">
      <div class="row">
      {% block body %} 
      {% endblock%}
      </div>
    </div>

  <div class="container">
     <div class="footer">
      
      <span>© 2017 hamkd.com</span>

     </div>
    </div>
</body>
</html>


