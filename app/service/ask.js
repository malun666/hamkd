module.exports = app => {
  class Ask extends app.Service {
    * find(uid) {
      var ask =  yield this.ctx.model.Ask.findOne({"_id": uid});  // you should use upper case to access mongoose model
      ask.showNum = ask.showNum + 1;
      yield ask.save();
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

    * loadAsk(pageSize, index) {
      return yield this.ctx.model.Ask.find({}).sort({ subOn: -1 }).skip(index-1).limit(pageSize);
    }

    * loadAskWithUserInfo(pageSize, index) {
      // var asks = yield this.ctx.model.Ask.find({}).where({isDel: false}).sort({ subOn: -1 }).skip(index-1).limit(pageSize);
      // var result = [];
      /*
      语法：

        **`Query.populate(path, [select], [model], [match], [options])`**
        参数：

        path
        　　类型：String或Object。
        　　String类型的时， 指定要填充的关联字段，要填充多个关联字段可以以空格分隔。
        　　Object类型的时，就是把 populate 的参数封装到一个对象里。当然也可以是个数组。下面的例子中将会实现。

        select
        　　类型：Object或String，可选，指定填充 document 中的哪些字段。
        　　Object类型的时，格式如:{name: 1, _id: 0},为0表示不填充，为1时表示填充。
        　　String类型的时，格式如:"name -_id"，用空格分隔字段，在字段名前加上-表示不填充。详细语法介绍 query-select

        model
        　　类型：Model，可选，指定关联字段的 model，如果没有指定就会使用Schema的ref。

        match
        　　类型：Object，可选，指定附加的查询条件。

        options
        　　类型：Object，可选，指定附加的其他查询选项，如排序以及条数限制等等。

        填充User的posts字段:
        //填充所有 users 的 posts
        User.find()
            .populate('posts', 'title', null, {sort: { title: -1 }})
            .exec(function(err, docs) {
                console.log(docs[0].posts[0].title); // post-by-aikin
            });

        //填充 user 'luajin'的 posts
        User.findOne({name: 'luajin'})
            .populate({path: 'posts', select: { title: 1 }, options: {sort: { title: -1 }}})
            .exec(function(err, doc) {
                console.log(doc.posts[0].title);  // post-by-luajin
            });

        //这里的 populate 方法传入的参数形式不同，其实实现的功能是一样的，只是表示形式不一样。
      */
      var result = yield this.ctx.model.Ask.find({isDel: false}).sort({subOn: -1})
      .populate('user', 'userName _id');
      return result;
    }

    * voteAsk(val, id) {
      var t = yield this.ctx.model.Ask.findOne({"_id": id});
      if(val > 0) {
        // t.hasOwnProperty('up') ? t.up += 1 : t.up = 0;
        t.up += 1;
      }else {
        // t.hasOwnProperty('down') ? t.down += 1 : t.down = 0;
        t.down += 1;
      }
      yield t.save();
    }
  }
  
  return Ask;
};
