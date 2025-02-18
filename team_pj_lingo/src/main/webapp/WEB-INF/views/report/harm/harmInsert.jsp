<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 신고 작성</title>
<script src="${path}/resources/js/report/harmReport.js" defer></script>
<script type="text/javascript">

</script>
</head>
<body>
	<form id="harmForm" action="harmReportInsert.hr" method="post">
		<table>
			<tr><h1>게시글 신고 뭐가 그렇게 불편하세요?</h1></tr>
			<tr>
				<th>게시글 번호</th>
				<td><input type="text" id="harm_report_num" name="harm_report_num" ></td>
				<td><input type="button" id="numBtn" value="입력"></td>
			</tr>	
			
			<tr>
				<th>게시글 제목</th>
				<td>
					<c:if test="${selectCnt == 1}">
						<c:if test="${map.FB_TITLE != null}">
							<input type=text name="harm_report_title" value="${map.FB_TITLE}" readonly>	
							<input type="hidden" name="board_writer" value="${map.FB_WRITER }">				
						</c:if>
					</c:if>	
					<c:if test="${selectCnt != 1 && selectCnt != null}">
						<script type="text/javascript">
							alert("일치하는 게시글이 없습니다")
						</script>
					</c:if>
				</td>
			</tr>	
			<tr>
				<th>신고 유형</th>
				<td>
					<select name="harm_report_category" required>
						<option value="0">신고유형을 골라주세요</option>
						<option value="pornoGraphy">음란물</option>
						<option value="hatePost">혐오게시글</option>
						<option value="disInfo">허위사실유포</option>
						<option value="illegalAd">불법광고</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<th>신고내용</th>
				<td>
					<textarea rows="4" cols="50" name="harm_report_content" required></textarea>
				</td>
			</tr>
		
			<tr>
				<td>
					<input type="submit" value="신고등록">
					<input type="reset" value="초기화">
					<input type="button" id="backBtn" value="뒤로가기">
				
				</td>
			
			</tr>	
		
		</table>
	</form>



</body>
</html>