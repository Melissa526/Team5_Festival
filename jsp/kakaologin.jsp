<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8");%>
    <% response.setContentType("text/html;charset=UTF-8");%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
  
  <script src="//developers.kakao.com/sdk/js/kakao.js"></script>
 </head>
 
 <body>
  <a id="kakao-login-btn"></a>
  
  <script type='text/javascript'>
    //<![CDATA[
   // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('88a53644a53d27e2c5d35f83330acdac');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function getKakaotalkUserProfile(){
         // 이름과 아이디를 요청합니다.
          Kakao.API.request({
              url: '/v1/user/me',
              success: function(res) {
                 console.log("이름 : " + res.properties.nickname);
                 console.log("아이디 : " + res.id);
                
                 var kakaoid = res.id;
                 var kakaoname = res.properties.nickname;
                 
                 document.write('<form action="login.do" id="sub_form" method="get">'+
                             '<input type="hidden" name="command" value="kakao">'+
                             '<input type="hidden" name="kakaoid" value="'+kakaoid+'">'+
                             '<input type="hidden" name="kakaoname" value="'+kakaoname+'">'+
                             '</form>');
                 document.getElementById("sub_form").submit();
              },
              fail: function(error) {
                 console.log(error);
              }
           });
        },
      fail: function(err) {
         alert(JSON.stringify(err));
      }
    });
  </script>
</body>
</html>
