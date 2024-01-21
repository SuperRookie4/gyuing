<%@page import="basic_p.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Menu> menus = (ArrayList<Menu>)request.getAttribute("menus");
%>    
<table width="100%">
<% for(Menu m : menus) {%>
	<tr>
		<td><a href="?category=<%=m.cate %>&main=<%=m.main %>"><%=m.title %></a></td>
	</tr>
<%} %>	

</table>