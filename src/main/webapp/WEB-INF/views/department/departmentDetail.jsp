<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<style>
  .text-muted {
    font-size: 18px;
  }

  p {
    font-size: 20px;
  }
</style>
<body class="vertical  light  ">
  <div class="wrapper">
    <main role="main" class="main-content">
      <div class="container-fluid">
        <div class="row justify-content-center">
          <div class="col-12 col-lg-10 col-xl-8">
            <div class="row align-items-center mb-4">
              <div class="col">
                <h2 class="page-title">학과 상세</h2>
              </div>
              <div class="col-auto">
                <button type="button" class="btn btn-primary">수정</button>
                <button type="button" class="btn btn-secondary">삭제</button>
              </div>
            </div>
            <div class="card shadow">
              <div class="card-body p-5">
                <div class="row mb-5">
                  <div class="col-12 text-center mb-4">
<!--                     <img src="/resources/master/light/assets/avatars/학사모.png" alt="..." class="card-img-top img-fluid rounded"> -->
                    <h2 class="mb-0 text-uppercase">학과코드</h2>
                    <p class="text-muted">단과대학명</p><br />
                    <p> 학과명 </p>
                  </div>
                  <div class="col-md-7">
                    <p class="small text-muted text-uppercase mb-2">학과 소개</p>
                    <textarea id="depDc" class="form-control" style="height: 150px;"></textarea>
                  </div>
                  <div class="col-md-5">
                    <p class="small text-muted text-uppercase mb-2">최대 정원</p>
                    <input type="number" id="depCap" class="form-control" value="${departmentVO.depCap}">
                    <br/><br/>
                    <p class="small text-muted text-uppercase mb-2">연락처</p>
                      <input type="text" id="depTel" class="form-control" value="${departmentVO.depTel}">
                  </div>
                </div> <!-- /.row -->
                <div class="row mt-3">
				  <div class="col-md-6">
				    <label for="provost">학과장</label>
				    <select id="provost" class="form-control">
				      <option>학과장 선택</option>
				      <c:forEach var="provost" items="${provostList}">
				        <option value="${provost.memNo}">${provost.memNm}</option>
				      </c:forEach>
				    </select>
				  </div>
				  <div class="col-md-6">
				    <div class="form-group">
				      <label for="TA">조교</label>
				      <select id="TA" class="form-control">
				        <option>조교 선택</option>
				        <c:forEach var="TA" items="${TAList}">
				          <option value="${TA.memNo}">${TA.memNm}</option>
				        </c:forEach>
				      </select>
				    </div>
				  </div>
				</div>
                
<!--          <div class="row mt-5"> -->

<!--            <div class="col-md-5"> -->
<!--              <p class="text-muted small"> -->
<!--                <strong>Note :</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nisi sed sollicitudin pellentesque. Nunc posuere purus rhoncus pulvinar aliquam. </p> -->
<!--            </div> -->
<!--            <div class="col-md-5"> -->
<!--              <div class="text-right mr-2"> -->
<!--                <p class="mb-2 h6"> -->
<!--                  <span class="text-muted">Subtotal : </span> -->
<!--                  <strong>$285.00</strong> -->
<!--                </p> -->
<!--                <p class="mb-2 h6"> -->
<!--                  <span class="text-muted">VAT (10%) : </span> -->
<!--                  <strong>$28.50</strong> -->
<!--                </p> -->
<!--                <p class="mb-2 h6"> -->
<!--                  <span class="text-muted">Total : </span> -->
<!--                  <span>$313.50</span> -->
<!--                </p> -->
<!--              </div> -->
<!--            </div> -->
<!--          </div> /.row -->
       </div> <!-- /.card-body -->
     </div> <!-- /.card -->
   </div> <!-- /.col-12 -->
 </div> <!-- .row -->
</div> <!-- .container-fluid -->
</main> <!-- main -->
</div> <!-- .wrapper -->
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
</script>
</body>