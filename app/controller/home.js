'use strict';

module.exports = app => {
  class HomeController extends app.Controller {
    * index(ctx) {
      var index =  ctx.query.pageIndex || 1;
      var pageSize = ctx.query.pageSize || 20;
      var asks = yield ctx.service.ask.loadAskWithUserInfo(pageSize, index);
      // console.log(asks)
      var data = {
        name: 'hamkd',
        asks: asks
      };
      yield this.ctx.render('home/index.tpl', data);
    }
  }
  return HomeController;
};
