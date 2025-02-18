<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>텍스트 번역기</title>
<!-- Favicon -->
<% String path = request.getContextPath(); %>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet">
<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
	rel="stylesheet">
<!-- Bootstrap CSS -->
<link href="${path}/resources/css/common/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS for Translation Page -->
<link href="${path}/resources/css/translation.css" rel="stylesheet">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
        $(document).ready(function() {
            $("#translateBtn").on("click", function() {
                const text = $("#textToTranslate").val();
                const targetLang = $("#targetLang").val();
                const apiKey = "ff69440e-231d-4045-8946-8e32078265c7:fx"; // Deepl API 키를 여기에 입력하세요.

                if (text.trim() === "") {
                    alert("번역할 텍스트를 입력해주세요.");
                    return;
                }

                $.ajax({
                    url: "https://api-free.deepl.com/v2/translate",
                    type: "POST",
                    headers: {
                        "Content-Type": "application/x-www-form-urlencoded"
                    },
                    data: {
                        auth_key: apiKey,
                        text: text,
                        target_lang: targetLang
                    },
                    success: function(response) {
                        if (response && response.translations && response.translations.length > 0) {
                            const translatedText = response.translations[0].text;
                            $("#translatedText").text(translatedText);
                        } else {
                            $("#translatedText").text("번역 실패: 응답 데이터를 확인하세요.");
                        }
                    },
                    error: function(xhr, status, error) {
                        $("#translatedText").text("번역 오류: " + error);
                    }
                });
            });
        });
    </script>
</head>

<body>
	<div class="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div class="container mt-5">
			<h2 class="text-center">텍스트 번역기</h2>
			<!-- 번역할 텍스트 입력 -->
			<div class="form-group">
				<label for="textToTranslate">번역할 텍스트</label>
				<textarea class="form-control" id="textToTranslate" rows="5"
					placeholder="번역할 텍스트를 입력하세요."></textarea>
			</div>

			<!-- 언어 선택 -->
			<div class="form-group">
				<label for="targetLang">번역 대상 언어</label> <select
					class="form-control" id="targetLang">
					<option value="KO">한국어</option>
					<option value="JA">일본어</option>
					<option value="EN">영어</option>
					<option value="ZH">중국어 (간체)</option>
					<option value="RU">러시아어</option>
					<option value="ID">인도네시아어</option>
					<option value="UK">우크라이나어</option>
					<option value="BG">불가리아어</option>
					<option value="CS">체코어</option>
					<option value="DA">덴마크어</option>
					<option value="DE">독일어</option>
					<option value="EL">그리스어</option>
					<option value="ES">스페인어</option>
					<option value="ET">에스토니아어</option>
					<option value="FI">핀란드어</option>
					<option value="FR">프랑스어</option>
					<option value="HU">헝가리어</option>
					<option value="IT">이탈리아어</option>
					<option value="LT">리투아니아어</option>
					<option value="LV">라트비아어</option>
					<option value="NB">노르웨이어 (보크몰)</option>
					<option value="NL">네덜란드어</option>
					<option value="PL">폴란드어</option>
					<option value="PT">포르투갈어</option>
					<option value="RO">루마니아어</option>
					<option value="SK">슬로바키아어</option>
					<option value="SL">슬로베니아어</option>
					<option value="SV">스웨덴어</option>
					<option value="TR">튀르키예어</option>

				</select>
			</div>

			<!-- 번역 버튼 -->
			<button id="translateBtn" class="btn btn-primary btn-block">번역하기</button>

			<!-- 번역 결과 -->
			<div class="mt-4">
				<h5 id="translated">번역된 텍스트</h5>
				<textarea class="form-control mt-2" id="translatedText" rows="5"
					readonly>번역된 텍스트가 여기에 표시됩니다.</textarea>
			</div>
		</div>
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		<!-- JavaScript Libraries -->
		<script src="${path}/resources/js/script.js"></script>
		<!-- Template Javascript -->
		<script src="${path}/resources/js/main.js"></script>
</body>
</html>
