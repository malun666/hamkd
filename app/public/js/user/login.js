$(function() {
  // 验证码图片的处理。
  $("#vcodeImg").on("click", function() {
    $(this).attr("src","/user/getCodeImage/"+Date.now().toPrecision())
  });

  // 验证密码不为空
  $("#frmReg").validate({
    rules: {
        password2: {
        required: true,
        minlength: 6,
        equalTo: '#password'
      }
    },
    messages: {
      // password2: "请输入相同的密码！"
    }
  });

  // 处理用户登录

});
