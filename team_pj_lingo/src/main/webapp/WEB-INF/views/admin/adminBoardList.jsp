<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/common/setting.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>관리자 게시판 관리</title>
<script type="text/javascript">
	$(function(){
		$("#btnInsert").click(function(){
			<%
				if(session.getAttribute("sessionId") == null)	{
			%>
				alert("로그인이 필요합니다 !");
				location.href="${path}/login.do"
			
			<%
				}	else {
			%>
			
				location.href="${path}/free_board_insert.fb"	
			
			<%
				}
			%>
			
		});
	});
</script>
<link rel="stylesheet" href="${path}/resources/css/common/board.css">
</head>
<body>
 <!-- 컨텐츠 시작 -->
		<div id="container">
			<div id="contents">
				<!-- 상단 중앙1 시작 -->
				<div>
					<h1 align="center">게시판 목록</h1>
				</div>				
				<!-- 상단 중앙1 종료 -->

				<!-- 상단 중앙2 시작 -->
				<div id="section2">
					
					<!-- 우측 메뉴 시작 -->
						<div id="right">
							<div class="table_div">
								
								<form name="free_boardList">
									<table>

										<tr>
											<th style="width:10%">글번호</th>
											<th style="width:10%">작성자</th>
											<th style="width:15%">글제목 [댓글수]</th>
											<th style="width:10%">이미지</th>
											<th style="width:10%">작성일</th>
											<th style="width:5%">조회수</th>
										</tr>
										
										<!-- 게시글이 있으면  -->
										
											<c:forEach var="dto" items= "${freeBoardList}">											
												<tr>
													<td>${dto.fb_num}</td>
													<td>${dto.fb_writer}</td>
													<td>
														<a href="${path}/freeDetailAction.fb?fb_num=${dto.fb_num}">${dto.fb_title} <span style="color: red">[ ${dto.fb_comment_count} ]</span></a>
													</td>
													<td>
														<img src="${dto.fb_img}" width="100px"> 
													</td>
													<td>${dto.fb_regDate}</td>
													<td>${dto.fb_readCnt}</td>
												</tr>
											</c:forEach>
											<tr>
												<td colspan="6" align="center">
													<!-- 페이징처리 -->
													<!-- 이전 버튼 활성화 -->
													<c:if test="${paging.startPage > 10}">
														<a href="${path}/free_board_list.fb?pageNum=${paging.prev}">[이전]</a>
													</c:if>
													
													<!-- 페이지 번호 처리 -->
													<c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
														<a href="${path}/free_board_list.fb?pageNum=${num}">${num}</a>
													</c:forEach>
													<!-- 다음 버튼 활성화 -->
													<c:if test="${paging.endPage < paging.pageCount}">
														<a href="${path}/free_board_list.fb?pageNum=${paging.next}">[다음]</a>
													</c:if>
												</td>
											</tr>
											<tr>
												<td colspan="6" align="center">
													<input type="button" class="inputButton" value="글쓰기" id="btnInsert">
												</td>
											</tr>
									</table>
								</form>
							</div>
						</div>
					<!-- 우측 메뉴 종료 -->
				</div>
				<!-- 상단 중앙2 종료 -->
			</div>
		</div>
      <!-- 컨텐츠 끝 -->
</body>
</html>