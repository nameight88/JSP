<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>9_review</title>
<h1>회원가입서 작성하기</h1>
<link type="text/css" href="./css/info.css/" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript" src="./js/info.js"></script>
</head>
<body>
<form id="frm" action="infoSave" method="post">
	<label for="userId">아이디</label>
	<input id='userId' name='userId' pattern='[A-Za-z],[0-9]{5,10}' maxlength='10' placeholder='5자~10자 영어와 숫자 조합'>
	<button>중복확인</button>
	<br/>
	<label for="pw">비밀번호</label>
	<input type="password"id="" name="" pattenrn="" minlength="4">
	<button type='submit' value='signup'>회원가입</button><button>취소</button>
</form>
</body>
</html>