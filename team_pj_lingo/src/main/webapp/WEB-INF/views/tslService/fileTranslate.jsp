<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Lingo</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">
<link href="${path}/resources/css/common/lib/animate/animate.min.css"
	rel="stylesheet">
<link
	href="${path}/resources/css/common/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="${path}/resources/css/common/bootstrap.min.css"
	rel="stylesheet">
<style>
#dropZone {
	width: 100%;
	height: 150px;
	border: 2px dashed #ccc;
	text-align: center;
	padding: 50px 20px;
	margin-bottom: 20px;
	cursor: pointer;
	font-size: 16px;
	color: #555;
}

#dropZone.dragover {
	background-color: #e1e1e1;
}


</style>
</head>
<body>
	<div class="wrap">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div id="container">
			<div id="contents">
				<div id="section1">
					<h1 align="center">문서 번역</h1>
				</div>
				<div id="section2" align="center">
					<div id="s2_inner">
						<div class="join">
							<form id="fileUploadForm" method="post"
								enctype="multipart/form-data"
								action="${path}/translation/fileTranslate.do">
								<table>
									<tr>
										<th></th>
										<td>
											<div id="dropZone">Drag & Drop your file here ⇘ (.txt,
												.pdf, .docx)</div> <input type="file" id="fileInput" name="file"
												accept=".txt,.docx,.pdf" style="display: none;" /> 
												<label>원본문서 언어</label> <select name="sourceLang" class="form-control">
												<option value="auto">문서언어 선택</option>
												<option value="KO">한국어</option>
												<option value="EN">영어 (미국 / 영국)</option>
												<option value="JA">일본어</option>
												<option value="ZH">중국어 (간체 / 번체)</option>
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
												<option value="PT">포르투갈어 (브라질 / 유럽)</option>
												<option value="PL">폴란드어</option>
												<option value="FR">프랑스어</option>
												<option value="FI">핀란드어</option>
										</select> <br> <label>번역언어 선택</label> <select name="targetLang"
											class="form-control">
												<option value="KO">한국어</option>
												<option value="EN">영어 (미국 / 영국)</option>
												<option value="JA">일본어</option>
												<option value="ZH">중국어 (간체 / 번체)</option>
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
												<option value="PT">포르투갈어 (브라질 / 유럽)</option>
												<option value="PL">폴란드어</option>
												<option value="FR">프랑스어</option>
												<option value="FI">핀란드어</option>
										</select> <br> <input type="submit" class="inputButton"
											value="번역하기" />
										</td>
									</tr>
								</table>
								<h5>번역 완료된 파일은 자동으로 다운로드됩니다.</h5>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${path}/resources/js/main.js"></script>
	<script>
        $(document).ready(function() {
            const dropZone = document.getElementById('dropZone');
            const fileInput = document.getElementById('fileInput');

            dropZone.addEventListener('dragover', (e) => {
                e.preventDefault();
                dropZone.classList.add('dragover');
            });

            dropZone.addEventListener('dragleave', () => {
                dropZone.classList.remove('dragover');
            });

            dropZone.addEventListener('drop', (e) => {
                e.preventDefault();
                dropZone.classList.remove('dragover');
                const files = e.dataTransfer.files;
                if (files.length > 0) {
                    fileInput.files = files;
                    dropZone.innerText =`선택된 파일은 : ${files[0].name}`; // 파일이름추출해서 뛰우기 안됨 아직 
                }
            });
			
            //파일 선택해서 넣을시
            dropZone.addEventListener('click', () => fileInput.click());

            $("#fileUploadForm").on("submit", function(event) {
                const file = fileInput.files[0];
                if (!file) {
                    event.preventDefault();
                    alert("파일을 선택해주세요.");
                }
            });
        });
    </script>
</body>
</html>