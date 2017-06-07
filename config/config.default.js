'use strict';

module.exports = appInfo => {
  const config = {};

  // should change to your own
  config.keys = appInfo.name + '_http://hamkd.com';

  // add your config here

  return config;
};
