<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
<meta id="_csrf" name="_csrf" content="${_csrf.token}"/>

<main role="main" class="main-content" style="width: 70%; margin: auto;">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-12">
				<h2 class="page-title">기숙사 신청</h2>
				<p class="text-muted">2023학년도 2학기 기숙사 신청</p>
				<%-- 					<p>${dormitoryApplyFormVO}</p> --%>
				<div class="card shadow mb-4">

					<div class="card-body">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group mb-3">
									<label for="memNm">이름</label>
									<input type="text" id="memNm" name="memNm" class="form-control" placeholder="이름" value="${dormitoryApplyFormVO.memNm}">
								</div>
								<label for="example-palaceholder">성별</label>
								<div class="custom-control custom-radio">
									<input type="radio" class="custom-control-input" id="genderMale" name="doraGender" value="M">
									<label class="custom-control-label" for="genderMale">남자</label>
								</div>
								<div class="custom-control custom-radio">
									<input type="radio" class="custom-control-input" id="genderFemale" name="doraGender" value="F">
									<label class="custom-control-label" for="genderFemale">여자</label>
								</div>
								<br />
								<div class="form-group mb-3">
									<label for="memBir">생년월일</label>
									<input type="text" id="memBir" name="memBir" class="form-control" placeholder="생년월일" value="${dormitoryApplyFormVO.memBir}">
								</div>
								<div class="form-group mb-3">
									<label for="stuMemNo">학번</label>
									<input type="text" id="stuMemNo" name="stuMemNo" class="form-control" placeholder="학번" value="${dormitoryApplyFormVO.memNo}">
								</div>
								<div class="form-group mb-3">
									<label for="depNm">학과</label>
									<input type="text" id="depNm" name="depNm" class="form-control" placeholder="학과" value="${dormitoryApplyFormVO.depNm}">
								</div>
								<div class="form-group mb-3">
									<label for="codNm">단과대학</label>
									<input type="text" id="codNm" class="form-control" placeholder="단과대학" value="${dormitoryApplyFormVO.codNm}">
								</div>
								<div class="form-group mb-3">
									<label for="doraGrd">학점</label>
									<input type="text" id="doraGrd" name="doraGrd" class="form-control" placeholder="학점">
								</div>
								<label>신입생여부</label>
								<div class="custom-control custom-radio">
									<input type="radio" class="custom-control-input" id="freshY" name="fresh" value="Y">
									<label class="custom-control-label" for="freshY">Y</label>
								</div>
								<div class="custom-control custom-radio">
									<input type="radio" class="custom-control-input" id="freshN" name="fresh" value="N">
									<label class="custom-control-label" for="freshN">N</label>
								</div>
								<br />
								<div class="form-group mb-3">
									<label for="codeDoraReg">거주지역</label>
									<select class="custom-select" id="codeDoraReg" name="codeDoraReg">
										<option>거주지역 선택</option>
										<option value="경기도">경기도</option>
										<option value="강원도">강원도</option>
										<option value="경상북도">경상북도</option>
										<option value="경상남도">경상남도</option>
										<option value="충청북도">충청북도</option>
										<option value="충청남도">충청남도</option>
										<option value="전라북도">전라북도</option>
										<option value="전라남도">전라남도</option>
										<option value="제주특별자치도">제주특별자치도</option>
									</select>
								</div>
							</div>
							<!-- /.col -->
							<div class="col-md-6">
								<div class="form-group mb-3">
									<label for="doraYr">신청연도</label>
									<input type="text" id="doraYr" class="form-control" name="doraYr" readonly value="2023">
								</div>
								<div class="form-group mb-3">
									<label for="example-disable">신청학기</label>
									<input type="text" class="form-control" id="doraSem" name="doraSem" readonly value="2">
								</div>
								<div class="form-group mb-3">
									<label for="doraName">신청 기숙사명</label>
									<select class="custom-select" id="doraNameCode" name="doraNameCode">
										<option>신관/구관 선택</option>
										<option value="구관(여자)">구관(여자)</option>
										<option value="신관(여자)">신관(여자)</option>
										<option value="구관(남자)">구관(남자)</option>
										<option value="신관(남자)">신관(남자)</option>
									</select>
								</div>
								<div class="form-group mb-3">
									<label for="dorNo">희망호수</label>
									<p class="text-muted">신관(101~120),구관(101~120)</p>
									<input type="text" id="dorNo" name="dorNo" class="form-control">
								</div>
								<div class="form-group mb-3">
									<label for="memTel">연락처</label>
									<input type="text" id="memTel" name="memTel" class="form-control" placeholder="연락처" value="${dormitoryApplyFormVO.memTel}">
								</div>
								<div class="form-group mb-3">
									<label for="memTel2">비상연락처</label>
									<input type="text" id="memTel2" class="form-control" placeholder="비상연락처" value="${dormitoryApplyFormVO.memTel2}">
								</div>
								<div class="form-group">
									<label for="example-palaceholder">신청사유</label>
									<label for="exampleFormControlTextarea1" class="sr-only">Your Message</label>
									<textarea class="form-control bg-light" id="doraRsn" name="doraRsn" rows="2"></textarea>
								</div>
								<div class="d-flex justify-content-end" id="applyBtn">
									<button type="submit" class="btn mb-2 bg-my text-white">신청</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- / .card -->






				<script src="/resources/js/jquery.min.js"></script>
