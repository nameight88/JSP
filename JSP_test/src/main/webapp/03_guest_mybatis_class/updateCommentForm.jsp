<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="mybatis.guest.service.CommentService"%>
<%@ page import="mybatis.guest.model.*" %> 

<% 
 	request.setCharacterEncoding("utf-8");
%>
<% 
	int cNo = Integer.parseInt(request.getParameter("cNo"));
	Comment comment = CommentService.getInstance().selectCommentByPK(cNo);
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="UTF-8">
<title>입력</title>
</head>
<body>

메세지를 남겨주세요.
<form name="frm" action="updateCommentSave.jsp" >
<table>
	<tr><td>글번호</td><td><input type="text" name="commentNo" size="3" value="<%= comment.getCommentNo() %>"/></td></tr> <%// mysql은 글번호를 안줘도 된다. %>
	<tr><td>사용자</td><td><input type="text" name="userId" size="15" value="<%=  comment.getUserId()%>"/></td></tr>
	<tr><td>메세지</td><td><textarea name="commentContent" rows="10" columns="40"><%= comment.getCommentContent() %></textarea></td></tr>
	<tr><td><input type="submit" value="수정"/></td></tr>
</table>
</form>
</body>
</html>