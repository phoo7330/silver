<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TODO REGISTRATION</title>
</head>
<body style="text-align:center;display:inline-flex; background-color:#b7b7b7;">
	<div style="width:15%;"></div>
	<div style="text-align:left;background-color:white;">
	<form action="insertTodo" method="post">
		할일이 무엇인가요?<br>
		<input type="text" name="title"><br><br>
		누가 할일인가요?<br>
		<input type="text" name="name"><br><br>
		우선순위<br>
		<input type="radio" name="seq" value="1"> 1순위 &nbsp;
		<input type="radio" name="seq" value="2"> 2순위 &nbsp;
		<input type="radio" name="seq" value="3"> 3순위 &nbsp;
		<input type="submit" value="할일등록">
	</form>
	</div>
	<div></div>
</body>
</html>