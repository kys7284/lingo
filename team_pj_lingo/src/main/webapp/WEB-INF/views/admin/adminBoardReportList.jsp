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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시글 신고 목록</title>

<fieldset>
		<legend>게시글 신고 목록</legend>
			<div >
				<table class="table table-bordered" id="member_table">
				  <thead>
				    <tr>
				      <th scope="col">신고번호</th>
				      <th scope="col">신고 게시글 제목</th>
				      <th scope="col">신고 게시글 작성자</th>
				      <th scope="col">신고 유형</th>
				      <th scope="col">신고자</th>
				      <th scope="col">신고내용</th>
				      <th scope="col">신고날짜</th>
				      <th scope="col">게시글 삭제</th>
				    </tr>
				  </thead>
				  <tbody class="table-hover">
				  <form id="memberForm" action="#" method="post">
				   <c:forEach var="list" items="${list}">
				    <tr>
				      <td>${list.harm_report_num}</td>
				      <td >${list.harm_report_title }</td>
				      <td>${list.board_writer }</td>
				      <td>${list.harm_report_category }</td>
				      <td>${list.harm_report_writer }</td>
				      <td>${list.harm_report_content }</td>
				      <td>${list.harm_report_regDate }</td>
				      <td>
				      	<input type="button" id="boardeDeleteBtn"  class="btn btn-outline-primary"
				      	 value="게시글 삭제" onclick="location.href='${path}/adminBoardDelete.ad?harm_report_num='+${list.harm_report_num }">
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
							<c:if test="${page.startPage > 10}">
								<a href="${path}/adminBoardReportList.ad?pageNum=${page.prev}">[이전]</a>
							</c:if>
						
							<!-- 페이지 번호 처리  -->
							<c:forEach var="num" begin="${page.startPage}" end="${page.endPage}">
								<a href="${path}/adminBoardReportList.ad?pageNum=${num}">${num}</a>
							</c:forEach>
							<!-- 다음 버튼 활성화  -->
							<c:if test="${page.endPage < page.pageCount}">
								<a href="${path}/adminBoardReportList.ad?pageNum=${page.next}">[다음]</a>
							</c:if>
				    	</td>
				    </tr>
				  </tfoot>
				</table>
			</div>
	</fieldset>

</head>
<body>

</body>
</html>