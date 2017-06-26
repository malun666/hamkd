'use strict';

module.exports = app => {
  // 首页模块
  app.get('/', 'home.index');

  // 用户注册模块
  app.post('/user/checkUserName', 'user.checkUserName');
  app.get('/user/reg', 'user.reg');
  app.post('/user/reg', 'user.postreg');
  app.get('/user/getCodeImage/:date', 'user.getCodeImage');
  
  app.get('/user/login','user.login')
  app.post('/user/login','user.postLogin')

  // 用户模块
  app.get('/userinfo/:id', 'useradmin.userinfo.index')
  app.get('/userinfo/logout', 'useradmin.userinfo.logout')
  
  app.get('/ask', 'useradmin.ask.index')
  app.get('/ask/:id', 'useradmin.ask.detial')
  app.post('/ask', 'useradmin.ask.postAsk')
};
