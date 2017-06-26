module.exports = app => {
  class Ask extends app.Service {
    * find(uid) {
      // const user = yield this.ctx.db.query(`select * from user where uid = ${uid}`);

      var ask =  yield this.ctx.model.Ask.findOne({"_id": uid});  // you should use upper case to access mongoose model
      return ask;
    }
    
    * add(ask) {
      const logger = this.ctx.logger;
      yield ask.save(function(error, asj) {
        // 记录错误日志
        if(error) {
          logger.error(new Error(error));
        }
      });
    }
  }
  
  return Ask;
};
