<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>



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
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- header 시작 -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
        <a href="${path}/main.do" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            
            <img src ="${path}/resources/images/LOGO.png">
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
		<script>
			translate.refreshCurrentPage = function(){
			    location.reload();
			}
		</script>
        
    <!-- 검색창 시작 -->
         <!--    <div class="search-container">
            <input style="width: 400px; height: auto; margin-right: 30px;"
               text" placeholder="다문화가족 지원포털" aria-label="Search"
               class="search-input" />
            <button type="submit" class="search-button">
               <i class="fa-solid fa-magnifying-glass"></i>
            </button>
         </div> -->
      <!-- 검색창 끝 -->        
        
        <div class="collapse navbar-collapse" id="navbarCollapse">
            
            <div class="navbar-nav ms-auto p-4 p-lg-0">
            

               <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fas fa-globe-americas  mb-4"></i></a>
                    <div class="dropdown-menu fade-down m-0">
                        <a href="javascript:translate.changeLanguage('korean');" class="dropdown-item"><img class="img-fluid" src="${path}/resources/images/korea.jpg" style="width: 20px; height: 20px; object-fit: cover; margin-right: 8px; vertical-align: middle;">한국어</a>
                        <a href="javascript:translate.changeLanguage('english');" class="dropdown-item"><img class="img-fluid" src="${path}/resources/images/us.jpg" style="width: 20px; height: 20px; object-fit: cover; margin-right: 8px; vertical-align: middle;">English</a>
                        <a href="javascript:translate.changeLanguage('vietnamese');" class="dropdown-item"><img class="img-fluid" src="${path}/resources/images/vietnam.jpg" style="width: 20px; height: 20px; object-fit: cover; margin-right: 8px; vertical-align: middle;">Tiếng Việt (Vietnam)</a>
                        <a href="javascript:translate.changeLanguage('chinese_traditional');" class="dropdown-item"><img class="img-fluid" src="${path}/resources/images/china.jpg" style="width: 20px; height: 20px; object-fit: cover; margin-right: 8px; vertical-align: middle;">中文 (Chinese)</a>
                        <a href="javascript:translate.changeLanguage('thai');" class="dropdown-item"><img class="img-fluid" src="${path}/resources/images/thai.jpg" style="width: 20px; height: 20px; object-fit: cover; margin-right: 8px; vertical-align: middle;">ภาษาไทย (Thai)</a>
                        <a href="javascript:translate.changeLanguage('japanese');" class="dropdown-item"><img class="img-fluid" src="${path}/resources/images/japan.jpg" style="width: 20px; height: 20px; object-fit: cover; margin-right: 8px; vertical-align: middle;">日本語 (Japanese)</a>
                    </div>
                </div>
                
                <a href="${path}/main.do" class="nav-item nav-link active">Home</a>
                
                <c:if test="${sessionId == 'admin'}">
                	<a href="${path}/adminAction.ad" class="nav-item nav-link">관리자</a>
                	<a href="${path}/logout.do" class="nav-item nav-link">로그아웃</a>
                </c:if> 
                
   				   <c:if test="${sessionId != 'admin'}">      
   				   
   				   <a href="${path}/free_board_list.fb" class="nav-item nav-link">커뮤니티</a>
   				   
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">정보나눔</a>
                    <div class="dropdown-menu fade-down m-0">
                        <a href="${path}/life.eq" class="dropdown-item">생활정보</a>
                        <a href="${path}/restaurantInfo.tc" class="dropdown-item">여행정보</a>
                        <a href="javascript:alert('의료정보 개발중입니다.');" onfocus="this.blur()" class="dropdown-item">의료정보</a>
                        <a href="javascript:alert('법률정보 개발중입니다.');" onfocus="this.blur()" class="dropdown-item">법률정보</a>
                    </div>
                </div>
                
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">알림마당</a>
                    <div class="dropdown-menu fade-down m-0">                   
                        <a href="javascript:alert('공지사항 개발중입니다.');" onfocus="this.blur()" class="dropdown-item">공지사항</a>
                        <a href="javascript:alert('자주하는질문 개발중입니다.');" onfocus="this.blur()" class="dropdown-item">자주하는질문</a>
                        <a href="javascript:alert('꽌련기사 개발중입니다.');" onfocus="this.blur()" class="dropdown-item">관련기사</a>
                    </div>
                </div>
                
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">번역서비스</a>
                    <div class="dropdown-menu fade-down m-0">
                        <a href="${path}/textTranslate.do" class="dropdown-item">텍스트번역</a>
                        <a href="${path}/fileTranslate.do" class="dropdown-item">문서번역</a>                      
                    </div>
                </div>
            
                
                <c:if test="${sessionScope.sessionId == null}">
                	<a href="${path}/login.do" class="nav-item nav-link">로그인</a>
                </c:if>
                
                <c:if test="${sessionScope.sessionId != null}">
                	<a href="${path}/mypage.do" class="nav-item nav-link">마이페이지</a>
                	<a href="${path}/logout.do" class="nav-item nav-link">로그아웃</a>
                </c:if> 
                
   
                
                
          </c:if>        
          
          		
  
  
                
                
               
            </div>
            <a href="${path}/join.do" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">회원가입<i class="fa fa-arrow-right ms-3"></i></a>
        </div>
    </nav>
	<!-- header 끝 -->
	
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
</body>
<script src="https://cdn.staticfile.net/translate.js/3.12.0/translate.js"></script>
<script>
translate.service.use('client.edge'); //번역기 사용   참조: http://translate.zvo.cn/43086.html
translate.selectLanguageTag.show = false;// 기본 언어선택창 숨김  (true: 표시)
translate.execute();//번역시작
</script>
</html>