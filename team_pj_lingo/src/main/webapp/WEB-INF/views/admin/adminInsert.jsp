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
<title> 회원목록 </title>
<link rel="stylesheet" href="${path}/resources/css/admin/adminInsert.css">
<script src="${path}/resources/js/member/join.js" defer></script>
<script src="${path}/resources/js/member/address.js" defer></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
  const textarea = document.getElementById('myTextarea');
  const hiddenInput = document.getElementById('hiddenContent');

  textarea.addEventListener('input', function() {
    hiddenInput.value = textarea.value;
  });
</script>

</head>
<body>
	<fieldset>
		<legend>관리자 등록</legend>
			<div >
				<form name="inputform" action="insertAdminAction.ad" method="post"
								onsubmit="return signInCheck()">
					
					<!-- 2-1. 중복확인 -->
					<input type="hidden" name="hiddenUserid" value="0">
				<table class="table table-bordered" id="member_table">
				  <tr>
					<th> * 아이디 </th>
					<td> 
						<input type="text" class="input" name="mem_id" size="20" placeholder="공백없이 20자이내로 작성" required autofocus >
						<input type="button" name="dubChk" value="중복확인" style="margin-left:10px" onclick="confirmId()">
					</td>
				</tr>
				
				<tr>
					<th> * 비밀번호 </th>
					<td> 
						<input type="password" class="input" id="mem_pwd" name="mem_pwd" size="20" placeholder="영숫자 8~20자 이내" required >
					</td>
				</tr>
				
				<tr>
					<th> * 비밀번호(확인) </th>
					<td> 
						<input type="password" class="input" id="re_password" name="re_password" size="20" placeholder="비밀번호 확인" required oninput="pwdChk()" >
						<span id="error"></span>
					</td>
				</tr>
				
				<tr>
					<th> * 이름 </th>
					<td> 
						<input type="text" class="input" name="mem_name" size="50" placeholder="이름입력" required >
					</td>
				</tr>
				
				<tr>
					<th> * 국적</th>
						<td>
							<img src="resources/images/korea.jpg" width="20" height="15" > <input type="radio" name="mem_country" value="KOR" style="margin:0px 13px 0px 0px;" checked>
							<img src="resources/images/us.jpg" width="20" height="15" > <input type="radio" name="mem_country" value="USA" style="margin:0px 13px 0px 0px;">
							<img src="resources/images/vietnam.jpg" width="20" height="15"> <input type="radio" name="mem_country" value="VIET" style="margin:0px 13px 0px 0px;">
							<img src="resources/images/china.jpg" width="20" height="15"> <input type="radio" name="mem_country" value="CHI" style="margin:0px 13px 0px 0px;">
							<img src="resources/images/thai.jpg" width="20" height="15"> <input type="radio" name="mem_country" value="THAI" style="margin:0px 13px 0px 0px;">
							<img src="resources/images/japan.jpg" width="20" height="15"> <input type="radio" name="mem_country" value="JAP" style="margin:0px 13px 0px 0px;">
						</td>
				</tr>
				
				<tr>
					<th> * 생년월일 </th>
					<td> 
						<input type="date" class="input" name="mem_birthday" size="8" placeholder="-없이 생년월일8자리" required >
					</td>
				</tr>
				
				<tr>
					<th> * 주소 </th>
					<td> 
						<input type="text" id="sample6_postcode" name="sample6_postcode" placeholder="우편번호" readonly>
						<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" id="sample6_address" name="sample6_address" placeholder="주소" readonly><br>
						<input type="text" id="sample6_extraAddress" name="sample6_extraAddress"placeholder="참고항목" readonly>
						<input type="text" id="sample6_detailAddress" name="sample6_detailAddress" placeholder="상세주소" required>
					</td>
				</tr>
				
				<tr>
					<th> * 전화번호 </th>
					<td> 
						<input type="text" class="input" name="mem_hp1" size="3" style="width:50px">
						-
						<input type="text" class="input" name="mem_hp2" size="4" style="width:70px">
						- 
						<input type="text" class="input" name="mem_hp3" size="4" style="width:70px">
					</td>
				</tr>
				
				<tr>
					<th> * 이메일 </th>
					<td> 
						<input type="text" class="input" name="mem_email1" size="20" style="width:100px" required>
						@
						<input type="text" class="input" name="mem_email2" size="10" style="width:100px" required>
						<select class="input" name="mem_email3" style="width:100px" required onchange="selectEmailChk()">
							<option value="0">직접입력</option>
							<option value="naver.com">네이버</option>
							<option value="google.com">구글</option>
							<option value="daum.net">다음</option>
							<option value="nate.com">네이트</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<th>가입인사</th>
					<td>
						<textarea rows="5" cols="60" id="mem_comment" name="mem_comment">관리자 계정입니다.</textarea>
						<input type="hidden" id="hiddenContent" name="mem_comment">
					</td>	
				</tr>
  			 	<tr>
					<td colspan="2" style="border-bottom:none">
						<br>
						<div align="right">
							<input class="inputButton" type="submit" value="관리자등록">
							<input class="inputButton" type="reset" value="초기화">
							<input class="inputButton" type="button" value="등록취소" onclick="window.location='${path}/adminAction.do'">
						</div>
					</td>	
				</tr>
				 
				</table>
				</form>
			</div>
	</fieldset>

</body>
</html>