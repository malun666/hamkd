module.exports = app => {
  class User extends app.Service {
    * find(uid) {
      // const user = yield this.ctx.db.query(`select * from user where uid = ${uid}`);

      var user =  yield this.ctx.model.User.findOne({"_id": uid});  // you should use upper case to access mongoose model
      return user;
    }

    * add(user) {
      const logger = this.ctx.logger;
      yield user.save(function(error, user) {
        // 记录错误日志
        if(error) {
          logger.error(new Error(error));
        }
      });
    }

    // 校验用户是否存在。
    * checkUser(user) {
      if( !!user.userName && !!user.password ) {
        return yield this.ctx.model.User.findOne({"userName": user.userName, "password": user.password})
      }
      return null;
    }
    * findByName(name) {
      if( !name ) {
        return null;
      }
      var user = yield this.ctx.model.User.findOne({"userName": name});

      return user;
    }
  }
  
  return User;
};
