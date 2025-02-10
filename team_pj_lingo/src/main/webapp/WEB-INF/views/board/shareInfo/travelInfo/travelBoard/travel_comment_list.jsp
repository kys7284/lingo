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

<title>free_board</title>
</head>
<body>
	<div id="right">
			<div class="table_div">
				<form name="freeBoardList">
					<table border="1" width="800px">
						<tr>
							<th style="width:10%; border-right: 1px solid black;">작성자</th>
							<th style="width:15%; border-right: 1px solid black;">글내용</th>
							<th style="width:10%; border-right: 1px solid black;">작성일</th>
						</tr>
						
						<!-- 댓글이 있으면  -->
						
							<c:forEach var="dto" items= "${list}">											
								<tr>
									<td style="border: 1px solid black;">${dto.tb_writer}</td>
									<td style="border: 1px solid black;">${dto.tb_content}</td>
									<td style="border: 1px solid black;">${dto.tb_regDate}</td>
								</tr>
							</c:forEach>
					</table>
				</form>
			</div>
			</div>
</body>
</html>