<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	

%>

<!-- localStorage.setItem('name', 'zerocho');
localStorage.setItem('birth', 1994);
localStorage.getItem('name'); // zerocho
localStorage.getItem('birth'); // 1994 (문자열)
localStorage.removeItem('birth');
localStorage.getItem('birth'); // null (삭제됨)
localStorage.clear(); // 전체 삭제 -->




<% request.setCharacterEncoding("euc-kr");%>



<%
String myid = request.getParameter("id");
String mypw = request.getParameter("pw");
String id = "";
String pw = "";


id = (String)session.getAttribute("id");            // request에서 id 파라미터를 가져온다
pw = (String)session.getAttribute("pw");


if(id==null||id.equals("")||!(myid.equals(id))){                            // id가 Null 이거나 없을 경우

response.sendRedirect("join.jsp");    // 로그인 페이지로 리다이렉트 한다.

}else{
	if(pw==null || pw.equals("") || !(myid.equals(id))){
		response.sendRedirect("login.jsp");
	}else{
		response.sendRedirect("main.jsp");
	}
}

%>



</body>
</html>