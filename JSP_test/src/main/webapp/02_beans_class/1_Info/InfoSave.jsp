<%@ page contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ page import="info.beans.InfoBean" %>


<jsp:useBean id="bean" class="info.beans.InfoBean">
	<jsp:setProperty property='*' name='bean' />
</jsp:useBean>
<%
/*
 //1.이전 화면의 폼에서 데이터 받아오기
  String name= request.getParameter("name");
	String id= request.getParameter("id");
//2.InfoBean 객체 생성후 
 //1번 값을 맴버변수 지정
 	InfoBean bean = new InfoBean();
bean.setName()
 */
%>



<!DOCTYPE html>
<html>
<body>
	<h2>  당신의 신상명세서 확인 </h2>
	이   름  : <jsp:getProperty property="name" name="bean"/><br/>
	주민번호 :  <jsp:getProperty property="id" name="bean"/><br/>
	성  별   : <jsp:getProperty property="gender" name="bean"/><br/>  
	맞습니까????
</body>
</html>