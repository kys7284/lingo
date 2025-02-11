<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/common/setting.jsp" %>        
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" 
integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" 
integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title> 관리자 </title>
<link rel="stylesheet" href="${path}/resources/css/admin/admin.css">
</head>
<body>
	<fieldset>
		<legend>공지사항 수정/삭제</legend>
		<table class="table table-bordered" id="member_table">
			<tr>
				<th width="20%">제목</th>
				<th width="80%">${dto.notice_title}</th>
			</tr>
		
		
		</table>
	</fieldset>
</body>
</html>