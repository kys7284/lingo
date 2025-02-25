<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>텍스트 번역기</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
	rel="stylesheet">
<link href="${path}/resources/css/common/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div class="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div class="container mt-5">
			<h2 class="text-center">텍스트 번역기</h2>
			<form id="textTranslateForm">
				<div class="form-group">
					<label for="text">번역할 텍스트</label>
					<textarea class="form-control" id="text" name="text" rows="5"
						placeholder="번역할 텍스트를 입력하세요."></textarea>
				</div>
				<div class="form-group">
					<label for="sourceLang">원본 언어</label> <select class="form-control"
						id="sourceLang" name="sourceLang">
						<option value="auto">자동 감지</option>
					</select>
				</div>
				<div class="form-group">
					<label for="targetLang">대상 언어</label> <select class="form-control"
						id="targetLang" name="targetLang">
						<option value="KO">한국어</option>
						<option value="EN">영어 (미국 및 영국)</option>
						<option value="JA">일본어</option>
						<option value="ZH">중국어 (간체 및 번체)</option>
						<option value="EL">그리스어</option>
						<option value="NL">네덜란드어</option>
						<option value="NB">노르웨이어 (보크몰)</option>
						<option value="DA">덴마크어</option>
						<option value="DE">독일어</option>
						<option value="LV">라트비아어</option>
						<option value="RU">러시아어</option>
						<option value="RO">루마니아어</option>
						<option value="LT">리투아니아어</option>
						<option value="BG">불가리아어</option>
						<option value="SV">스웨덴어</option>
						<option value="ES">스페인어</option>
						<option value="SK">슬로바키아어</option>
						<option value="SL">슬로베니아어</option>
						<option value="AR">아랍어</option>
						<option value="ET">에스토니아어</option>
						<option value="UK">우크라이나어</option>
						<option value="IT">이탈리아어</option>
						<option value="ID">인도네시아어</option>
						<option value="CS">체코어</option>
						<option value="TR">터키어</option>
						<option value="PT">포르투갈어 (브라질 및 유럽)</option>
						<option value="PL">폴란드어</option>
						<option value="FR">프랑스어</option>
						<option value="FI">핀란드어</option>
					</select>
				</div>
				<button type="submit" class="btn btn-primary btn-block">번역하기</button>
			</form>
			<div class="mt-4">
				<h5>번역된 텍스트</h5>
				<textarea class="form-control mt-2" id="translatedText" rows="5"
					readonly></textarea>
			</div>
		</div>
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${path}/resources/js/main.js"></script>
	<script>
    $(document).ready(function () {
        $("#textTranslateForm").on("submit", function (event) {
            event.preventDefault();

            var text = $("#text").val();
            var sourceLang = $("#sourceLang").val();
            var targetLang = $("#targetLang").val();

            var requestDTO = {
                text: [text],
                sourceLang: sourceLang,
                targetLang: targetLang
            };

            $.ajax({
                url: '${path}/translation/textTranslate.do',
                type: 'POST',
                contentType: 'application/json; charset=UTF-8',
                data: JSON.stringify(requestDTO, null, 2),
                dataType: 'json',
                beforeSend: function (xhr) {
                    xhr.setRequestHeader("Accept", "application/json; charset=UTF-8");
                },
                success: function (data) {
                    $("#translatedText").val(data.translations[0].text);
                },
                error: function (xhr) {
                    alert('번역 중 오류가 발생했습니다: ' + xhr.responseText);
                }
            });
        });
    });
</script>

</body>
</html>