'use strict';

module.exports = app => {
  class HomeController extends app.Controller {
    * index() {
      const data = {
        name: 'hamkd',
        __pageUrl__: 'home/index.tpl'
      };
      // this.ctx.body = 'hi, hamkd';
      yield this.ctx.render('_layout.tpl', data);
    }
  }
  return HomeController;
};
