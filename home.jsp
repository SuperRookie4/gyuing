<%@page import="basic_p.HomeExam"%>
<%@page import="basic_p.TemplateData"%>
<%@page import="java.util.HashMap"%>
<%@page import="basic_p.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HomeExam data = new HomeExam(request);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뚜레쥬르 homepage</title>
<style>
	#foot{
		background-color: #2e2f2e;
		color: white;
	}
	td{
		text-align: center;
		font-family: 굴림;
	}
	tr{
		background-color: #0d4632;	
		color: white;
	}
	a{
		text-decoration: none;
		color: white;
	}
	.beige{
		background-color: #f7f0da;
		color: #000;
	}
</style>
</head>
<body>
	<table border="">
		<tr>
			<td colspan="2">
				<h1>TOUSlesJOURS</h1>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<jsp:include page="inc/header.jsp"/>
			</td>
		</tr>
		<tr>
			<td width="150px">
				<jsp:include page="inc/menu.jsp"/>
			</td>
			<td width="700px" class="beige">
				<jsp:include page="<%=data.mainPageUrl %>"/>
			</td>
		</tr>
		<tr class="beige">
			<td colspan="2">
				<img alt="" src="../fff/뚜레쥬르.PNG">
			</td>
		</tr>
		<tr>
			<td colspan="2" id="foot">
				<jsp:include page="inc/footer.jsp"/>
			</td>
		</tr>
	</table>
</body>
</html>
