
$(function() {
  // 注册监控事件
  $("#userName").on("change", function(){
    var text = $(this).val();
    $.ajax({
      url: "/user/checkUserName",
      type: "POST",
      data: { userName: text},
      dataType: "json",
      success: function(data) {
        if(data.isOk) {
          $("#statusUserName").addClass("glyphicon-ok").removeClass("glyphicon-remove");
          $("#userNameGroup").addClass("has-success").removeClass("has-error");
          $("#userNameErrorMsg").addClass("hidden");
        } else {
          $("#statusUserName").addClass("glyphicon-remove").removeClass("glyphicon-ok");
          $("#userNameGroup").addClass("has-error").removeClass("has-success");
          $("#userNameErrorMsg").removeClass("hidden");
        }
      }
    });
  });
  
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

});
