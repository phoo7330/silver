<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>실버서퍼-기관검색</title>
	
	<!-- 인코딩 -->
	<meta charset="UTF-8">
	<meta  name="viewport" content="width-device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS 추가 -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	
	<!-- Custom CSS 추가 -->
	<link rel="stylesheet" href="resources/css/custom.css">

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

	<!-- 대시보드 -->
	<header id="search">
		<div class="p-3 bg-light text-black">
			<div class="row mx-3">
				<!-- 버튼 -->
				<button type="button" class="btn btn-outline-info btn-sm mx-1 active">요양병원</button>
				<button type="button" class="btn btn-outline-info btn-sm mx-1 ">요양원</button>
				<button type="button" class="btn btn-outline-info btn-sm mx-1 ">방문시설</button>
				<button type="button" class="btn btn-outline-info btn-sm mx-1 ">치매전담</button>
				
				<!-- 검색 -->
				<form class="form-inline mt-2 mt-md-0">
					<input class="form-control mr-sm-2 form-control-sm mx-2" type="text" placeholder="시설명 검색" aria-label="search">
					<button class="btn btn-info my-2 my-sm-0 btn-sm" type="submit">검색</button>
				</form>
			</div>
		</div>
	</header>
	
	<!-- 지도&검색내역 표기 -->
	<div class="row mb-2 mx-1 my-1">
		<div class="col-md-6">
	      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
	        <div class="col p-4 d-flex flex-column position-static">
	          <strong class="d-inline-block mb-2 text-primary">지도 들어갈 부분</strong>
			</div>
	      </div>
		</div>
		<div class="col-md-6">
	      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
	        <div class="col p-4 d-flex flex-column position-static">
	          <strong class="d-inline-block mb-2 text-danger">검색내역 들어갈 부분</strong>
			</div>
	      </div>
		</div>
	</div>


	<!-- jQuery javaScript 추가 -->
	<script src="resources/js/jquery.min.js"></script>
	
	<!-- Popper javaScript 추가 -->
	<script src="resources/js/popper.min.js"></script>
	
	<!-- Bootstrap javaScript 추가 -->
	<script src="resources/js/bootstrap.min.js"></script>

</body>
</html>