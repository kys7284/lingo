<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/common/setting.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${path}/resources/css/common/madang.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" 
integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<fieldset>
		<legend>관리자목록</legend>
			<div >
				<table class="table table-bordered" id="member_table">
				  <thead>
				    <tr>
				      <th scope="col">공지번호</th>
				      <th scope="col">공지제목</th>
				      <th scope="col">작성자</th>
				      <th scope="col">조회수</th>
				      <th scope="col">작성일</th>
				      <th scope="col">수정/삭제</th>
				    </tr>
				  </thead>
				  <tbody class="table-hover">
				  <form id="memberForm" action="#" method="post">
				   <c:forEach var="list" items="${noticeList}">
				   
				    <tr>
				      <th scope="row">${list.notice_num}</th>
				      <td>${list.notice_title }</td>
				      <td>${list.notice_writer }</td>
				      <td>${list.notice_readCnt }</td>
				      <td>${list.notice_regDate }</td>
				      <td><input type="button" id="detailBtn"  class="btn btn-outline-primary" value="수정/삭제"
				      	 onclick="location.href='${path}/adminNoticeDetail.ad?notice_num='+${list.notice_num }">
				      </td>
				    </tr>
				    <!--   -->
				    </c:forEach>
				    </form>
				    
				  </tbody>
				  <tfoot>
				  	<tr>
				    	<td colspan="10" align="center">
												
							<!-- 이전 버튼 활성화  -->
							<c:if test="${paging.startPage > 10}">
								<a href="${path}/adminMemberList.ad?pageNum=${paging.prev}">[이전]</a>
							</c:if>
						
							<!-- 페이지 번호 처리  -->
							<c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
								<a href="${path}/adminMemberList.ad?pageNum=${num}">${num}</a>
							</c:forEach>
							<!-- 다음 버튼 활성화  -->
							<c:if test="${paging.endPage < paging.pageCount}">
								<a href="${path}/adminMemberList.ad?pageNum=${paging.next}">[다음]</a>
							</c:if>
				    	</td>
				    </tr>
				  </tfoot>
				</table>
			</div>
	</fieldset>
</body>
</html>