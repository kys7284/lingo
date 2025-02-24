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

<script type="text/javascript">
	$(function() {	// 상세페이지가 로딩되면
		// [게시글 목록 버튼] 클릭시 컨트롤러의 목록으로 이동
		$("#btnList").click(function() {
			location.href="${path}/free_board_list.fb";
		});
	
		// [게시글 수정 버튼] 클릭시 [게시글 수정 화면]버튼
		$("#btnEdit").click(function() {
			
			const password = $("#fb_password").val();
			const title = $("#fb_title").val();
			const content = $("#fb_content").val();
			
			
			if(password == "") {
				 alert("비밀번호를 입력하세요 !"); 				
				$("#fb_password").focus();
				return false;
			}
			if(title == "") {
				alert("글 제목을 입력하세요 !");
				$("#fb_title").focus();
				return false;
			}
			if(content == "") {
				alert("글 내용을 입력하세요 !");
				$("#fb_content").focus();
				return false;
			}
			
			document.editForm.action="${path}/free_board_updateAction.fb";
			document.editForm.submit();
		});
		
		// [게시글 삭제 버튼] 클릭시 [게시글 삭제 화면]버튼
		$("#btnDelete").click(function() {
			document.editForm.action="${path}/free_board_deleteAction.fb";
			document.editForm.submit();
		});
	});

</script>
</head>
<body>
	<div class="wrap">
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<!-- header 끝 -->
	
	
		<!-- 컨텐츠 시작 -->
		<div id="container">
			<div id="contents">
				<!-- 상단 중앙1 시작 -->
				<div>
					<h1 align="center">게시판 수정/삭제페이지</h1>
				</div>
				<!-- 상단 중앙1 종료 -->
				
	<!-- 검색 영역 -->
<div class="search-section">
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
        <option value="35">경상북도</option>
        <option value="36">경상남도</option>
        <option value="37">전라북도</option>
        <option value="38">전라남도</option>
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



<!-- 페이지 네비게이션 -->
<div class="pagination">
    <button id="prevPage">이전</button>
    <span id="currentPage">1</span>
    <button id="nextPage">다음</button>
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