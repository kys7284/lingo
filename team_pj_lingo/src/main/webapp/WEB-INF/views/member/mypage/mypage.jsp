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
<script type="text/javascript">
	$(function () {
		$("#mainBtn").click(function() {
			location.href = "${path}/main.do";
		});
		
		$("#updateBtn").click(function() {
			location.href = "${path}/mypageUpdate.do"
		})
		
		
	});
</script>
<title>mypage</title>
</head>
<body>
	<!-- Header 시작  -->
		<%@ include file = "/WEB-INF/views/common/header.jsp" %>
	<!-- Header 끝  -->
	<br><br><br><br>
	
	<form action="${path}/memberUpdate.do" method="post">
		<table class="table table-info table-bordered" align="center"  style="width:800px">
			<tr align="center">
				<th style="width: 20%">회원번호</th>
				<td style="width: 30%">${dto.mem_no}</td>
				
				<th style="width: 20%">아이디</th>
				<td style="width: 30%">${dto.mem_id}</td>
			</tr>
			
		 	<tr align="center">
				<th style="width: 20%">이름</th>
				<td style="width: 30%">${dto.mem_name}</td>
				
				<th style="width: 20%">국적</th>
				<td style="width: 30%">${dto.mem_country}</td>
			</tr >
			
			<tr align="center">
				<th style="width: 20%">생년월일</th>
				<td style="width: 30%">${dto.mem_birthday}</td>
				
				<th style="width: 20%">주소</th>
				<td style="width: 30%">${dto.mem_address}</td>
			</tr>
			
			<tr align="center">
				<th style="width: 20%">전화번호</th>
				<td style="width: 30%">${dto.mem_hp}</td>
				
				<th style="width: 20%">활동등급</th>
				<td style="width: 30%">${dto.mem_rank}</td>
			</tr>
			
			<tr align="center">
				<th style="width: 20%">이메일</th>
				<td style="width: 30%">${dto.mem_email}</td>
				
				<th style="width: 20%">가입일</th>
				<td style="width: 30%">${dto.mem_regdate}</td>
			</tr>
			
			<tr align="center">
				<th colspan="4" >자기소개</th>
			</tr>
			
			<tr align="center">
				<td colspan="4">
				 	<textarea rows="10" cols="80" disabled style="pointer-events: none;" >${dto.mem_comment}</textarea>
				</td>
			</tr>
			
			<tr align="center">
				<td colspan="4">
					<input type="button" class="btn btn-outline-info" id="updateBtn" value="회원정보 수정"/>
					<input type="button" class="btn btn-outline-info" id="mainBtn" value="메인으로" />
				</td>
			</tr>
		 
		 
		</table>
	</form>
	
	<!-- Footer 시작  -->
		<%@ include file = "/WEB-INF/views/common/footer.jsp" %>
	<!-- Footer 끝  -->


</body>
</html>