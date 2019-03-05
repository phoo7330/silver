<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>TODO</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<style>
	
	body{
		display:flex;
	}
	
	h2{
		transform:rotate(-30deg);
		font-size:30px;
		float:left;
		padding-bottom:20%;
	}
	.regButton{
		color:white;
		float:right;
		height: 38px;
    	background-color: #d1dfff;
    	border: 0;
	}
	
	.leftDiv{
		width:15%;
	}
	
	.centerDiv{
	    padding-top: 5%;
		width:70%;
	}
	
	.rightDiv{
		width:15%;
	}

	.headerTable{
		width:100%;
	}
	
	.headerTh{
		width:33%;
		color:#324c77;
	}
	
	.centerTable{
		width:100%;
	    border-collapse: separate;
    	border-spacing: 5px;
	}
	.centerTh1{
		width:33.3%;
		font-size:24px;
		height:70px;
		padding:1%;
		padding-left:3%;
		text-align:left;
		color:white;
		background-color:#345461;
	}
	.centerTh2{
		width:33.3%;
		font-size:24px;
		height:70px;
		padding:1%;
		padding-left:3%;
		text-align:left;
		color:white;
		background-color:#345461;
	}
	.centerTh3{
		width:33.3%;
		font-size:24px;
		height:70px;
		padding:1%;
		padding-left:3%;
		text-align:left;
		color:white;
		background-color:#345461;
	}
	
	.content{
		width:100%;
 		display:inline-flex; 
	}
	
	.todo{
	font-size:12px;
	border-spacing: 3px;
	border-collapse: separate;
    width:33.2%;
	}
	.doing{
	font-size:12px;
	border-spacing: 3px;
	border-collapse: separate;
    width:33.2%;
	}
	.done{
	font-size:12px;
	border-spacing: 3px;
	border-collapse: separate;
    width:33.2%;
	}
	.contentTd{
	line-height:250%;
	padding: 18px;
    background-color:#CEE5EF;
	}
	.title{
		font-size:20px;
	}
</style>
<script>
	function goReg(){
		document.getElementById("goReg").submit();
	}
	
	function clickButton(id,type,button){
		
		$.ajax({
				url:	"updateTodo",
				data: {
							id:id,
							type:type
						},
				type: "post",
				success:function(returnData){
					if(returnData=="SUCCESS"){
					
						if(type=="TODO"){
							button.setAttribute("onclick","clickButton("+id+",'DOING',this)");
							var tr=document.getElementById(id);
							document.getElementById("doing").innerHTML+=
								"<tr id='"+id+"'>"+tr.innerHTML+"</tr>";
							tr.parentNode.removeChild(tr);
						}else if(type=="DOING"){
							button.setAttribute("onclick","clickButton("+id+",'DONE',this)");
							var tr=document.getElementById(id);
							document.getElementById("done").innerHTML+=
								"<tr id='"+id+"'>"+tr.innerHTML+"</tr>";
							tr.parentNode.removeChild(tr);
						}else if(type=="DONE"){
							
							var tr=document.getElementById(id);
							tr.parentNode.removeChild(tr);
						}
						
					}
				}
		}); 
		
		
		
		
		
		
	}
	

</script>
<body>
	<form id="goReg"action="goReg">
	</form>
	<div class="leftDiv"></div>
	<div class="centerDiv">
	<table class="headerTable">
		<tr>
			<th class="headerTh"><h2>나의 해야할 일들</h2></th><th class="headerTh"></th><th class="headerTh"><button class="regButton" onclick="goReg()">새로운  TODO 등록</button></th>
		</tr>
	</table>
	<table class="centerTable">
		<tr>
			<th class="centerTh1">TODO</th><th class="centerTh2">DOING</th><th class="centerTh3">DONE</th>
		</tr>
	</table>
	
	<div class="content">
		<table class="todo"  id="todo">
		<c:forEach var="todo" items="${todoList}">
			<c:if test="${todo.type=='TODO'}">
			
			<tr id="${todo.id}">
			<td class="contentTd">
				<b class="title">${todo.title}</b><br>
				등록날짜:${todo.regdate}, ${todo.name}, 우선순위${todo.seq}<button onclick="clickButton(${todo.id},'${todo.type}',this)">></button>
			</td>
			</tr>
			</c:if>
		</c:forEach>
		</table>
		<table class="todo"  id="doing">
		<c:forEach var="todo" items="${todoList}">
			<c:if test="${todo.type=='DOING'}">
			
			<tr>
			<td class="contentTd">
				<b class="title">${todo.title}</b><br>
				등록날짜:${todo.regdate}, ${todo.name}, 우선순위${todo.seq}<button onclick="clickButton(${todo.id},'${todo.type}',this)">></button>
			</td>
			</tr>
			</c:if>
		</c:forEach>
		</table>
		<table class="todo" id="done">
		<c:forEach var="todo" items="${todoList}">
			<c:if test="${todo.type=='DONE'}">
			
			<tr>
			<td class="contentTd">
				<b class="title">${todo.title}</b><br>
				등록날짜:${todo.regdate}, ${todo.name}, 우선순위${todo.seq}<button onclick="clickButton(${todo.id},'${todo.type}',this)">></button>
			</td>
			</tr>
			</c:if>
		</c:forEach>
		</table>
	
	</div>
	</div>
	<div class="rightDiv"></div>
	

</body>
</html>
