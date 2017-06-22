'use strict';
var helper = require('../extend/helper');

module.exports = app => {
  class UserController extends app.Controller {
    // get /user/reg
    * reg() {
      yield this.ctx.render('user/reg.tpl');
    }

    // 用户注册提交处理
    // post  /user/reg
    * postreg(ctx) {
      var user = new ctx.model.User();
      var body = ctx.request.body;
      // user = Object.assign(ctx.request.body, user); 

      if(!body.vcode || body.vcode !== ctx.session.vcode) {
        // 生成新的session的vcode防止，session攻击
        this.getSessionVCode(ctx);

        yield this.ctx.render('user/reg.tpl',Object.assign(body, {msg: "验证码错误！"}));
        return;
      }

      user.userName = body.userName;
      user.password = body.password;
      yield ctx.service.user.add(user);

      ctx.response.redirect('/');
    }

    // 用户登录
    * login(ctx) {
      yield this.ctx.render('user/login.tpl');
    }

    * postLogin(ctx) {
      var body = ctx.request.body;
       if(!body.vcode || body.vcode !== ctx.session.vcode) {
        // 生成新的session的vcode防止，session攻击
        // this.getSessionVCode(ctx);
        ctx.session.vcode = null;

        yield this.ctx.render('user/login.tpl', Object.assign(body,{msg: "验证码错误！"}));
        return;
      }
    
      if( !!body.userName && !!body.password ) {
        var user = yield ctx.service.user.checkUser(body);
        console.log("user is: " + user)
        if( user !==  null) {
          ctx.session.vcode = null;
          ctx.session.loginUser = user;
          ctx.response.redirect('/');
          return;
        }
      }

      // 校验失败，返回用户名密码错误。
      yield ctx.render('user/login.tpl',Object.assign(ctx.request.body, {msg: "用户名密码错误！"}) );
    }

    // post  /user/checkUserName    
    // 检测用户名是否存在
    * checkUserName(ctx) {
      var name = ctx.request.body.userName;
      var user = yield ctx.service.user.findByName(name);
      ctx.body =  { isOk: user ? false : true };
    }

    // 获取验证码图片
    * getCodeImage(ctx) {

      // 获取和设置当前的验证码
      var rText = this.getSessionVCode(ctx);

      this.ctx.type = 'image/jpeg';

      this.ctx.set('Content-Type', 'application/octet-stream');

      // 根据验证码随机数字，生成对应图片的buffer对象
      ctx.body = helper.getCodeImgBuffer(rText);

    }

    // 生成验证码，并放到session中
    getSessionVCode(ctx) {
      // 生成四个随机数字
      var rText = "";
      rText += helper.getRandomIntInclusive(0, 9);
      rText += helper.getRandomIntInclusive(0, 9);
      rText += helper.getRandomIntInclusive(0, 9);
      rText += helper.getRandomIntInclusive(0, 9);
      
      // 将验证码存入到session中。
      ctx.session.vcode = rText; 

      return rText;     

    }
  }
  return UserController;
};
