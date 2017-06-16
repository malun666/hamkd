'use strict';
const path = require('path');

module.exports = appInfo => {
  const config = {};

  // should change to your own
  config.keys = appInfo.name + '_http://hamkd.com';

  // add your config here 设置模板引擎配置
  config.view = {
    // 设置默认的模板引擎为 nunjucks
    defaultViewEngine: 'nunjucks',
    defaultExtension: '.tpl',
    mapping: {
      // 设置模板文件的后缀对应的模板引擎
      '.tpl': 'nunjucks'
    }
  };

  config.middleware = ['setpageurl'];

  // 设置mongodb的连接字符串
  config.mongoose = {
    url: 'mongodb://127.0.0.1/db',
    options: {}
  }

  // 404错误配置
  config.notfound = {
    pageUrl: '/404.html',
  }
  // 生产环境可以配置服务器错误配置
  // config.onerror = {
  //   // 线上页面发生异常时，重定向到这个页面上
  //   errorPageUrl: '/404.html',
  // };

  config.static = {
    prefix: '/',
    dir: [path.join(appInfo.baseDir, 'app/public'), path.join(appInfo.baseDir, 'node_modules')]
  };

  config.security = {
    csrf: {
      headerName: 'x-csrf-token', // 通过 header 传递 CSRF token 的默认字段为 x-csrf-token
    }
  };

  return config;
};
