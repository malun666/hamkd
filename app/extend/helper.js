var Canvas = require('canvas');

var helper = {};

helper.getRandomArbitrary = function(min, max) {
  return Math.random() * (max - min) + min;
}

helper.getRandomIntInclusive = function(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

helper.getCodeImgBuffer = function(code) {
  var Image = Canvas.Image
      ,cav = new Canvas(200,30)
      ,ctx = cav.getContext('2d');

  var getRandomArbitrary = helper.getRandomArbitrary
      ,getRandomIntInclusive = helper.getRandomIntInclusive;

  // 绘制背景长方形和文字
  ctx.font = '20px serif'
  ctx.fillStyle = "#990"
  ctx.fillRect(0,0,70,30)
  ctx.fillStyle = "#c09";
  ctx.fillText(code, 15, 22)

  ctx.strokeStyle = '#098'
  ctx.lineWidth = 3;
  ctx.strokeRect(0,0,70,30)

  // 绘制干扰线
  ctx.lineWidth = 1;
  var r = Math.random();
  for(var i =0; i< 6; i++) {  //绘制6条随机的干扰线
    ctx.moveTo(getRandomArbitrary(0, 70), getRandomArbitrary(0,30))
    ctx.lineTo(getRandomArbitrary(0, 70), getRandomArbitrary(0,30))
    ctx.strokeStyle = 'rgba('+getRandomIntInclusive(0,255) +','
    + getRandomIntInclusive(0,255) + ','
    + getRandomIntInclusive(0,255) + ','
    + getRandomArbitrary(0.1,1)
    +')';
    ctx.stroke();
  }
  // 把cavans生成buffer发送到前台。
  return cav.toBuffer();
};

module.exports = helper;
