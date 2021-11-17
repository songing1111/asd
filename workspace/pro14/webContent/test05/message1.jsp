<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSTL 다국어 기능</title>
</head>
<body>
<fmt:setLocale value="en_US" /> 
<%--<fmt:setLocale value="ko_KR"/> --%>
 <h1>
 	회원정보<br><br>
 	<fmt:bundle basename="resource.member">
 	이름:<fmt:message key="mem.name"/><br>
 	주소:<fmt:message key="mem.address"/><br>
 	직업:<fmt:message key="mem.job"/><br>
 	</fmt:bundle>
 </h1>
</body>
</html>