'use strict';

module.exports = app => {
  class HomeController extends app.Controller {
    * index(ctx) {
      var isLogin = ctx.session.userId? true : false;

      var data = {
        name: 'hamkd',
        isLogin : isLogin,
      };

      yield this.ctx.render('home/index.tpl', data);

    }
  }
  return HomeController;
};
