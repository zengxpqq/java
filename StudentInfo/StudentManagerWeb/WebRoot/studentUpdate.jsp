<%@ page language="java" import="java.util.*,com.dw.model.Student" pageEncoding="utf-8"%>
<%@ page import="com.dw.dao.StudentDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>更新学生信息</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/stupdate.js"></script>
	<style type="text/css">
	  span{color:red;}
	  .form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}
.form-signin input[type="text"],.form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}
.form-signin {
	max-width: 550px;
	padding: 19px 29px 29px;
	margin:0 auto;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}
	</style>

	</head>
	<body>
		
		<form class="form-signin" action="stupdate" method="post" onSubmit="return checkstAge() && checkstSex() && checkstTel() && checkstDept() && checkstAddress() && checkstName()">
			学号：
			<input type="text" name="stId" value="${student.stId }" readonly="readonly"  class="input">
			<br>
			姓名：
			<input class="input" type="text" name="stName" value="${student.stName }" 
			onblur="checkstName()" onFocus="clearstName()" >
			<span id="stName1"></span>
			<br>
			${student.stSex}
			性别：
			<input type="radio" name="stSex" value="男" onblur="checkstSex()"  ${student.stSex eq '男'?'checked':'' }>男
			<input type="radio" name="stSex" value="女" onblur="checkstSex()" ${student.stSex eq '女'?'checked':'' }>女
			<span id="stSex1"></span>
			<br>
			年龄：
			<input class="input" type="text" name="stAge" value="${student.stAge }" onblur="checkstAge()" onFocus="clearstAge()" >
			<span id="stAge1"></span>
			<br>
			电话：
			<input class="input" type="text" name="stTel" value="${student.stTel }" onblur="checkstTel()" onFocus="clearstTel()" >
			<span id="stTel1"></span>
			<br>
			学院：
			
			<select name="stDept" id="stDept">
				<option value="${student.stDept }">${student.stDept }</option>
				<option value="软件学院">软件学院</option>
				<option value="建筑学院">建筑学院</option>
				<option value="理学院">理学院</option>
				<option value="外国语学院">外国语学院</option>
			</select>
			<span id="stDept1"></span>
			<br>
			地址：
			<input class="input" type="text" name="stAddress" value="${student.stAddress }" onblur="checkstAddress()" onFocus="clearstAddress()" >
			<span id="stAddress1"></span>
			<br>
			<input type="submit" value="提交" class="btn btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" class="btn btn-success" onclick="window.location.href='showAllStudents'"  value="返回"> 
		</form>
	</body>
</html>
