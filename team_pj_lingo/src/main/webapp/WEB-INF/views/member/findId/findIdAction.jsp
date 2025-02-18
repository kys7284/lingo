<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹  -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>findIdAction</title>

<!-- 기존설정 그대로 -->
	    <meta charset="utf-8">
	    <title>Lingo</title>
	    <meta content="width=device-width, initial-scale=1.0" name="viewport">
	    <meta content="" name="keywords">
	    <meta content="" name="description">
	
	    <!-- Favicon -->
	    <link href="img/favicon.ico" rel="icon">
	
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
	
	    <!-- Google Web Fonts -->
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">
	
	    <!-- Icon Font Stylesheet -->
	    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
	<!-- 기존설정 그대로 끝-->

    <!-- Libraries Stylesheet -->
    <link href="${path}/resources/css/common/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${path}/resources/css/common/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${path}/resources/css/common/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${path}/resources/css/common/style.css" rel="stylesheet">
<script src="${path}/resources/js/member/join.js" defer></script> 

	<link rel="stylesheet" href="${path}/resources/css/member/login.css">
</head>
<body>
<div class="wrap">
   <!-- header 시작 -->
   <%@include file="/WEB-INF/views/common/header.jsp" %> 
   <!-- header 끝    -->
	
   <!-- 컨텐츠 시작 -->
   <div id="container">
      <div id="contents">
         <!-- 상단 중앙1 시작  -->
         <div id="section1">
            <h1 align="center"> 아이디 찾기 </h1>
         </div>
         <!-- 상단 중앙2 시작  -->
         <div id="section2">
            <div id="s2_inner">
               <div class="join">
                 
                  <form name="findIdform" action="findIdAction.do" method="post">	
				  <!-- 조회한 아이디가 없거나 정보가 일치하지 않을 때 -->
				    <c:choose>
						<c:when test="${empty mem_id}">
						<script type="text/javascript">
			                   	alert("조회결과가 없습니다.");  
			                   	window.location="${path}/findId.do";
			            </script>
						</c:when>
				        <c:otherwise>
					        <table>
	                        <tr>
	                           <th colspan="2" align="center"> 
									찾으시는 아이디는 <span style="color : 026892"><b>${mem_id}</b></span>입니다.
	                        	</th>
	                        </tr>
	                        
	                        <tr>
	                           <td colspan="2" style="border-bottom: none">
	                           <br>
	                           <div align="right">
	                              <input class="inputButton" type="button" value="로그인 하기" onclick="window.location='${path}/login.do'">
	                              <input class="inputButton" type="button" value="비밀번호 찾기" onclick="window.location='${path}/findPwd.do'">
	                           </div>
	                           </td>
	                        </tr>   
	                     </table>
				      </c:otherwise>
					</c:choose>
				</form>
               </div>
            </div>
         </div>
      </div>
   </div>
    <!-- 컨텐츠 끝 -->
  

  <!-- footer 시작 -->
  <%@include file="/WEB-INF/views/common/footer.jsp" %>
  <!-- footer 끝 -->
</div>
</body>
</html>