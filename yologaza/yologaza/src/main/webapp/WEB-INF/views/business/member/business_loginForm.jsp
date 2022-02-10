<!-- 기여도: 이택진100% -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="result" value="${param.result }" />
<%
   request.setCharacterEncoding("UTF-8");
%>     
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인창</title>	
	<c:choose>
		<c:when test="${result=='loginFailed' }">
		  <script>
		    window.onload=function(){
		      alert("올바른 아이디와 비밀번호를 입력해주세요!");
		    }
		  </script>
		</c:when>
		<c:when test="${result=='idFailed' }">
		  <script>
		    window.onload=function(){
		      alert("아이디를 입력해 주세요!");
		    }
		  </script>
		</c:when>
		<c:when test="${result=='PwdFailed' }">
		  <script>
		    window.onload=function(){
		      alert("비밀번호를 입력해 주세요!");
		    }
		  </script>
		</c:when>
	</c:choose>
	<link rel="stylesheet" href="${contextPath}/resources/css/loginForm.css">
</head>

<body>
	<img src="${contextPath}/resources/image/yolo-guesthouse.png" alt="yolo가자 로고" style="margin-top:60px; margin-bottom:30px; width:270px;">
	<form id="frmLogin" name="frmLogin" method="post"  action="${contextPath}/businessMember/login.do" style="height:auto; padding-bottom:20px;">
	  <h3>사업자 로그인</h3><br>
	
	    <input type="text" name="id" placeholder="아이디를 입력하세요"><br>
	    <input type="password" name="pwd" placeholder="비밀번호를 입력하세요"><br>
	    <button type="submit"> 로그인</button><br>
	
	    <a href="${contextPath}/member/agreeForm.do">회원가입</a>
	    |
	    <a href="${contextPath}/member/findIdView">아이디찾기</a>
	    |
	    <a href="${contextPath}/member/findPwView">비밀번호찾기</a><br>
	</form>
</body>
</html>
