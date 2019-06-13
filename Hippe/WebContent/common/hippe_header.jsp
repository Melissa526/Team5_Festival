<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="hippe.member.dto.MemberDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
</head>
<!--booststrap-->
  <link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
  <!--//booststrap end-->
  <!-- font-awesome icons -->
  <link href="../resources/css/font-awesome.min.css" rel="stylesheet">
  <!-- //font-awesome icons -->
  <!--stylesheets-->
  <link href="/Hippe/resources/css/style.css" rel="stylesheet" type="text/css" media="all">
  <!--//stylesheets-->
  <link href="//fonts.googleapis.com/css?family=Josefin+Sans:400,600,700" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Libre+Franklin:400,500" rel="stylesheet">
  <style>
  .btnHead{
	display: block;
    padding: 6px 17px;
    font-size: 14px;
    text-decoration: none;
    border: 1px solid white;
    float: right;
    margin: 0px 0px;
    background-color: #59CAB7;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
  }
</style>
<script type="text/javascript">
addEventListener("load", function () {
  setTimeout(hideURLbar, 0);
}, false);

function hideURLbar() {
  window.scrollTo(0, 1);
}
</script>
<body>
<div id="home">
<!-- header -->
    <div class="headder-top d-md-flex">
      <div id="logo">
        <h1>
          <a href="http://localhost:8787/Hippe/hippe_main/hippe_main.jsp">Hippe</a>
        </h1>
      </div>
      <!-- nav -->
      <nav class="mx-md-auto">

        <label for="drop" class="toggle">Menu</label>
        <input type="checkbox" id="drop">
        <ul class="menu mt-2">
          <li>
            <a href="/Hippe/festivalController.do?command=list">Fesitval</a>
          </li>
          <li>
          	<a href="/Hippe/festivalController.do?command=ticketbox">Ticket</a>
          </li>
          <li>
            <a href="/Hippe/freeController.do?command=review">Review</a>
          </li>
            <!-- 게시판 관련 -->
           <li>
            <label for="drop-2" class="toggle toogle-2">Board
              <span class="fa fa-angle-down" aria-hidden="true"></span>
            </label>
            <a href="/Hippe//freeController.do?command=list">Board
              <span class="fa fa-angle-down" aria-hidden="true"></span>
            </a>
            <input type="checkbox" id="drop-2">
            <ul>
              <li>
                <a href="/Hippe//freeController.do?command=list" class="drop-text">자유게시판</a>
              </li>
              <li>
                <a href="/Hippe/eventController.do?command=eventlist" class="drop-text">이벤트</a>
              </li>
            </ul>
          </li>
            <!-- Mypage -->
           <li>
            <label for="drop-2" class="toggle toogle-2">MyPage
              <span class="fa fa-angle-down" aria-hidden="true"></span>
            </label>
            <a href="/Hippe/memberController.do?command=mypage">MyPage
              <span class="fa fa-angle-down" aria-hidden="true"></span>
            </a>
            <input type="checkbox" id="drop-2">
            <ul>
              <li>
                <a href="#gallery" class="drop-text">회원정보수정</a>
              </li>
              <li>
                <a href="#blog" class="drop-text">예약확인/취소</a>
              </li>
              <li>
                <a href="#gallery" class="drop-text">관심상품</a>
              </li>
              <li>
                <a href="#contact" class="drop-text">고객센터</a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <div class="social-icons">
        <ul>
        <c:choose>
        <c:when test="${empty id}">
          <li>
          	  <label class="btnHead" id="login" onclick="gotoLogin()">Login</label>
          </li>
          <li>
          	  <label class="btnHead" id="signup" onclick="gotoSignup()">Signup</label>
          </li>
          </c:when>
          <c:otherwise>
          <li>
          	  <label class="btnHead" id="logout" onclick="gotoLogout()">Logout</label>
          </li>
          </c:otherwise>
        </c:choose>
        </ul>
      </div>
      <!-- //nav -->
    </div>
    <!-- //header -->
</div>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
<script>
    function gotoLogin(){
    	location.href="/Hippe/memberController.do?command=loginBtn";
    }
    function gotoSignup(){
    	location.href="/Hippe/memberController.do?command=signupBtn";
    }
    
    function gotoLogout(){
    	var conf = confirm('로그아웃하시겠습니까?');
    	if(conf){
	    <%	session.removeAttribute("id");  %>
			location.href = '/Hippe/memberController.do?command=main';
    	}
    }
</script>
</html>