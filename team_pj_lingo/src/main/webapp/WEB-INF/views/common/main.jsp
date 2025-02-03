<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
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
   
   <%@ include file="header.jsp" %>
   
    <!-- 캐러셀 Start -->
    <div class="container-fluid p-0 mb-1 ">
        <div class="owl-carousel header-carousel position-relative">
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="${path}/resources/images/1.jpg" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .5);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-sm-10 col-lg-8">
                                <h4 class="text-primary text-uppercase mb-3 animated slideInDown">언어로 인한 불편함 없이</h4>
                                <h3 class="display-3 text-white animated slideInDown">다문화가족을 위한 쉽고 빠른 번역서비스</h3>
                                <h4 class="text-light text-uppercase mb-3 animated slideInDown">언제든지 도움을 드립니다!</h4>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">가입하기<i class="fa fa-arrow-right ms-3"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="${path}/resources/images/2.jpg" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .5);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-sm-10 col-lg-8">
                                <h4 class="text-primary text-uppercase mb-3 animated slideInDown">언어로 인한 불편함 없이</h4>
                                <h3 class="display-3 text-white animated slideInDown">다문화가족을 위한 쉽고 빠른 번역서비스</h3>
                                <h4 class="text-light text-uppercase mb-3 animated slideInDown">언제든지 도움을 드립니다!</h4>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">가입하기<i class="fa fa-arrow-right ms-3"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
    </div>
    <!-- 캐러셀 End -->


    <!-- 4개정보 Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                           <a href="#">
                              <i class="fab fa-3x fa-slideshare text-primary mb-4"></i>
                               <h5 class="mb-3">생활정보</h5>
                               <p>생활에 유용한 다양한 정보를 쉽게 확인해보세요.</p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                          <a href="#">  
                            <i class="fas fa-3x fa-suitcase-rolling text-primary mb-4"></i>
                            <h5 class="mb-3">여행정보</h5>
                            <p>국내명소, 맛집, 여행지 정보를 한 곳에서 쉽게 찾아보세요.</p>
                          </a>  
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                          <a href="#">
                            <i class="fas fa-3x fa-hand-holding-medical text-primary mb-4"></i>
                            <h5 class="mb-3">의료정보</h5>
                            <p>의료,건강등 유용한 정보를 한 곳에서 확인할 수 있습니다.</p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                          <a href="#">  
                            <i class="fa fa-3x fa-book-open text-primary mb-4"></i>
                            <h5 class="mb-3">법률정보</h5>
                            <p>다문화 가정을 위한 법적 상담과 필요한 정보를 찾아보세요.</p>
                          </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 4개정보 End -->

    <!-- 문서번역 Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img class="img-fluid position-absolute w-100 h-100" src="${path}/resources/images/Translate-Document-Online.jpg" alt="" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                    <h6 class="section-title bg-white text-start text-primary pe-3">문서 번역</h6>
                    <h1 class="mb-4">다양한 문서들 번역해 보새요</h1>
                    <p class="mb-4">다문화가족을 위한 문서번역 서비스는 다양한 문화와 언어를 사용하는 가족들이 일상생활과 행정 업무를 원활하게 처리할 수 있도록 지원하는 서비스입니다.</p>
                    <p class="mb-4"> 문서 번역은 문서를 다른 언어로 번역하는 기능입니다. 문서 번역은 Google Docs, Microsoft Word, Microsoft Excel, PDF 등의 파일에서 사용할 수 있습니다. </p>
                    <div class="row gy-2 gx-4 mb-4">
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>생활 안내 문서 번역</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>공공문서 번역</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>의료 문서 번역</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>교육 및 의료 문서 번역</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>법률 및 행정 문서 번역</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>취업 및 경제활동 지원 문서 번역</p>
                        </div>
                    </div>
                    <a class="btn btn-primary py-3 px-5 mt-2" href="https://translate.google.com/?hl=ko&sl=en&tl=ko&op=translate">자세히 알아보기<i class="fa fa-arrow-right ms-3"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- 문서번역 End -->


    <!-- 서비스안내 Start -->
     <div class="container-xxl py-5 category">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">service info</h6>
                <h1 class="mb-5">서비스 안내</h1>
            </div>
            <div class="row g-3">
                <div class="col-lg-7 col-md-6">
                    <div class="row g-3">
                        <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s" >
                            <a class="position-relative d-block overflow-hidden" href="https://www.liveinkorea.kr/center/page/contents.do?menuSeq=180">
                                <img class="img-fluid" src="${path}/resources/images/callcenter.jpg" alt="">
                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                </div>
                            </a>
                        </div>
                        
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s" >
                            <a class="position-relative d-block overflow-hidden" href="">
                                <img class="img-fluid" src="" alt="">
                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                    <h5 class="m-0">Graphic Design</h5>
                                    <small class="text-primary">49 Courses</small>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="min-height: 100px;">
                    <a class="position-relative d-block h-100 overflow-hidden" href="https://www.liveinkorea.kr/portal/KOR/board/mlbs/boardView.do?boardSeq=2&conSeq=1163&menuSeq=282" style="padding-left: 100px;">
                        <img class="img-fluid position-absolute w-95 h-95" src="${path}/resources/images/QR download.png" alt="" style="object-fit: cover;">
                        </div>
                    </a>
               <hr style="border: 1px solid #ccc;">
                    <br>
                </div>
                <center>  
                   <img src="${path}/resources/images/notice.png" alt="">
                </center>  
                <div>
                 
                </div>
            </div>
        </div>
    </div>
	 <!-- 서비스안내 End -->

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">관련기관 및 단체</h4>
                    <a class="btn btn-link" href="https://www.kihf.or.kr/web/index.do">한국건강가정진흥원</a>
                    <a class="btn btn-link" href="https://www.korean.go.kr/">국립국어원</a>
                    <a class="btn btn-link" href="https://www.korea.net/">코리아넷</a>
                    <a class="btn btn-link" href="https://danurischool.kr/portal/home/mainViewAction.do">다누리 배움터</a>
                    <a class="btn btn-link" href="https://www.ffsb.kr/">가족친화지원사업</a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">연락처</h4>
                    <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>서울특별시 중구 퇴계로 173, 21층</p>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>다누리 콜센터 1577-1366</p>
                    <p class="mb-2"><i class="fa fa-envelope me-3"></i>이메일 office@gbfamily.net</p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-outline-light btn-social" href="https://x.com/i/flow/login?redirect_after_login=%2Fdanurilove"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social" href="https://www.facebook.com/cardanuri/"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social" href="https://www.youtube.com/@%EB%8B%A4%EB%AC%B8%ED%99%94%EA%B0%80%EC%A1%B1%EC%A7%80%EC%9B%90%ED%8F%AC%ED%84%B8%EB%8B%A4/videos"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                
                <div class="col-lg-2 col-md-4">
                    <div class="row g-5 pt-5">
                            <img  src="${path}/resources/images/LOGO.png" alt="">
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">더 많은 소식</h4>
                    <p>다양한 프로그램과 소식을 확인해 보세요.</p>
                    <div class="position-relative mx-auto" style="max-width: 400px;">
                        <input class="form-control border-0 w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                        <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; <a class="border-bottom" href="#">Your Site Name</a>, All Right Reserved.

                        <!--/*** This template is free as long as you keep the footer authorâs credit link/attribution link/backlink. If you'd like to use the template without the footer authorâs credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                    </div>
                    <div class="col-md-6 text-center text-md-end">
                        <div class="footer-menu">
                            <a href="">Home</a>
                            <a href="https://www.liveinkorea.kr/portal/KOR/page/contents.do">Help</a>
                            <a href="https://www.liveinkorea.kr/portal/KOR/board/mlfq/boardList.do">FQAs</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->
   
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