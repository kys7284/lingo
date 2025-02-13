<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/common/setting.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹  -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>login</title>

<!-- css  -->
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
               	<form name="loginform" action="loginAction.do" method="post">
                    <table>
	                  <!-- 조회한 아이디가 없거나 정보가 일치하지 않을 때 -->
					    <c:choose>
							<c:when test="${empty findId} && ${selectCnt == 0}">
							<script type="text/javascript">
			                    	alert("조회결과가 없습니다.");                     	
			                    </script>
							</c:when>
					        <c:otherwise>
					            <p>${findId.id}</p>
					        </c:otherwise>
						</c:choose>
						
	                        <tr>
	                           <th> 이름 </th>
	                           <td>
	                              <input type="text" class="input" name="mem_name" size="50" placeholder="이름입력" required autofocus>
	                           </td>
	                        </tr>
	                        <tr>
	                           <th> 전화번호 </th>
	                           <td> 
									<input type="text" class="input" name="mem_hp1" size="3" style="width:50px">
									-
									<input type="text" class="input" name="mem_hp2" size="4" style="width:70px">
									-
									<input type="text" class="input" name="mem_hp3" size="4" style="width:70px">
								</td>
	                        </tr>
	                        
	                        <tr>
	                           <td colspan="3" style="border-bottom: none">
	                           <br>
	                           <div align="center">
	                              <input class="inputButton" type="submit" value="아이디 찾기" onclick="window.location='${path}/findIdCheck.do'">
	                              <input class="inputButton" type="button" value="회원가입" >
	                           </div>
	                           </td>
	                        </tr>   
	                        
	                        <tr>
		                        <td colspan="2">
		                           <div>
		                             <button type="submit" id="id-find" onclick="window.location='${path}/login.do'" style="align:left">회원가입 하기</button>
		                             <button type="submit" id="pwd-find" onclick="window.location='${path}/findPwd.do'" style="align:right">로그인 하기</button>
		                           </div>
		                        </td>
	                        </tr>
	                     </table>
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
      
      	<!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/resources/css/common/lib/wow/wow.min.js"></script>
    <script src="${path}/resources/css/common/lib/easing/easing.min.js"></script>
    <script src="${path}/resources/css/common/lib/waypoints/waypoints.min.js"></script>
    <script src="${path}/resources/css/common/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${path}/resources/js/main.js"></script>
   </div>
</body>
</html>