<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="id" value="hong" scope="page"/>
<c:set var="pwd" value="1234" scope="page"/>
<c:set var="name" value="${'홍길동' }" scope="page"/>
<c:set var="email" value="hong@test.com" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="lightgreen">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>이메일</b></td>
		</tr>
		<c:choose>
			<c:when test="${empty param.id }">
				<tr align="center">
					<td colspan=5>이름을 입력하세요!!</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr align="center">
					<td><c:out value="${param.id }"/></td>
					<td><c:out value="${param.pwd }"/></td>
					<td><c:out value="${param.name }"/></td>
					<td><c:out value="${param.email }"/></td>
			</c:otherwise>
		</c:choose>
	</table>	
</body>
</html>