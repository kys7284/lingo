<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script> 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${path}/adminNoticeInsertAction.ad" method="post">
		<table class="table table-info table-bordered" align="center" >
			<tr align="center">
				<td style="width: 100%">
					<input type="text" name="notice_title" placeholder="공지 제목">
				</td>
		 	</tr>
			
			<tr align="center">
				<td>
					<textarea rows="10" cols="80" name="notice_content" placeholder="공지 내용"></textarea>
					<input type="hidden" id="hidden_content" name="notice_content">
				</td>		
			</tr>
			
			<tr align="center">
				
			</tr>
			
			<tr align="center">
				<td colspan="4">
					<input type="submit" class="btn btn-outline-info" id="insertBtn" value="작성완료"/>
					<input type="reset" class="btn btn-outline-info" id="deleteBtn" value="초기화"/>
					<input type="button" class="btn btn-outline-info" id="mainBtn" value="메인으로" />
				</td>
			</tr>
		 
		 
		</table>
	</form>
</body>
</html>