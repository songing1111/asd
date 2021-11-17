<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 검색창</title>
</head>
<body>
	<form action="${contextPath}/mem4.do">
		<input type="hidden" name="action" value="searchMember"/>
		이름: <input type="text" name="name"/><br>
		이메일: <input type="text" name="email" /><br>
		<input type="submit" value="검색"/>
	</form>
</body>
</html>