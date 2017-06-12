'use strict';

module.exports = appInfo => {
  const config = {};

  // should change to your own
  config.keys = appInfo.name + '_http://hamkd.com';

  // add your config here

  // 设置模板引擎配置
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

  return config;
};
