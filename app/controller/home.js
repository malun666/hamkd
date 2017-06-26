'use strict';

module.exports = app => {
  class HomeController extends app.Controller {
    * index(ctx) {
      
      var data = {
        name: 'hamkd'
      };

      yield this.ctx.render('home/index.tpl', data);

    }
  }
  return HomeController;
};
