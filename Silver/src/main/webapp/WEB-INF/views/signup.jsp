<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>회원가입</title>
	
	<!-- 인코딩 -->
	<meta charset="UTF-8">
	<meta  name="viewport" content="width-device-width, initial-scale=1, shrink-to-fit=no">
    
	<!-- Bootstrap CSS 추가 -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	
	<!-- Custom CSS 추가 -->
	<link rel="stylesheet" href="resources/css/custom.css">
	<link rel="stylesheet" href="resources/css/signup.css" >
	
	 <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    
</head>
<body>

<!-- 네비게이션 바 -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
 		<a class="navbar-brand" href="index"><img src="resources/image/box.svg"> 실버서퍼</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar" aria-expanded="false">
	    <span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse justify-content-between" id="navbar">
		  <!-- 왼쪽 자동 정렬 -->
		  	<div class="navbar-nav"> 
		  		<a class="nav-item nav-link active" href="institution">
		  			요양기관 <span class="sr-only">(current)</span> </a>
		  		<a class="nav-item nav-link" href="practician">
		  			종사자 </a>
		  		<a class="nav-item nav-link" href="inquiry">
		  			자주하는질문 </a>	
			</div>
		  <!-- 오른쪽 자동 정렬 -->
		  	<c:if test="${sessionScope.loginId==null}">
		  	<div class="navbar-nav mr-sm-2">
		  		<a class="nav-item nav-link" href="login">
		  			로그인 </a>
		  		<a class="nav-item nav-link" href="signup">
		  			회원가입 </a>
		  	</div>
		  	</c:if>
		  	
		  	<c:if test="${sessionScope.loginId!=null}">
		  	<div class="navbar-nav mr-sm-2">
		  		<p class="lead">${sessionScope.loginId}님 환영합니다.</p>
		  		<a class="nav-item nav-link" href="logout">
		  			로그아웃 </a>
		  	</div>
			</c:if>
		</div>  
	</nav>	

<hr class="my-1">

	
	<div class="container">
		<div class="py-5 text-center">
			<img class="mb-4" src="resources/image/user.svg" alt="" width="72" height="72"> 
			<div class="signup-header px-5 py-0">
				<h4 class="my-1">회원가입</h4>
				<p class="lead">실버서퍼 가입시 일반사용자,종사자,기관관리자가 구분됩니다. 기관 관리자 담당자는 기관관리자 버튼을 눌러주세요.</p>
			</div>
		</div>
		
		<!-- 사용자 구분 -->
	<div class="card-deck mb-3 text-center">
	<div class="col-1">
	</div>
	<div class="col-5">
		<div class="card mb-5 shadow-sm">
			<div class="card-header">
				<h4 class="my-0 font-weight-normal">일반가입자</h4>
			</div>
			<div class="card-body">
				<h4 class="card-title pricing-card-title">일반·종사자 가입</h4>
				<ul class="list-unstyled mt-3 mb-4">
				<li>일반사용자와 요양기관 구직</li>	
				<li>하고있는 종사자로 등록하기</li>		          
				</ul>
				<button type="button" class="btn btn-lg btn-block btn-outline-info active">가입하기</button>
			</div>
		</div>
	</div>
	<div class="col-5">
		<div class="card mb-5 shadow-sm">
			<div class="card-header">
				<h4 class="my-0 font-weight-normal">기관담당자</h4>
			</div>
			<div class="card-body">
				<h4 class="card-title pricing-card-title">기관관리자 가입</h4>
				<ul class="list-unstyled mt-3 mb-4">
				<li>실제 요양기관을 운영중인</li>
				<li>기관 담당자 등록하기</li>
				</ul>
				<button type="button" class="btn btn-lg btn-block btn-outline-info">가입하기</button>
			</div>
		</div>
	</div>
	<div class="col-1">
	</div>
	</div>	
</div>

	<!-- 회원가입 -->
	<!-- <form action="insertMember" method="post"> -->
	
	<%-- <input type="hidden" name="registration" value="${member.registration}"><br>
	warning:<input type="text" name="warning" value="${member.warning}"><br>
	<input type="number" name="code_num" value="${member.code_num}"><br> --%>
<%--	
	<div class="container">
		<div class="py-5 text-center">
			<form class="form-signup" action="insertMember" method="post">
				<img class="mb-4" src="resources/image/userplus.svg" alt="" width="72" height="72"> 
				<h2 class="my-1">회원가입</h2>

				TYPE:<input type="number" name="type" value="${member.type}"><br>
				ID:<input type="text" name="userid" value="${member.userid}"><br>
				PW:<input type="password" name="userpwd" value="${member.userpwd}"><br>
				이름:<input type="text" name="username" value="${member.username}"><br>
				생년월일:<input type="date" name="birthday" value="${member.birthday}"><br>
				성별:<input type="text" name="gender" value="${member.gender}"><br>
				주소:<input type="text" name="address" value="${member.address}"><br>
				EMAIL:<input type="email" name="email" value="${member.email}"><br>
				<input type="submit" value="회원가입">
			</form>
		</div>
	</div> --%>
</body>
</html>