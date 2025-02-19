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

<title>free_board</title>

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

	<link rel="stylesheet" href="${path}/resources/css/common/board.css">
	<link rel="stylesheet" href="${path}/resources/css/board/board.css">
</head>
<body>
	<!-- 헤더시작 -->
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<!-- 헤더 끝 -->
	
	<!-- 상단 중앙1 시작  -->
	<div id="section1"
		style="background-image: url('${path}/resources/images/travel.jpg'); background-size: cover; background-position: center; height: 300px;">
		<br> 
		<br>
		<h1 align="center" style="padding-bottom: 50px;">여행정보</h1>
		
		<span style="display: flex; justify-content: center; font-weight: bold;">여러분의 여행을 공유해주세요</span>
	</div>
	<!-- 상단 중앙1 종료 -->
				
	<!-- 검색 영역 -->
<div class="search-section" style="display: flex;justify-content: center;;">
    <label for="city">도시 선택:</label> 
    <select id="city">
        <option value="">도시 선택</option>
        <option value="1">서울특별시</option>
        <option value="2">인천광역시</option>
        <option value="3">대전광역시</option>
        <option value="4">대구광역시</option>
        <option value="5">광주광역시</option>
        <option value="6">부산광역시</option>
        <option value="7">울산광역시</option>
        <option value="8">세종특별자치시</option>
        <option value="31">경기도</option>
        <option value="32">강원도</option>
        <option value="33">충청북도</option>
        <option value="34">충청남도</option>
        <option value="35">전라북도</option>
        <option value="36">전라남도</option>
        <option value="37">경상북도</option>
        <option value="38">경상남도</option>
        <option value="39">제주특별자치도</option>
    </select>
    <button id="searchBtn">검색</button>
</div>

<script>
let currentPage = 1;  // 현재 페이지 번호

$(document).ready(function() {
    $("#searchBtn").click(function() {
        currentPage = 1; // 새로운 검색 시 페이지 번호 초기화
        fetchTourismData(currentPage);
    });

    $("#prevPage").click(function() {
        if (currentPage > 1) {
            currentPage--;
            fetchTourismData(currentPage);
        }
    });

    $("#nextPage").click(function() {
        currentPage++;
        fetchTourismData(currentPage);
    });
});

function fetchTourismData(pageNo) {
    var areaCode = $("#city").val();
    if (!areaCode) {
        alert("도시를 선택하세요.");
        return;
    }

    $.ajax({
        url: '/team_pj_lingo/APIController.do',
        type: 'GET',
        data: { areaCode: areaCode, pageNo: pageNo }, // 선택한 지역 코드와 페이지 번호 반영
        success: function(response) {
            console.log("API 응답 데이터:", response);

            try {
                let msg = typeof response === "string" ? JSON.parse(response) : response;
                if (msg.response && msg.response.body && msg.response.body.items) {
                    var myItem = msg.response.body.items.item;
                    var output = '<table border="1" style="width:60%; border-collapse:collapse; text-align:center;">';

                    // 테이블 헤더 추가
                    output += `
                        <thead>
                            <tr style="background:#f2f2f2;">
                                <th>번호</th>
                                <th>이름</th>
                                <th>주소 1</th>
                                <th>주소 2</th>
                                <th>전화번호</th>
                                <th>이미지</th>
                            </tr>
                        </thead>
                        <tbody>
                    `;

                    // 테이블 데이터 추가
                    for (var i = 0; i < myItem.length; i++) {
                        output += '<tr>';
                        output += '<td>' + (i + 1) + '</td>';
                        output += '<td>' + (myItem[i].title || '정보 없음') + '</td>';
                        output += '<td>' + (myItem[i].addr1 || '정보 없음') + '</td>';
                        output += '<td>' + (myItem[i].addr2 || '정보 없음') + '</td>';
                        output += '<td>' + (myItem[i].tel || '정보 없음') + '</td>';

                        // 이미지 추가
                        if (myItem[i].firstimage) {
                            output += '<td><img src="' + myItem[i].firstimage + '" alt="숙박 이미지" style="width:100px; height:auto;"></td>';
                        } else {
                            output += '<td>이미지 없음</td>';
                        }

                        output += '</tr>';
                    }

                    output += '</tbody></table>';

                    $('#display').html(output);
                    $('#currentPage').text(pageNo); // 현재 페이지 업데이트
                } else {
                    $('#display').html('<p>데이터를 불러올 수 없습니다.</p>');
                }
            } catch (e) {
                console.error("JSON 파싱 오류:", e);
                $('#display').html('<p>JSON 데이터가 올바르지 않습니다.</p>');
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log("Status:", textStatus);
            console.log("Error:", errorThrown);
            $('#display').html('<p>API 요청 실패: ' + textStatus + '</p>');
        }
    });
}
</script>


					<!-- 왼쪽메뉴시작 -->
					<div id="side_menu">
	
						<h2>여행정보</h2>

						<br><br>

						<ul>
							<li><a href="${path}/travelInfo.tc"> 나의 여행 </a></li>
						</ul>
	
						<ul>
							<li><a href="${path}/findSpot.tc"> 여행지 찾기 </a></li>
						</ul>
						
					</div>
					<!-- 왼쪽메뉴 끝 -->
					<div id="display">
					<!-- 결과창 출력 -->
					</div>

			<!-- 페이지 네비게이션 -->
			<div class="pagination" style="display: flex; justify-content: center;">
			    <div style="width:10%;  float:right;"><button id="prevPage">이전</button></div>
			    <span id="currentPage" style="padding:8px; width: 10%;">1</span>
			    <div style="width:10%; float:right;"><button id="nextPage" >다음</button></div>
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
<script src="https://cdn.staticfile.net/translate.js/3.12.0/translate.js" defer></script>
<script>
translate.service.use('client.edge'); 	 	//번역기 사용   참조: http://translate.zvo.cn/43086.html
translate.selectLanguageTag.show = false;	// 기본 언어선택창 숨김  (true: 표시)
translate.execute();//번역시작
</script>
</html>	