<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="mybatis.guest.service.CommentService"%>
<%@ page import="mybatis.guest.model.Comment" %> 

<% 
 	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="comment" class="mybatis.guest.model.Comment">
 	<jsp:setProperty name="comment" property="*"/>
 </jsp:useBean>   
<%
int cNo = Integer.parseInt(request.getParameter("cNo"));

CommentService service = CommentService.getInstance();
service.updateComment(cNo);
//Comment comment = CommentService.getInstance().selectCommentByPK(commentNo);
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
	<tr><td>글번호</td><td><input type="text" name="commentNo" size="3"/></td><%= comment.getCommentNo() %></tr> <%// mysql은 글번호를 안줘도 된다. %>
	<tr><td>사용자</td><td><input type="text" name="userId" size="15"/></td><%=  comment.getCommentNo()%></tr>
	<tr><td>메세지</td><td><textarea name="commentContent" rows="10" columns="40"><%= comment.getCommentContent() %></textarea></td></tr>
	<tr><td><input type="submit" value="수정"/></td></tr>
</table>
</form>
</body>
</html>