<%@page import="org.jsoup.select.Elements"%>
<%@page import="java.io.IOException"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KBO리그</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="jumbotron">
		<div class="container">
			<h3 class="display-5">2022년 종합 순위</h3>
		</div>
	</div>
	<!--보라색 컨테이너  -->
		<div class="container" style="height:80px;padding:10px;margin-bottom:10px;border-left:5px solid gray;background:#3F0099;color:white;padding-top: 15px;">
	<div style="float:left;background:;width:60px; height:60px;margin-right:10px;border:2px solid gray;border-radius : 50%;-webkit-border-radius : 50%;-moz-border-radius : 50%;overflow : hidden;vertical-align : middle;}">
	<div style="width:60px;font-size:30px;padding:5px;text-align:center;padding-left:0px;">
	<i class="fa-regular fa-calendar-days"></i>
	</div>
	</div>
	<!--시즌 기록  -->
	<div class="btn-group" style="margin-bottom:5px;;">
	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="color:white;border:0px;background:#3F0099;padding:3px;">
	<font style="font-size:20px;font-weight:bold;" > 2022년 시즌기록 </font>
	<span class="caret"></span>
	</button>
	</div>
	<br>
	<a href="http://localhost:8090/KBO/WAR.jsp">
	<span class="label" style="text-decoration:none;padding:3px;font-size:12px;padding-left:2px;padding-right:2px;border:1px solid white;color:#3F0099;background:white;">종합</span>
	</a> 
	<a href="http://localhost:8090/KBO/T1.jsp">
	<span class="label" style="text-decoration:none;padding:3px;font-size:12px;padding-left:2px;padding-right:2px;border:1px solid white;background:#3F0099;color:white;">타격</span>
	</a> 
	<a href="http://localhost:8090/KBO/T2.jsp">
	<span class="label" style="text-decoration:none;padding:3px;font-size:12px;padding-left:2px;padding-right:2px;border:1px solid white;background:#3F0099;color:white;">투구</span>
	</a> 
	</div>
	<%
		String url = "http://www.statiz.co.kr/stat.php?re=7";
	Document doc = null;

	try {
		doc = Jsoup.connect(url).get();

	} catch (IOException e) {
		e.printStackTrace();
	}
	
	Elements element = doc.select("div.row");
	for(int i = 5; i < 7; i++){
	out.println("<div class='container' style='padding-top: 15px;'>");
	out.println(element.get(i).html());
	out.println("</div>");
	}
	%>
</body>
</html>