<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
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
    <link href="${path}/resources/css/member/login.css" rel="stylesheet">
</head>

<body>
<div class="wrap">
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
        
   <div id="container">
    <div id="contents">
        <div id="section1">
          <h1 align="center"> 텍스트번역 </h1>
            <div class="join">
                <div class="text-input">
                    <textarea class="from-text input" placeholder="입력하세요" style="height: 150px;"></textarea>
                    <textarea class="to-text input" placeholder="번역"  style="height: 150px;" readonly disabled></textarea>
                </div>
                <ul class="controls">
                    <li class="row from">
                        <select class="input"></select>
                    </li>
                    <li class="exchange">
                        <i class="fas fa-exchange-alt"></i>
                    </li>
                    <li class="row to">
                        <select class="input"></select>
                    </li>
                </ul>
            </div>
            <button class="inputButton">번역하기</button>
        </div>
    </div>
</div>


    
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/resources/css/common/lib/wow/wow.min.js"></script>
    <script src="${path}/resources/css/common/lib/easing/easing.min.js"></script>
    <script src="${path}/resources/css/common/lib/waypoints/waypoints.min.js"></script>
    <script src="${path}/resources/css/common/lib/owlcarousel/owl.carousel.min.js"></script>

    <script src="${path}/resources/js/countries.js"></script>
    <script src="${path}/resources/js/script.js"></script>
    
    <!-- Template Javascript -->
    <script src="${path}/resources/js/main.js"></script>
   </div>
</body>

</html>
