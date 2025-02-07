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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
  $("#memberBtn").click(function() {
    $.ajax({
      url: "${path}/adminMemberList.ad", // 불러올 JSP 파일 경로
      type: "GET", // 요청 방식 (GET 또는 POST)
      dataType: "html", // 응답 데이터 형식 (html, xml, json 등)
      success: function(data) {
        $("#adminView").html(data); // 불러온 내용을 원하는 영역에 표시
      },
      error: function(xhr, status, error) {
        console.error("AJAX 요청 실패: " + status + " - " + error);
      }
    });
  });
});
</script>
</head>
<body>
	<%@ include file = "../common/header.jsp" %>
	<br><br><br><br><br>
	
	
	<div class="btn-group btn-group-lg" role="group" aria-label="Large button group" id="adminBtn">
	  <button type="button" id="memberBtn" class="btn btn-outline-primary">회원목록</button>
	  <button type="button" id="boardBtn" class="btn btn-outline-primary">게시판목록</button>
	  <button type="button" id="noticeBtn" class="btn btn-outline-primary">공지사항</button>
	  <button type="button" id="insertBtn" class="btn btn-outline-primary">관리자등록</button>
	</div>
	
	<br><br><br><hr><br>
	
	<div id="adminView">
	
	
	
	
	</div>
	
	<br><br><br><br><br>
	<%@ include file = "../common/footer.jsp" %>

</body>
</html>