<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous" defer></script> 

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 관리자 페이지 </title>
<link rel="stylesheet" href="${path}/resources/css/admin/adminList.css">
<link rel="stylesheet" href="${path}/resources/css/admin/admin.css">


</head>
<body>
	<%@ include file = "../common/header.jsp" %>
	<br><br><br><br><br>	
	
	<div id="admin">
		<div class="btn-group btn-group-lg" role="group" aria-label="Large button group">
		  <button type="button" id="memberBtn" class="btn btn-outline-primary">회원목록</button>
		  <button type="button" id="adminBtn" class="btn btn-outline-primary">관리자목록</button>
		  <button type="button" id="insertBtn" class="btn btn-outline-primary">관리자등록</button>
		  <button type="button" id="noticeInsertBtn" class="btn btn-outline-primary">공지등록</button>
		  <button type="button" id="noticeBtn" class="btn btn-outline-primary">공지 수정/삭제</button>
		  <button type="button" id="reportBtn" class="btn btn-outline-primary">게시글신고 목록</button>
		 
		  </div>
	  </div>
	<br><br><br><hr><br>
	
	<div id="adminView">
	
	
	
	
	</div>
	
	<br><br><br><br><br>
	<%@ include file = "../common/footer.jsp" %>
	<script src="${path}/resources/js/admin/adminAction.js" defer></script>


</body>
</html>