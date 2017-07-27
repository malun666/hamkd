$(function() {

  // 帖子的时间处理
  $(".t-time").each(function(index) {
    var text = $(this).text();
    var temp = new Date(text);
    var timeText = getLastTime(temp); // 调用jsdate.js中的函数，获取过去了多长时间。
    $(this).text(timeText);
  });
  // 赞
  $(".ask-btn-group .btn-up").on("click", function(){
    var id = $(this).attr('askid')
    askVote(1, id);
    var num = $(this).find('.num').text();
    $(this).find('.num').text(+num + 1)
  });

  // 毁
  $(".ask-btn-group .btn-down").on("click", function() {
    var id = $(this).attr('askid')
    askVote(-1, id);
    var num = $(this).find('.num').text();
    console.log(num)
    $(this).find('.num').text( +num + 1);
  });
});

// 投票函数的处理
function askVote(val, id) {
  console.log(id)
  $.post('/ask/vote',{val: val, id: id}, function(data) {
  });
}
