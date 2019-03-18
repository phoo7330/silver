<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<title>Login</title>
	
	<!-- 인코딩 -->
	<meta charset="UTF-8">
	<meta  name="viewport" content="width-device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS 추가 -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	
	<!-- Custom CSS 추가 -->
	<link rel="stylesheet" href="resources/css/custom.css">
    <link rel="stylesheet" href="resources/css/signin.css">
	
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
 <body class="text-center">
	<form class="form-signin">

		<img class="mb-4" src="resources/image/login.svg" alt="" width="72" height="72"> 
		<h1 class="h3 mb-3 font-weight-normal">로그인</h1>
		<label for="inputEmail" class="sr-only">이메일 주소</label>
		
		<input type="email" id="inputEmail" name="id" value="${member.userid}" class="form-control" placeholder="이메일을 입력하세요." required autofocus>
		<label for="inputPassword" class="sr-only">비밀번호</label>
		<input type="password" id="inputPassword" name="pw" value="${member.userpwd}" class="form-control" placeholder="비밀번호를 입력하세요." required>
		<div class="checkbox mb-3">
			<label>
				<input type="checkbox" value="remember-me"> 아이디를 저장하시겠습니까
			</label>
		</div>
		<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
		 <p class="mt-5 mb-3 text-muted">&copy; 실버서퍼 2019</p>
	</form>

	<!-- jQuery javaScript 추가 -->
	<script src="resources/js/jquery.min.js"></script>
	
	<!-- Popper javaScript 추가 -->
	<script src="resources/js/popper.min.js"></script>
	
	<!-- Bootstrap javaScript 추가 -->
	<script src="resources/js/bootstrap.min.js"></script>

</body>
</html>