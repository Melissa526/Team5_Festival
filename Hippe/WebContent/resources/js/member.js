/****************************** 헤더 - 세션 로그인/로그아웃 ******************** */

	

/******************************* MEMBER SIGNUP (회원가입) *********************************/
	var confId;
	var confEmail;
	
	/* ONLOAD FUNCTION */
	$(function() {
		/* 전체동의 액션 */
		$("#allChk").click(function() {
			//전체선택
			if ($("#allChk").prop("checked")) {
				$("input[type=checkbox]").prop("checked", true);
				//전체선택 해제
			} else {
				$("input[type=checkbox]").prop("checked", false);
			}
		});

		/* 비밀번호 재확인 */
		$("#pwChk").change(function(){
			if($("#pwChk").val() != $("input[name=member_pw]").val()){
				$("#msgPW").html("비밀번호가 일치하지 않습니다.");
			}else{
				$("#msgPW").html("");
			}
		});
		
		/* 아이디 중복확인 */
		$("#idChkBtn").click(function(){
			url = "id_validation.jsp?id=" + $("#member_id").val();
			open(url, "아이디 중복체크", "toolbar=no, resizable=no, location=no, width=300px, height=300px");
			confId = true;
		});
		
		$(".member_address").click(function(){
			alert('도로명주소 입력하기');
		});
		

	});
	/* 인증코드 전송 */
	function sendVerifyCode(){
		alert("인증메일이 발송되었습니다! \n최대 1~3분이 소요될 수 있습니다.");
		var userEmail = $("input[name=email]").val();
		//alert("전송할 주소 : " + userEmail);
		$.ajax({
			type : "POST",
			url : "../mailController.do?command=sendEmail&email=" + userEmail,
			success : function(result){
				$("input[name=emailCode]").change(function(){
					if(result == $("input[name=emailCode]").val()){
						$("#msg-emailVerify").attr("color", "blue");
						$("#msg-emailVerify").html("인증확인");
						confEmail = true;
					}else{
						$("#msg-emailVerify").html("인증번호 오류");
						confEmail = false;
					}
				});
			},error : function(){
				
			}
		});
	}

	/* SUBMIT 버튼액션 */
	function sumbitForm() {
		if (confId== true) {
			if(confEmail== true){
				if(($("#SignLawChk").is(":checked")&&$("#PersonalInfowChk").is(":checked")) == true){
					$("#welcomeMember").submit();
				}else{
					alert("약관동의를 확인해주세요.");					
					$("#SignLawChk").focus();
				}
			}else{
				alert("이메일 인증을 해주세요.");
				$("input[name=email_id]").focus();
			}
		} else {
			alert("아이디 중복확인을 해주세요");
			$("#member_id").focus();
		}
	}

	/* CANCLE 버튼액션 */
	function cancleJoin() {
		var conf = confirm("정말로 돌아가시겠습니까? 입력하신 정보는 저장되지 않습니다.");
		if (conf) {
			location.href = '../memberController.do?command=main';
		}
	}
	
	
	
	
/******************************* MEMBER LOGIN (로그인) *********************************/
	
	function loginForm(){
		if($("input[type=text]").val()!= ""){
			if($("input[type=password]").val() != ""){
				$(".loginform").submit();
			}else{
				alert("비밀번호를 입력하세요.");
				$("input[type=password]").focus();
			}
		}else{
			alert("아이디를 입력하세요.");
			$("input[type=text]").focus();
		}
	}
	

	/* 카카오톡으로 로그인 */
	$(function(){
		// 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('88a53644a53d27e2c5d35f83330acdac');
		// 카카오 로그인 버튼을 생성합니다.
		Kakao.Auth.createLoginButton({
			container: '#btn_KakaoLogin',
			success: function getKakaotalkUserProfile(){
				// 이름과 아이디를 요청합니다.
				Kakao.API.request({
					url: '/v1/user/me',
					success: function(res) {
						console.log("이름 : " + res.properties.nickname);
						console.log("아이디 : " + res.id);
						
						var kakaoid = res.id;
						var kakaoname = res.properties.nickname;
						
						document.write('<form action="../memberController.do" id="sub_form" method="get">'+
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
	});

