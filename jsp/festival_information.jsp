<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="java.io.IOException"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#center {
	margin-left: 30%;
}

#zidodiv {
	margin-left: -20%;
}

#zidoimg {
	margin-left: 120%;
}

.balloon {
	right: 500px;
	top: 350px;
	display: inline-block;
	position: absolute;
	background: rgb(89, 202, 183);
	height: 257px;
	width: 322px;
	margin: 0 auto 10px;
}

.balloon:after {
	content: '';
	position: absolute;
	border-top: 10px solid transparent;
	border-right: 10px solid rgb(89, 202, 183);
	border-bottom: 10px solid transparent;
	left: -10px;
	top: 128px;
}
#tjdnf1{
	margin-left: 23.2%;
	margin-top: -130%;
}
#tjdnf2{
	margin-top: -15%;
}
#tjgo1{
	margin-left: 4.3%;
	margin-top: -11%;
}
#tjgo2{
	margin-top: -15%;
}
#cndska1{
	margin-left: 19.5%;
	margin-top: 5%;
}
#cndska2{
	margin-top: -15%;
}
#cndqnr1{
	margin-left: 39%;
	margin-top: -16%;
}
#cndqnr2{
	margin-top: -15%;
}
#dudtj1{
	margin-left: 42%;
	margin-top: -39%;
}
#dudtj2{
	margin-top: -15%;
}
#dudehd1{
	margin-left: 60%;
	margin-top: -9%;
}
#dudehd2{
	margin-top: -15%;
}
#dnffmd1{
	margin-left: 83%;
	margin-top: -17%;
}
#dnffmd2{
	margin-top: -15%;
}
#rudqnr1{
	margin-left: 59%;
	margin-top: 14%;
}
#rudqnr2{
	margin-top: -15%;
}
#rudska1{
	margin-left: 56%;
	margin-top: 14%;
}
#rudska2{
	margin-top: -15%;
}
#wjsqnr1{
	margin-left: 36%;
	margin-top: -22%;
}
#wjsqnr2{
	margin-top: -15%;
}
#wjsska1{
	margin-left: 19%;
	margin-top: -2%;
}
#wjsska2{
	margin-top: -15%;
}
#wpwneh1{
	margin-left: 12%;
	margin-top: 8%;
}
#wpwneh2{
	margin-top: -15%;
}
#skfTl{
	margin-left: 25%;
	margin-top: -125%;
}
</style>
</head>
<body>

	<%@ include file="header.jsp"%>

	<br/><br/><br/><br/><br/><br/>
	
	
	
	<div id="center">
		
		<div id="zidodiv"
			style="width: 268px; height: 306px; background: url('img/korea.png');">
			<img id="zidoimg" alt="img" src="img/zido.jpg"
				style="width: 377px; height: 406px;">
					
			<div id="tjdnf1"  style="width: 36px; height: 36px; background-color: rgb(255, 255, 255); font-size: 12px; color: #d64228;">				
				<%
					String url = "http://www.weather.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=108";
					Document doc = null;

					try {
						doc = Jsoup.connect(url).get();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					Elements elements = doc.getElementsByTag("location");
					System.out.println(elements.toString());
					
					String tjdnfres1 = null;
					String tjdnfres2 = null;
					
					for (Element el : elements) {
						if (el.getElementsByTag("city").text().equals("서울")) {
							tjdnfres1 = el.getElementsByTag("wf").get(0).text();
							tjdnfres2 = el.getElementsByTag("tmn").get(0).text() + "/" + el.getElementsByTag("tmx").get(0).text();
						}
					}
				%>
				<%			
					switch(tjdnfres1){
					case "맑음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s1.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름조금":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s2.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s21.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s4.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s5.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐림":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s11.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s13.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s14.gif" style="width: 36px; height: 26px;">
						<%
						break;
					}
					%>
					<div id="tjdnf2">
						<%= tjdnfres2 %>
					</div>
				</div>
				
				<div id="tjgo1"  style="width: 36px; height: 36px; background-color: rgb(255, 255, 255); font-size: 12px; color: #d64228;">				
				<%
					
					String tjgores1 = null;
					String tjgores2 = null;
					
					for (Element el : elements) {
						if (el.getElementsByTag("city").text().equals("인천")) {
							tjgores1 = el.getElementsByTag("wf").get(0).text();
							tjgores2 = el.getElementsByTag("tmn").get(0).text() + "/" + el.getElementsByTag("tmx").get(0).text();
						}
					}
				%>
				<%			
					switch(tjgores1){
					case "맑음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s1.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름조금":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s2.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s21.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s4.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s5.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐림":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s11.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s13.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s14.gif" style="width: 36px; height: 26px;">
						<%
						break;
					}
					%>
					<div id="tjgo2">
						<%= tjgores2 %>
					</div>
				</div>
				<div id="cndska1"  style="width: 36px; height: 36px; background-color: rgb(255, 255, 255); font-size: 12px; color: #d64228;">				
				<%
					
					String cndskares1 = null;
					String cndskares2 = null;
					
					for (Element el : elements) {
						if (el.getElementsByTag("city").text().equals("대전")) {
							cndskares1 = el.getElementsByTag("wf").get(0).text();
							cndskares2 = el.getElementsByTag("tmn").get(0).text() + "/" + el.getElementsByTag("tmx").get(0).text();
						}
					}
				%>
				<%			
					switch(cndskares1){
					case "맑음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s1.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름조금":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s2.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s21.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s4.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s5.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐림":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s11.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s13.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s14.gif" style="width: 36px; height: 26px;">
						<%
						break;
					}
					%>
					<div id="cndska2">
						<%= cndskares2 %>
					</div>
				</div>
				<div id="cndqnr1"  style="width: 36px; height: 36px; background-color: rgb(255, 255, 255); font-size: 12px; color: #d64228;">				
				<%
					
					String cndqnrres1 = null;
					String cndqnrres2 = null;
					
					for (Element el : elements) {
						if (el.getElementsByTag("city").text().equals("충주")) {
							cndqnrres1 = el.getElementsByTag("wf").get(0).text();
							cndqnrres2 = el.getElementsByTag("tmn").get(0).text() + "/" + el.getElementsByTag("tmx").get(0).text();
						}
					}
				%>
				<%			
					switch(cndqnrres1){
					case "맑음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s1.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름조금":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s2.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s21.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s4.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s5.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐림":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s11.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s13.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s14.gif" style="width: 36px; height: 26px;">
						<%
						break;
					}
					%>
					<div id="cndqnr2">
						<%= cndqnrres2 %>
					</div>
				</div>
				<div id="dudtj1"  style="width: 36px; height: 36px; background-color: rgb(255, 255, 255); font-size: 12px; color: #d64228;">				
				<%
					
					String dudtjres1 = null;
					String dudtjres2 = null;
					
					for (Element el : elements) {
						if (el.getElementsByTag("city").text().equals("원주")) {
							dudtjres1 = el.getElementsByTag("wf").get(0).text();
							dudtjres2 = el.getElementsByTag("tmn").get(0).text() + "/" + el.getElementsByTag("tmx").get(0).text();
						}
					}
				%>
				<%			
					switch(dudtjres1){
					case "맑음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s1.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름조금":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s2.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s21.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s4.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s5.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐림":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s11.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s13.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s14.gif" style="width: 36px; height: 26px;">
						<%
						break;
					}
					%>
					<div id="dudtj2">
						<%= dudtjres2 %>
					</div>
				</div>
				<div id="dudehd1"  style="width: 36px; height: 36px; background-color: rgb(255, 255, 255); font-size: 12px; color: #d64228;">				
				<%
					
					String dudehdres1 = null;
					String dudehdres2 = null;
					
					for (Element el : elements) {
						if (el.getElementsByTag("city").text().equals("강릉")) {
							dudehdres1 = el.getElementsByTag("wf").get(0).text();
							dudehdres2 = el.getElementsByTag("tmn").get(0).text() + "/" + el.getElementsByTag("tmx").get(0).text();
						}
					}
				%>
				<%			
					switch(dudehdres1){
					case "맑음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s1.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름조금":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s2.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s21.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s4.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s5.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐림":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s11.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s13.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s14.gif" style="width: 36px; height: 26px;">
						<%
						break;
					}
					%>
					<div id="dudehd2">
						<%= dudehdres2 %>
					</div>
				</div>
				<div id="dnffmd1"  style="width: 36px; height: 36px; background-color: rgb(255, 255, 255); font-size: 12px; color: #d64228;">				
				<%
					
					String dnffmdres1 = null;
					String dnffmdres2 = null;
					
					for (Element el : elements) {
						if (el.getElementsByTag("city").text().equals("울릉도")) {
							dnffmdres1 = el.getElementsByTag("wf").get(0).text();
							dnffmdres2 = el.getElementsByTag("tmn").get(0).text() + "/" + el.getElementsByTag("tmx").get(0).text();
						}
					}
				%>
				<%			
					switch(dnffmdres1){
					case "맑음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s1.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름조금":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s2.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s21.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s4.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s5.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐림":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s11.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s13.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s14.gif" style="width: 36px; height: 26px;">
						<%
						break;
					}
					%>
					<div id="dnffmd2">
						<%= dnffmdres2 %>
					</div>
				</div>
				<div id="rudqnr1"  style="width: 36px; height: 36px; background-color: rgb(255, 255, 255); font-size: 12px; color: #d64228;">				
				<%
					
					String rudqnrres1 = null;
					String rudqnrres2 = null;
					
					for (Element el : elements) {
						if (el.getElementsByTag("city").text().equals("경주")) {
							rudqnrres1 = el.getElementsByTag("wf").get(0).text();
							rudqnrres2 = el.getElementsByTag("tmn").get(0).text() + "/" + el.getElementsByTag("tmx").get(0).text();
						}
					}
				%>
				<%			
					switch(rudqnrres1){
					case "맑음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s1.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름조금":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s2.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s21.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s4.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s5.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐림":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s11.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s13.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s14.gif" style="width: 36px; height: 26px;">
						<%
						break;
					}
					%>
					<div id="rudqnr2">
						<%= rudqnrres2 %>
					</div>
				</div>
				<div id="rudska1"  style="width: 36px; height: 36px; background-color: rgb(255, 255, 255); font-size: 12px; color: #d64228;">				
				<%
					
					String rudskares1 = null;
					String rudskares2 = null;
					
					for (Element el : elements) {
						if (el.getElementsByTag("city").text().equals("부산")) {
							rudskares1 = el.getElementsByTag("wf").get(0).text();
							rudskares2 = el.getElementsByTag("tmn").get(0).text() + "/" + el.getElementsByTag("tmx").get(0).text();
						}
					}
				%>
				<%			
					switch(rudskares1){
					case "맑음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s1.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름조금":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s2.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s21.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s4.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s5.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐림":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s11.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s13.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s14.gif" style="width: 36px; height: 26px;">
						<%
						break;
					}
					%>
					<div id="rudska2">
						<%= rudskares2 %>
					</div>
				</div>
				<div id="wjsqnr1"  style="width: 36px; height: 36px; background-color: rgb(255, 255, 255); font-size: 12px; color: #d64228;">				
				<%
					
					String wjsqnrres1 = null;
					String wjsqnrres2 = null;
					
					for (Element el : elements) {
						if (el.getElementsByTag("city").text().equals("군산")) {
							wjsqnrres1 = el.getElementsByTag("wf").get(0).text();
							wjsqnrres2 = el.getElementsByTag("tmn").get(0).text() + "/" + el.getElementsByTag("tmx").get(0).text();
						}
					}
				%>
				<%			
					switch(wjsqnrres1){
					case "맑음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s1.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름조금":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s2.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s21.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s4.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s5.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐림":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s11.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s13.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s14.gif" style="width: 36px; height: 26px;">
						<%
						break;
					}
					%>
					<div id="wjsqnr2">
						<%= wjsqnrres2 %>
					</div>
				</div>
				<div id="wjsska1"  style="width: 36px; height: 36px; background-color: rgb(255, 255, 255); font-size: 12px; color: #d64228;">				
				<%
					
					String wjsskares1 = null;
					String wjsskares2 = null;
					
					for (Element el : elements) {
						if (el.getElementsByTag("city").text().equals("광주")) {
							wjsskares1 = el.getElementsByTag("wf").get(0).text();
							wjsskares2 = el.getElementsByTag("tmn").get(0).text() + "/" + el.getElementsByTag("tmx").get(0).text();
						}
					}
				%>
				<%			
					switch(wjsskares1){
					case "맑음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s1.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름조금":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s2.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s21.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s4.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s5.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐림":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s11.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s13.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s14.gif" style="width: 36px; height: 26px;">
						<%
						break;
					}
					%>
					<div id="wjsska2">
						<%= wjsskares2 %>
					</div>
				</div>
				<div id="wpwneh1"  style="width: 36px; height: 36px; background-color: rgb(255, 255, 255); font-size: 12px; color: #d64228;">				
				<%
					
					String wpwnehres1 = null;
					String wpwnehres2 = null;
					
					for (Element el : elements) {
						if (el.getElementsByTag("city").text().equals("제주")) {
							wpwnehres1 = el.getElementsByTag("wf").get(0).text();
							wpwnehres2 = el.getElementsByTag("tmn").get(0).text() + "/" + el.getElementsByTag("tmx").get(0).text();
						}
					}
				%>
				<%			
					switch(wpwnehres1){
					case "맑음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s1.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름조금":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s2.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많음":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s21.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s4.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s6.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "구름많고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s5.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐림":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s11.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s13.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 비/눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈/비":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s15.gif" style="width: 36px; height: 26px;">
						<%
						break;
					case "흐리고 눈":
						%>
							<img alt="img" src="https://ssl.pstatic.net/static/weather/images/w_icon/w_s14.gif" style="width: 36px; height: 26px;">
						<%
						break;
					}
					%>
					<div id="wpwneh2">
						<%= wpwnehres2 %>
					</div>
				</div>
				<div id="skfTl" style="font-size: 24px;">
					지역별 날씨
				</div>				

			</div>
		<div>
			
		</div>
		<div class="balloon"
			style="width: 352px; height: 257px; text-align: center; color: rgb(255, 255, 255);">축제설명칸</div>
	</div>



</body>
</html>
