'use strict';

module.exports = app => {
  class UserInfoController extends app.Controller {
    * index(ctx) {
      var user = {};
      if( ctx.params.id ) {
        user = yield ctx.service.user.find(ctx.params.id);
      }
      yield this.ctx.render('useradmin/userinfo/index.tpl', {user: user} );
    }

    * logout(ctx) {
      ctx.session = null;
      ctx.response.redirect('/');
    }
  }
  return UserInfoController;
};
