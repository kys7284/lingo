<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<c:if test="${insertCnt == 1}">
				<script type="text/javascript">
					window.location="${path}/main.do";
					alert("게시글신고가 접수 되었습니다.");
				</script>
			</c:if>
		
			<c:if test="${insertCnt != 1}">
				<script type="text/javascript">
					window.location="${path}/main.do";
					alert("접수처리가 되지않았습니다.");
				</script>
			</c:if>
</body>
</html>