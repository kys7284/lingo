<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/common/setting.jsp" %>        
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" 
integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" 
integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 회원목록 </title>
<link rel="stylesheet" href="${path}/resources/css/admin/admin.css">

</head>
<body>
	<fieldset>
		<legend>회원목록</legend>
			<div >
				<table class="table table-bordered" id="member_table">
				  <thead>
				    <tr>
				      <th scope="col">번호</th>
				      <th scope="col">아이디</th>
				      <th scope="col">이름</th>
				      <th scope="col">국적</th>
				      <th scope="col">생년월일</th>
				      <th scope="col">주소</th>
				      <th scope="col">등급</th>
				      <th scope="col">이메일</th>
				      <th scope="col">가입일</th>
				      <th scope="col">관리</th>
				    </tr>
				  </thead>
				  <tbody class="table-hover">
				  <form id="memberForm" action="#" method="post">
				   <c:forEach var="list" items="${list}">
				   
				    <tr>
				    <input type="hidden" name="mem_no" value="${list.mem_no }">
				      <th scope="row">${list.rn}</th>
				      <td>${list.mem_id }</td>
				      <td>${list.mem_name }</td>
				      <td>${list.mem_country }</td>
				      <td>${list.mem_birthday }</td>
				      <td>${list.mem_address }</td>
				      <td>
				      	<c:choose>
						<c:when test="${list.mem_rank >= 100}">VIP</c:when>
						<c:when test="${list.mem_rank >= 50}">Gold</c:when>
						<c:when test="${list.mem_rank >= 30}">Silver</c:when>
						<c:when test="${list.mem_rank >= 10}">Bronze</c:when>
						<c:otherwise>Unrank</c:otherwise>
					</c:choose>
				      </td>
				      <td>${list.mem_email }</td>
				      <td>${list.mem_regdate }</td>
				      <td><input type="button" id="deleteBtn"  class="btn btn-outline-primary" value="탈퇴" onclick="location.href='${path}/adminMemberDelete.ad?mem_no='+${list.mem_no }"></td>
				    </tr>
				    
				    </c:forEach>
				    </form>
				    
				  </tbody>
				  <tfoot>
				  	<tr>
				    	<td colspan="10" align="center">
												
							<!-- 이전 버튼 활성화  -->
							<c:if test="${page.startPage > 10}">
								<a href="${path}/adminMemberList.ad?pageNum=${page.prev}">[이전]</a>
							</c:if>
						
							<!-- 페이지 번호 처리  -->
							<c:forEach var="num" begin="${page.startPage}" end="${page.endPage}">
								<a href="${path}/adminMemberList.ad?pageNum=${num}">${num}</a>
							</c:forEach>
							<!-- 다음 버튼 활성화  -->
							<c:if test="${page.endPage < page.pageCount}">
								<a href="${path}/adminMemberList.ad?pageNum=${page.next}">[다음]</a>
							</c:if>
				    	</td>
				    </tr>
				  </tfoot>
				</table>
			</div>
	</fieldset>

</body>
</html>