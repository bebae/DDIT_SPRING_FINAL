<%@ page language="java" contentType="text/html; charset=UTF-8" %>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<main role="main" class="main-content" style="width: 70%; margin: auto;">
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-12">
					<h2 class="page-title">기숙사</h2>
					<p class="text-muted"></p>
					<div class="card shadow mb-4">

						<div class="card-body">
							<div class="row">
								<div class="col-md-6">
									<form action="/">
										<div class="form-group mb-3">
											<label for="sleepStart" style="font-weight: bold;">*
												외박신청</label><br /> <label for="example-palaceholder">&nbsp;외박일정</label>
											<input type="date" id="sleepStart" name="sleepStart" class="form-control"
												placeholder="외박일정"> <label for="sleepEnd">&nbsp;귀가일정</label> <input
												type="date" id="sleepEnd" name="sleepEnd" class="form-control"
												placeholder="귀가일정">
										</div>
										<div class="form-group">
											<label for="sleepRsn">외박사유</label> <label for="exampleFormControlTextarea1"
												class="sr-only">Your
												Message</label>
											<textarea class="form-control bg-light" id="sleepRsn" name="sleepRsn"
												rows="2"></textarea>
										</div>
										<button type="button" class="btn mb-2 bg-my text-white"
											id="applyBtn">외박신청</button>
									</form>
									<br />
									<br />


									<div class="form-group mb-3">
										<label for="example-palaceholder" style="font-weight: bold;">*
											승인여부</label><br /> <label for="example-palaceholder">결과</label> <input
											type="text" id="example-palaceholder" class="form-control" placeholder="">
									</div>
									<div class="form-group mb-3">
										<label for="example-palaceholder">반려사유</label> <input type="text"
											id="example-palaceholder" class="form-control" placeholder="">
									</div>
									<div class="form-group mb-3">
										<label for="example-palaceholder" style="font-weight: bold;">*
											상벌점현황</label><br /> <label for="example-palaceholder">상점</label> <input
											type="text" id="example-palaceholder" class="form-control" placeholder="">
									</div>
									<div class="form-group mb-3">
										<label for="example-palaceholder">벌점</label> <input type="text"
											id="example-palaceholder" class="form-control" placeholder="">
									</div>

								</div>
								<!-- /.col -->
								<div class="col-md-6">

									<div class="form-group mb-3">
										<label for="example-palaceholder" style="font-weight: bold;">*
											사생정보</label><br /> <label for="example-palaceholder">이름</label> <input
											type="text" class="form-control" id="example-disable" disabled=""
											value="${dormitoryFormVO.memNm}">
									</div>
									<div class="form-group mb-3">
										<label for="example-palaceholder">학번</label> <input type="text"
											class="form-control" id="example-disable" disabled
											value="${dormitoryFormVO.memNo}">
									</div>
									<div class="form-group mb-3">
										<label for="example-disable">기숙사명</label> <input type="text"
											class="form-control" id="example-disable" disabled
											value="${dormitoryFormVO.dorNmCode}">
									</div>
									<div class="form-group mb-3">
										<label for="example-disable">연락처</label> <input type="text" class="form-control"
											id="example-disable" disabled value="${dormitoryFormVO.memTel}">
									</div>
									<div class="form-group mb-3">
										<label for="example-disable">성별</label> <input type="text" class="form-control"
											id="example-disable" disabled value="${dormitoryFormVO.doraGender}">
									</div>
									<div class="form-group mb-3">
										<label for="example-disable">학과</label> <input type="text" class="form-control"
											id="example-disable" disabled value="${dormitoryFormVO.depNm}">
									</div>
									<div class="form-group mb-3">
										<label for="example-disable">호수</label> <input type="text" class="form-control"
											id="example-disable" disabled value="${dormitoryFormVO.dorNo}">
									</div>
									<div class="form-group mb-3">
										<label for="example-disable">비상연락처</label> <input type="text"
											class="form-control" id="example-disable" disabled
											value="${dormitoryFormVO.memTel2}">
									</div>
									<div class="form-group mb-3">
										<label for="example-disable">기숙사 생활기간</label> <input type="text"
											class="form-control" id="example-disable" disabled
											value="${dormitoryFormVO.lifePeriod}">
									</div>


								</div>
							</div>
						</div>
					</div>
					<!-- / .card -->






					<script src="js/jquery.min.js"></script>
					<script src="js/popper.min.js"></script>
					<script src="js/moment.min.js"></script>
					<script src="js/bootstrap.min.js"></script>
					<script src="js/simplebar.min.js"></script>
					<script src='js/daterangepicker.js'></script>
					<script src='js/jquery.stickOnScroll.js'></script>
					<script src="js/tinycolor-min.js"></script>
					<script src="js/config.js"></script>
					<script src="js/apps.js"></script>
					<!-- Global site tag (gtag.js) - Google Analytics -->
					<script async src="https://www.googletagmanager.com/gtag/js?id=UA-56159088-1"></script>
					<script>
						window.dataLayer = window.dataLayer || [];

						function gtag() {
							dataLayer.push(arguments);
						}
						gtag('js', new Date());
						gtag('config', 'UA-56159088-1');
					</script>

					<script>

						//서버에서 발행된 헤더네임과 토큰갑사 저장
						const header = '${_csrf.headerName}';
						const token = '${_csrf.token}';
						$(function () {
							$("#applyBtn").click(function () {
								swal({
									position: 'top-end',
									icon: 'success',
									title: '신청되었습니다',
									showConfirmButton: false,
									timer: 2000
								});
							});
						});

						$("#applyBtn").on("click", () => {
							let sleepoverVO = {
								//sleepCode: $("#sleepCode").val(),
								stuMemNo : '${dormitoryFormVO.memNo}',
								sleepStart: $("#sleepStart").val(),
								sleepEnd: $("#sleepEnd").val(),
								sleepRsn: $("#sleepRsn").val(),
							}
							console.log("sleepoverVO : ", sleepoverVO);
							$.ajax({
								type: "post",
								url: "/stu/dormitory",
								data: JSON.stringify(sleepoverVO),
								contentType: "application/json;charset=utf-8",
								dataType: "text",
								beforeSend: function (xhr) {
									xhr.setRequestHeader(header, token);
									//xhr.setRequestHeader(header, token);
									//xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");
									//xhr.setRequestHeader("Content-type","application/json");
								},
								success: function (rslt) {
									console.log(rslt);

									if (rslt == 1) {
										//alert("성공");

									}
								},
								error: function (xhr, status, error) {
									console.log("code: " + xhr.status)
									console.log("message: " + xhr.responseText)
									console.log("error: " + error);
								}
							})
						});
					</script>