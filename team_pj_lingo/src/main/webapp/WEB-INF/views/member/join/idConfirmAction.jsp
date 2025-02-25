<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복확인</title>
<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/member/idConfirm.css">
<!-- js -->
<script src="${path}/resources/js/member/join.js" defer></script>
</head>
<body>
<div class="wrap">
		
		<div id="container">
			<div id="contents">
				<div id="section1">
					<h1 align="center"> 중복확인창 </h1>
				</div>
		
				<div id="section2">
					<div id="s2_inner">
							
							<form name="confirmform" action="idConfirmAction.do" method="post">
								<c:if test="${selectCnt == 1}">	
									<table align="center" width="500px">
									<tr>
										<th colspan="2" align="center"> 
											<span> ${mem_id}는 사용할수 없습니다. </span>
										</th>
										
									</tr>
									
									<tr>
										<th align="center"> * 아이디 </th>
										<td> 
											<input type="text" class="input" name="mem_id" size="20" placeholder="공백없이 20자이내로 작성" required autofocus >
										</td>
									</tr>
									
									<tr>
										<td style="border-bottom:none" colspan="2">
											<br>
											<div align="center">
											    <input class="inputButton" type="submit" value="확인">
												<input class="inputButton" type="reset" value="초기화">
											</div>
										</td>
									</tr>
								</table>	
								</c:if>					
								
								<table align="center" width="500px">
									<c:if test="${selectCnt != 1}">	
									
									<tr>
										<th colspan="2" align="center"> 
											<span> ${mem_id}는 사용할수 있습니다. </span>
										</th>
									</tr>
									
									<tr>
										<td colspan="2" style="border-bottom:none">
											<br>
											<div align="right">
												<input class="inputButton" type="button" value="확인" onclick="setUserId('${mem_id}')" autofocus>	
											</div>
										</td>
									</tr>
									</c:if>
								</table>
								
							</form>
						</div>
				
				</div>
			</div>
		</div>
</div>
</body>
</html>