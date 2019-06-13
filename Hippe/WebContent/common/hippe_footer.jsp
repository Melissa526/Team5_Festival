<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>
 <script>
    addEventListener("load", function () {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
    function gotoLogin(){
    	location.href="/Hippe/memberController.do?command=loginBtn";
    }
    function gotoSignup(){
    	location.href="/Hippe/memberController.do?command=signupBtn";
    }
</script>
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
<body>
<!-- footer -->
  <section class="footer-grids py-lg-4 py-md-3 py-sm-3 py-3">
    <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
      <div class="footer-w3layouts-head text-center">
        <h5>About Us</h5>
      </div>
      <div class="footer-icons mt-md-4 mt-3 text-center">
        <ul>
          <li>
            <a href="#">
              <span class="fa fa-facebook"></span>
            </a>
          </li>
          <li>
            <a href="#">
              <span class="fa fa-twitter"></span>
            </a>
          </li>
          <li>
            <a href="#">
              <span class="fa fa-rss"></span>
            </a>
          </li>
          <li>
            <a href="#">
              <span class="fa fa-envelope"></span>
            </a>
          </li>
          <li>
            <a href="#">
              <span class="fa fa-instagram"></span>
            </a>
          </li>
        </ul>
      </div>
      <!-- move icon -->
      <div class="text-center mt-md-4 mt-3">
        <a href="#home" class="move-top text-center mt-3">
          <span class="fa fa-arrow-up" aria-hidden="true"></span>
        </a>
      </div>
      <!--//move icon -->
    </div>
  </section>
<!--//footer -->
  <!-- copy right -->
  <footer>
    <div class="bottom-footer text-center py-md-4 py-3">
      <p>
        © 2019 Hippe. All Rights Reserved | Design by
        <a href="https://github.com/Melissa526/Team5_Festival" target="_blank">Power Rangers</a>
      </p>
    </div>
  </footer>
  <!-- copy right -->
</body>
</html>