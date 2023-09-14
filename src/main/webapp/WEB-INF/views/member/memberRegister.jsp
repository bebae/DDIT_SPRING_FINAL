<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<!-- <div id="list"></div> -->
<style>
.btn-primary {
    color: #ffffff;
    background-color: #153579;
    border-color: #1b68ff;
}
</style>

  <body class="vertical light">
    <div class="wrapper" style="width : 60%; margin : auto;">
		<div class="row align-items-center mb-4">
			<div class="col">
			<h1 style="margin-top:10%;">사용자 등록</h1>
			</div>
			<div class="col-auto">
				
			</div>
		</div>
		<div class="row">
                <div class="col-md-12">
                  <div class="card shadow mb-4">
                    <div class="card-header">
                      <strong class="card-title">사용자 정보</strong>
                    </div>
                    <div class="card-body">
                      <form action="/memberRegister" method="post">
                      <sec:csrfInput/>
                        <div class="form-group">
                          <label for="inputAddress">사용자 번호</label>
                          <input type="text" class="form-control" id="inputAddress5" name="memNo" value="" placeholder="학번/교번" required>
                        </div>
                        <div class="form-group">
                          <label for="inputAddress">한글명</label>
                          <input type="text" class="form-control" id="inputAddress5" name="memNm" value="" placeholder="홍길동" required>
                        </div>
                        <div class="form-group">
                          <label for="inputAddress2">생년월일</label>
                          <input type="date" class="form-control" id="inputAddress6" name="memBir" value="" placeholder="19990611" required>
                        </div>
                        <div class="form-group">
                          <label for="inputAddress">전화번호</label>
                          <input type="text" class="form-control" id="inputAddress5" name="memTel" value="" placeholder="010-1234-1234" required>
                        </div>
                        <div class="form-group">
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridCheck5">
                            <label class="form-check-label" for="gridCheck5">check</label>
                          </div>
                        </div>
                        <button type="button" id="register" class="btn btn-primary" style="width:30%; margin : auto;">등록</button>
                      </form>
                    </div> 
                    
                  </div> 
                </div> 
              </div>
	</div>
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

      function gtag()
      {
        dataLayer.push(arguments);
      }
      gtag('js', new Date());
      gtag('config', 'UA-56159088-1');
      
      const $regBtn = $("#register");

      const $memNo = $("input[name=memNo]");
      const $memNm = $("input[name=memNm]");
      const $memBir = $("input[name=memBir]");
      const $memTel = $("input[name=memTel]");

      //등록
      $regBtn.on("click",()=>{
// 	const register = document.querySelector("#register");
//     //form 전송 직전에 발생하는 이벤트
//     register.addEventListener("submit", fAjax);
//     function fAjax(){
        $regBtn.removeClass("btn-primary").addClass("btn-danger");
    	  
      	let memberVO = {
      			memNo : $memNo.val(),
      			memNm : $memNm.val(),
      			memBir : $memBir.val(),
      			memTel : $memTel.val()
      	}
      	//memberVO: {memNo: '1', memNm: '2', memBir: '3', memTel: '4'}
      	console.log("memberVO:", memberVO);
      	
      	$.ajax({
      		type : "post",
      		url : "/admin/memberRegister",
      		data : JSON.stringify(memberVO),
      		contentType : "application/json;charset=utf-8",
      		dataType : "text",
      		beforeSend:function(xhr){
      			xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
      		},
      		success : function(rslt) {
      			//rslt : success
      			console.log("rslt : " + rslt);
      			if(rslt) {
      				Swal.fire("사용자 등록이 정상적으로 완료되었습니다.");
      				//getList();
      				setTimeout(function () {
       					window.location.href = "/admin/member";
       			 	}, 1000);
      			}
      		},
      		error : function(xhr, status, error) {
      			console.log("code:" + xhr.status);
      			console.log("message: " + xhr.responseText);
      			console.log("error:" + error);
      		}
      	});
      });
    </script>
  </body>
