// 获取过去了多长时间： 如果小于1小时：输出分， 如果大于1小时输出小时， 如果大于天，输出天.....
function getLastTime(date) {
  // 获取当前的日期
  var now = new Date();

  var t = now.getTime() - date.getTime();

  var minuteM = 60 * 1000;

  // 一小时的毫秒数
  var hourM = 60 * minuteM;

  var dayM = 24 * hourM;

  var MonthM = 30 * dayM;

  var yearM = 12 * MonthM;

  if( t < minuteM ) {
    return ( Math.floor( t / 1000 ) )+'秒';
  } else if( t < hourM) {
    return ( Math.floor(t / minuteM )) + '分';
  } else if( t < dayM) {
    return ( Math.floor(t / hourM ) )+ '小时';
  } else if( t < MonthM) {
    return ( Math.floor(t / dayM ) )+ '天';
  } else if( t < yearM) {
    return ( Math.floor(t / MonthM )) + '月';
  } else {
    return ( Math.floor(t / yearM )) + '年';
  }

}
