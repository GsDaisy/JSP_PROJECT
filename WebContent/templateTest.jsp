<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String contentPage = request.getParameter("CONTENTPAGE");
%>
    <link href="https://fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet">
<style>
	#color{
		background-color:#ABE0F2;

	}
	table{
		margin:0px;
		padding:0px;
	}

	body{
        font-family: 'PT Sans', sans-serif;
        font-size: 15px;
        color: #8293A1;
        padding:0px;
        margin:0px;
        letter-spacing: 1.5px;
	}
	
</style>
<body>

<table>
<jsp:include page="scroll2.jsp"></jsp:include>
<tr><td><jsp:include page="nav.jsp" flush="false"></jsp:include></td></tr>

<tr style="margin:0px;padding:0px;"><td style="padding:0px;margin:0px;"><!-- <div style="margin-left:-200px;"> --><jsp:include page="<%=contentPage%>" flush="false"/></td></tr>
<tr style="background-color: #ABE0F2;"><td><div style="margin-left:-200px;width:1280px;background-color: #ABE0F2;margin-bottom: -100px;margin-top: -2px;"><jsp:include page="bottom.jsp" flush="false"/></td></tr></div>
</table>

<%-- 
			<jsp:include page="nav.jsp" flush="false"></jsp:include>

			<div style="margin-left:-200px;"><jsp:include page="<%=contentPage%>" flush="false"/></div>

			<div id="color"><jsp:include page="bottom.jsp" flush="false"/></div> --%>






</body>