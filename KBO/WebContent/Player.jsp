<%@page import="org.jsoup.nodes.Element"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="java.io.IOException"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@ page import="org.json.simple.*"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KBO리그</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4">선수 정보</h1>
		</div>
	</div>

	<div class="container">
	<div style="height:80px;padding:10px;margin-bottom:10px;border-left:5px solid gray;background:#3F0099;color:white;">
	<div style="float:left;background:;width:60px; height:60px;margin-right:10px;border:2px solid gray;border-radius : 50%;-webkit-border-radius : 50%;-moz-border-radius : 50%;overflow : hidden;vertical-align : middle;}">
	<div style="width:60px;font-size:30px;padding:5px;text-align:center;padding-left:0px;">
	<i class="fa-regular fa-calendar-days"></i>
	</div>
	</div>
	<button type="button" data-toggle="dropdown" style="color:white;border:0px;background:#3F0099;padding:3px;">
	<font style="font-size:20px;font-weight:bold;" > 이대호 </font>
	</button>
	<div>
	<h6>    롯데, 지명타자 </h6>
	</div>
	</div>
	</div>
<%
/* String url = "http://www.statiz.co.kr/player.php?name="+ +"&search="; */
String url = "http://www.statiz.co.kr/player.php?name=이대호&search=";/*양현종*/
String url2 = "http://www.statiz.co.kr/player.php?name=이진영&birth=1980-06-15";
Document doc = null;

try {
	doc = Jsoup.connect(url).get();

} catch (IOException e) {
	e.printStackTrace();
}

Elements element = doc.select("div.callout");


 	for (Element el : element.select("li")) {
        // System.out.println(el.text());
		out.println("<div class='container' style='padding-bottom: 5px;'>");
		out.println(el.text());
		out.println("</div>");
      } 
%>
<%
String url3 = "http://www.statiz.co.kr/player.php?name=이대호&search=";

try {
	doc = Jsoup.connect(url3).get();

} catch (IOException e) {
	e.printStackTrace();
}

Elements element1 = doc.select("div.box");

for(int i = 2 ; i<element1.size(); i++){
	out.println("<div class='container' style='padding-top: 15px;'>");
	out.println(element1.get(i).html());
	out.println("</div>");
}
%>
</body>
</html>