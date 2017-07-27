'use strict';

module.exports = app => {
  class AskController extends app.Controller {
    * index(ctx) {
      yield this.ctx.render('useradmin/Ask/index.tpl');
    }

    * postAsk(ctx) {
      const body = ctx.request.body;

      // 检测客户端的输入情况
      if( !(body.title && body.askbody) ) {
        yield ctx.render('useradmin/Ask/index.tpl', ctx.request.body);
        return;
      }
        
      var ask = new ctx.model.Ask();
      ask.title = body.title;
      ask.askbody = body.askbody;
      ask.user = ctx.session.loginUser._id;
      ask.labels = body.labels.split(',');
      ask.reward = body.reward;
      
      yield ctx.service.ask.add(ask);

      this.ctx.response.redirect('/');

    }

    * detial(ctx) {
      var ask = {};
      if( ctx.params.id ) {
        ask = yield ctx.service.ask.find(ctx.params.id);
      }
      yield this.ctx.render('useradmin/Ask/detial.tpl', {ask: ask});
    }

    * vote(ctx) {
      var val = ctx.request.body.val;
      var id = ctx.request.body.id;
      if(val > 0 ) {
        yield ctx.service.ask.voteAsk(1, id);
      } else {
        yield ctx.service.ask.voteAsk(-1, id);
      }
      ctx.response.body = { msg: "success"};
    }
  }
  return AskController;
};
 