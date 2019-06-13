<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="height=device-height, initial-scale=1">
<title>Hippe || 대한민국 가장 힙한 페스티벌, 히페 :: 축제정보 조회 :: </title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.0.min.js"></script>

  <link href="../resources/css/board_festival.css" rel="stylesheet" type="text/css" >
  <!--booststrap-->
  <link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
  <!--//booststrap end-->
  <!-- font-awesome icons -->
  <link href="../resources/css/font-awesome.min.css" rel="stylesheet">
  <!-- //font-awesome icons -->
  <!--stylesheets-->
  <link href="../resources/css/style.css" rel='stylesheet' type='text/css' media="all">
  <!--//stylesheets-->
  <link href="//fonts.googleapis.com/css?family=Josefin+Sans:400,600,700" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Libre+Franklin:400,500" rel="stylesheet">
</head>
<body>
<script type="text/javascript">
	
	function listUpFestival(region){
		alert("id : " +region);
		$.ajax({
			type :'GET',
			url : 'festivalController.do?command=listup&region=' + region,
			dataType : JSON, 
			success : function(val){
				alert(region);
			},
			error : function(){
				alert("죄송합니다! 다시 시도해주세요.");
			}
		});
		$(".div_balloon").html(region);
	}
</script>
<%@ include file="../common/hippe_header.jsp" %>

	<div class="div_top_title">
		<h5 class="top-title mb-lg-4 mb-3 text-center">대한민국 축제, 어디까지 가봤니?</h5>
	    <h3 class="title mb-lg-5 mb-md-4 mb-sm-4 mb-3 text-center">전국에서 열리는 축제정보를 한번에 검색해보세요!</h3>
    </div>
	<div class="div_map">
		<img id="img_korea" alt="TheMapOfKOREA" src="../resources/images/map_korea.png">
		<img class="img_city" id="jeju" alt="" src="../resources/images/map_jejudo.png" onclick="listUpFestival(this.id)">
		<img class="img_city" id="seoul" alt="" src="../resources/images/map_seoul.png" onclick="listUpFestival(this.id)">
		<img class="img_city" id="gyeongi" alt="" src="../resources/images/map_gyeonggi.png" onclick="listUpFestival(this.id)">
		<img class="img_city" id="gangwon" alt="" src="../resources/images/map_gangwon.png" onclick="listUpFestival(this.id)">
		<img class="img_city" id="chungnam" alt="" src="../resources/images/map_chungnam.png" onclick="listUpFestival(this.id)">
		<img class="img_city" id="chungbuk" alt="" src="../resources/images/map_chungbuk.png" onclick="listUpFestival(this.id)">
		<img class="img_city" id="jeonnam" alt="" src="../resources/images/map_jeonnam.png" onclick="listUpFestival(this.id)">
		<img class="img_city" id="jeonbuk" alt="" src="../resources/images/map_jeonbuk.png" onclick="listUpFestival(this.id)">
		<img class="img_city" id="gyeongnam" alt="" src="../resources/images/map_gyeongnam.png" onclick="listUpFestival(this.id)">
		<img class="img_city" id="gyeongbuk" alt="" src="../resources/images/map_gyeongbuk.png" onclick="listUpFestival(this.id)">
	</div>
	<div class="div_balloon">축제설명칸</div>
	

</body>
</html>