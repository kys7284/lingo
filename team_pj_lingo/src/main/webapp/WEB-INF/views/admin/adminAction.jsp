<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" 
integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" 
integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 관리자 페이지 </title>
<link rel="stylesheet" href="${path}/resources/css/admin/adminList.css">
<link rel="stylesheet" href="${path}/resources/css/admin/admin.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${path}/resources/js/admin/adminAction.js" defer></script>
</head>
<body>
	<%@ include file = "../common/header.jsp" %>
	<br><br><br><br><br>
	
	
	<div class="btn-group btn-group-lg" role="group" aria-label="Large button group" id="admin">
	  <button type="button" id="memberBtn" class="btn btn-outline-primary">회원목록</button>
	  <button type="button" id="adminBtn" class="btn btn-outline-primary">관리자목록</button>
	  <button type="button" id="insertBtn" class="btn btn-outline-primary">관리자등록</button>
	  <button type="button" id="boardBtn" class="btn btn-outline-primary">게시판목록</button>
	  <button type="button" id="noticeBtn" class="btn btn-outline-primary">공지사항목록</button>
	  <button type="button" id="noticeInsertBtn" class="btn btn-outline-primary">공지사항작성</button>
	</div>
	
	<br><br><br><hr><br>
	
	<div id="adminView">
	
	
	
	
	</div>
	
	<br><br><br><br><br>
	<%@ include file = "../common/footer.jsp" %>

</body>
</html>