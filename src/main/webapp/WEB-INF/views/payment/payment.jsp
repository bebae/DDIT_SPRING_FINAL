<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
  .pagination .page-item.active .page-link,
  .pagination .page-item .page-link:hover {
    background-color: #B61A53;
    color : white;
  }
</style>

  <body class="vertical  light  ">
    <div class="wrapper">
    
      <main role="main" class="main-content" style="width : 110%; margin : auto;">
        <div class="container-fluid" >
          <div class="row justify-content-center">
          <h2 class="h3 mb-4 page-title">등록 내역/고지서</h2>
            <div class="col-12">
              <div class="row">
                <!-- Small table -->
                <div class="col-md-6 my-4 d-flex justify-content-between">
			      <div>
			        <button type="button" class="btn btn-primary bg-my text-white" style="color:white; border-color: transparent; height:40px; width:150px;" onclick="openInvoice()">고지서 출력</button>
			      </div>
			      <div>
			        <button type="button" class="btn btn-primary bg-my text-white" style="color:white; border-color: transparent; height:40px; width:200px;" onclick="openProofOfPayment()">교육비증명납입증명서 출력</button>
			      </div>
			    </div>

	              </div>
                  <div class="card shadow">
                    <div class="card-body">
                      <div class="toolbar">
                        <form class="form">
                          <div class="form-row">
                            <div class="form-group col-auto mr-auto">
                              <label class="my-1 mr-2 sr-only" for="inlineFormCustomSelectPref1">Show</label>
                              <select class="custom-select mr-sm-2" id="inlineFormCustomSelectPref1">
                                <option value="">...</option>
                                <option value="1">12</option>
                                <option value="2" selected>32</option>
                                <option value="3">64</option>
                                <option value="3">128</option>
                              </select>
                            </div>
                            <div class="form-group col-auto">
                              <label for="search" class="sr-only">Search</label>
                            </div>
                          </div>
                        </form>
                      </div>
                      <!-- table -->
<%--                       <p>개똥이 : ${memberList}</p> --%>
                      <table class="table table-borderless table-hover">
                        <thead>
                          <tr>
                            <th>구분</th>
                            <th>학번/교번</th>
                            <th>이름</th>
                            <th>생년월일</th>
                            <th>전화번호</th>
                            <th>상세보기</th>
                          </tr>
                        </thead>
                        <tbody>
                          <!-- List<MemberVO> memberList -->
                          <c:forEach items="${memberList}" var="memberVO">
                          <tr>
                            <td>
                              <div class="avatar avatar-md">
                                <img src="./assets/avatars/face-3.jpg" alt="..." class="avatar-img rounded-circle">
                              </div>
                            </td>
                            <td>
                              <p class="mb-0 text-muted"><strong>${memberVO.memNo}</strong></p>
                            </td>
                            <td>
                              <p class="mb-0 text-muted">${memberVO.memNm}</p>
                            </td>
                            <td>
                              <p class="mb-0 text-muted"><a href="#" class="text-muted">${memberVO.memBir}</a></p>
                            </td>
                            <td class="w-25"><small class="text-muted">${memberVO.memTel}</small></td>
                            <td>
                            <button type="button" class="btn btn-primary bg-my text-white" style="color:white; border-color: transparent; height:40px;" onclick="openMemberDetail(${memberVO.memNo})">상세</button>
                            </td>
                          </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                      <nav aria-label="Table Paging" class="mb-0 text-muted">
                        <ul class="pagination justify-content-center mb-0">
                          <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                          <li class="page-item"><a class="page-link" href="#">1</a></li>
                          <li class="page-item active"><a class="page-link" href="#">2</a></li>
                          <li class="page-item"><a class="page-link" href="#">3</a></li>
                          <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                      </nav>
                    </div>
                  </div>
                </div> <!-- customized table -->
              </div>
			</div>
		</div>
	</div>
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
    <script src='js/jquery.dataTables.min.js'></script>
    <script src='js/dataTables.bootstrap4.min.js'></script>
    <script>
      $('#dataTable-1').DataTable(
      {
        autoWidth: true,
        "lengthMenu": [
          [16, 32, 64, -1],
          [16, 32, 64, "All"]
        ]
      });
    </script>
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
      
      
      function openMemberRegister() {
    	  //사용자등록 페이지로 이동
    	  window.location.href = "/admin/memberRegister";
      }
      
      function openMemberDetail(memNo) {
//     	  let memberVO = {
//     			  memNo : $memNo.val(),
//     			  memNm : $memNm.val(),
//     			  memBir : $memBir.val(),
//     			  memTel : $memTel.val()
//     	  }
    	  
    	  //사용자수정 및 삭제 페이지로 이동
    	  window.location.href = "/admin/memberDetail?memNo="+memNo;
      }
      
      
    </script>
  </body>