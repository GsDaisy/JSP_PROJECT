 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
%>

localStorage.setItem('name', '<%= name %>');
localStorage.setItem('id', '<%= id %>');
localStorage.setItem('pw', '<%= pw %>');

localStorage.getItem('name'); 
localStorage.getItem('birth'); 

<!-- localStorage.clear(); // 전체 삭제 -->

</body>
</html> --%>

<%

String id = request.getParameter("id");                        // request에서 id 파라미터를 가져온다
String name = request.getParameter("name");
String passwd = request.getParameter("pw");      // request에서 passwd 파라미터를 가져온다.



session.setAttribute("name", name);
session.setAttribute("id", id);                 // 세션에 "id" 이름으로 id 등록
session.setAttribute("pw", passwd);
response.sendRedirect("login.jsp");               // 로그인 성공 메인페이지 이동



%>                                                       




