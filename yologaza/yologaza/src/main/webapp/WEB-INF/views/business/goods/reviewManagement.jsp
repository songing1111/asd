<!-- 기여도 : 송상우100% -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>    

<html>
<head>
	<meta charset=UTF-8">
	<title>리뷰 관리</title>
	<link rel="stylesheet" href="${contextPath}/resources/css/admin_main.css" rel="stylesheet" type="text/css" media="screen">
	<style>
		#admin_main{
			margin-bottom: -150px;
		}
		.admin_main_wrap .admin_main_box .adminCustomer{
			width: 100%;
			margin: 0 auto;
			padding: 40px 50px 0px 50px;
			border-radius: 15px 15px 0 0;
			border: 9px solid #ddd;
			border-bottom: 0px;
			box-sizing: border-box;
			margin-top: 50px;
		}
		#admin_main .building_box{
			display: flex;
			width:100%;
			height:180px;
			padding-top:60px;
			box-sizing:border-box;
			justify-content: space-around;
		}
		#admin_main .door{
			width: 90px;
			height:120px;
			background:#ddd;
			margin:0 auto;
			border-radius:10px 10px 0px 0px;
		}
		#admin_main .door{
			float:left;
			width: 90px;
			height:120px;
			background:#ddd;
			border-radius:10px 10px 0px 0px;
		}
		#admin_main .window{
			float:left;
			width: 120px;
			height:60px;
			border: 6px solid #ddd;
			border-radius:10px;
		}
	</style>
	<script>
	if(("${member.auth}" == "1") && ("${isLogOn}" == "true")){
		alert("사업자 권한이 필요합니다.");
		document.location.href = "/yologaza/business_main.do";
	}else if(('${member}' == '') || ('${member}' == null)){
		alert("로그인이 필요합니다.");
		document.location.href = "/yologaza/businessMember/business_loginForm.do";
	}
	</script>
</head>
<body>
<div id="admin_main" class="admin_main_wrap">
	  <div class="admin_main_box con" style="width:1024px">

	    <div class="adminCustomer">
	      <div class="adminCustomer_box">
	        <h3>리뷰 관리</h3>
		</div>
		<div class="building_box">
			<div class="window"></div>
			<div class="door"></div>
			<div class="window"></div>
		</div>
	</div>
</div>
</body>
</html>
