'use strict'

// middleware的名字不能有下划线。this有request、response、app等属性

module.exports = (option, app) => {
  return function* (next) {

    // console.log(this)
    // this.local.__pageUrl__ = "";
    // console.log(this.request.path)
    // console.log(this.request.url)
    yield next;

  }
}
