'use strict';

// had enabled by egg
// exports.static = true;

// 启用nunjucks 模板引擎
exports.nunjucks = {
  enable: true,
  package: 'egg-view-nunjucks'
};

exports.mongoose = {
  enable: true,
  package: 'egg-mongoose',
};
