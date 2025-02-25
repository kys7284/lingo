<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/common/setting.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹  -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${path}/resources/css/board/boardDetail.css">
<title>free_board</title>
</head>
<body>
	<div id="right">
			
				<form name="freeBoardList">
					<table class="table_div" border="1">
						<tr>
							<th style="width:10%">작성자</th>
							<th style="width:15%">글내용</th>
							<th style="width:10%">작성일</th>
						</tr>
						
						<!-- 댓글이 있으면  -->
						
							<c:forEach var="dto" items= "${list}">											
								<tr>
									<td>${dto.fb_writer}</td>
									<td>${dto.fb_content}</td>
									<td>${dto.fb_regDate}</td>
								</tr>
							</c:forEach>
					</table>
				</form>
			
			</div>
</body>
</html>