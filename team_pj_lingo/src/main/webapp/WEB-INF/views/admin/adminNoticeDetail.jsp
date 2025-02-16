<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/common/setting.jsp" %>        
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" 
integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<title> 관리자 </title>
<link rel="stylesheet" href="${path}/resources/css/admin/admin.css">
<script type="text/javascript">
$(function() {
	$(document).ready(function() { 
		  $("#deleteBtn").click(function() { 
		    if (confirm("공지사항을 삭제하시겠습니까?")) {
		      window.location.href = "${path}/adminNoticeDelete.ad?notice_num=${dto.notice_num}";
		    } 
		  });
		});
})

</script>
</head>
<body>
	<fieldset>
		<legend>공지사항 수정/삭제</legend>
		<form name="detailForm" id="detailForm" action="adminNoticeUpdate.ad" method="post">
			<table>

				<tr>
					<th style="width: 200px">글번호</th>
					<td style="width: 200px" style="text-align:center"> ${dto.notice_num}</td>
					
					<th style="width: 200px">조회수</th>
					<td style="width: 200px" style="text-align:center"> ${dto.notice_readCnt}</td>
				</tr>
				
				<tr>
					<th style="width: 200px">작성자</th>
					<td style="width: 200px" style="text-align:center"> ${dto.notice_writer}</td>
				</tr>
				
				<tr>
					<th style="width: 200px">글제목</th>
					<td colspan="3" style="text-align:center">
					 <input type="text" name="notice_title" value="${dto.notice_title} ">
					 </td>
				</tr>
				
				<tr>
					<th style="width: 200px">내용</th>
					<td colspan="3"  style="text-align:center"> 
					<textarea rows="3" cols="40" name="notice_content">${dto.notice_content}</textarea>
					 </td>
				</tr>
				
				<tr>
					<th style="width: 200px">작성일</th>
					<td colspan="3"  style="text-align:center"> ${dto.notice_regDate}</td>
				</tr>
				<tr>
					<td colspan="4" align="center">
						<!-- 게시글번호 hidden 추가 : input이 없으므로(게시글번호는 입력받지않는다 input 없음) -->
						<input type="hidden" name="notice_num" id="notice_num" value="${dto.notice_num}">  
						<input type="submit" class="btn btn-outline-primary" value="수정" >
						<input type="button" class="btn btn-outline-primary" value="삭제" id="deleteBtn">
						<input type="button" class="btn btn-outline-primary" value="관리자페이지" onclick="location.href='${path}/adminAction.ad'">
					</td>
				</tr>
			</table>
		</form>
	</fieldset>
</body>
</html>