<!-- 				<script src="js/popper.min.js"></script> -->
<!-- 				<script src="js/moment.min.js"></script> -->
<!-- 				<script src="js/bootstrap.min.js"></script> -->
<!-- 				<script src="js/simplebar.min.js"></script> -->
<!-- 				<script src='js/daterangepicker.js'></script> -->
<!-- 				<script src='js/jquery.stickOnScroll.js'></script> -->
<!-- 				<script src="js/tinycolor-min.js"></script> -->
<!-- 				<script src="js/config.js"></script> -->
<!-- 				<script src="js/apps.js"></script> -->
				<!-- Global site tag (gtag.js) - Google Analytics -->
				<script async
					src="https://www.googletagmanager.com/gtag/js?id=UA-56159088-1"></script>
				<script>
					window.dataLayer = window.dataLayer || [];

					function gtag() {
						dataLayer.push(arguments);
					}
					gtag('js', new Date());
					gtag('config', 'UA-56159088-1');
				</script>
				
				<script>
				 $(document).ready(function () {
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
				       let dormitoryApplyFormVO = {
			    		   stuMemNo: $("#stuMemNo").val(),
			    		   doraNameCode : $("#doraNameCode").val(),
			    		   dorNo : $("#dorNo").val(),
			    		   doraYr : $("#doraYr").val(),
			    		   doraSem : $("#doraSem").val(),
			    		   doraRsn : $("#doraRsn").val(),
			    		   codeDoraReg : $("#codeDoraReg").val(),
			    		   doraGrd : $("#doraGrd").val(),
			    		   doraFreshYn: $("input[name=fresh]").val(),
			    		   doraGender : $("input[name=doraGender]").val()
				       }
				       console.log("dormitoryApplyFomrVO : ", dormitoryApplyFormVO);
				       let csrfHeader = $("#_csrf_header").attr('content')
					   let csrfToken = $("#_csrf").attr('content')
				       $.ajax({
				           type:"post",
				           url:"/stu/dormitoryApply",
				           data: JSON.stringify(dormitoryApplyFormVO),
				           contentType:"application/json;charset=utf-8",
				           dataType:"text",
				           beforeSend: function(xhr) {
								xhr.setRequestHeader(csrfHeader, csrfToken);
				                xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");
				                xhr.setRequestHeader("Content-type","application/json");
				           },
				           success:function(rslt){
				               console.log(rslt);
				               
				               if(rslt == 1){
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
				