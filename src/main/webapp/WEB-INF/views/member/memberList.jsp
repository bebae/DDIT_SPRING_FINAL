<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
  .pagination .page-item.active .page-link,
  .pagination .page-item .page-link:hover {
    background-color: #b32430;
    color : white;
    border-color: #1b68ff;
  }
  
  .bg-warning-light {
    background: #b32430;0
  }
  .table thead th {
    color: #ffffff;
  }
  .btn-primary {
    color: #ffffff;
    background-color: #b32430;
    border-color: #1b68ff;
  }
</style>
  <body class="vertical light">
    <div class="wrapper" style="width: 80%; margin: 0 auto; margin-top: 3%; padding-left: 10%; padding-right: 10%;">
    
      <main role="main" class="main-content" style="width: 100%; margin: 0 auto;">
        <div class="container-fluid" >
          <div class="row justify-content-center">
            <div class="col-12">
              <div class="row">
                <!-- Small table -->
                <div class="col-md-12 my-4">
			      <div class="row align-items-center mb-4">
	                <div class="col">
	                  <button type="button" id="h" class="btn btn-primary" style="color:white; border-color: transparent; height:40px; width:150px;" onclick="openMemberRegister()">사용자 등록</button>
	                </div>
					<div class="col-auto">
					    <div class="input-group">
<!-- 					    	<select id="userId" class="form-control" style="margin-right: 10px; height:40px; width:150px;"> -->
<!-- 									<option value="studentId">학번</option> -->
<!-- 									<option value="alternation">교번</option> -->
<!-- 							</select> -->
							<form action="/admin/member" method="get" style="display: flex; align-items: center;">
					        	<input type="text" class="form-control" id="search1" name="keyword" value="${param.keyword}" placeholder="학번/교번을 입력해주세요." style="margin-right: 10px; height:40px; width:300px;">
					        	<button type="submit" id="ho" class="btn btn-primary bg-my text-white" style="color:white; border-color: transparent; height:40px;">검색</button>
					   		</form>
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
                              <select class="custom-select mr-sm-2" id="inlineFormCustomSelectPref1" name="size">
                                <option value="10"
                                	<c:if test="${param.size=='10'}">selected</c:if>
                                >10</option>
                                <option value="20"
                                	<c:if test="${param.size=='20'}">selected</c:if>
                                >20</option>
                                <option value="30"
                                	<c:if test="${param.size=='30'}">selected</c:if>
                                >30</option>
                                <option value="40"
                                	<c:if test="${param.size=='40'}">selected</c:if>
                                >40</option>
                              </select>
                            </div>
                            <div class="form-group col-auto">
                            </div>
                          </div>
                        </form>
                      </div>
                      <!-- table -->
<%--                       <p>개똥이 : ${memberList}</p> --%>
                      <table class="table table-borderless table-hover" aria-describedby="dataTable_info">
                        <thead class="bg-warning-light text-black">
                          <tr>
                            <th>순번</th>
                            <th>학번/교번</th>
                            <th>이름</th>
                            <th>생년월일</th>
                            <th>전화번호</th>
                            <th>상세보기</th>
                          </tr>
                        </thead>
                        <tbody>
                          <!-- List<MemberVO> memberList -->
                          <c:forEach items="${memberList}" var="memberVO" varStatus="stat" >
                          
                          <tr class ="
                          	<c:if test='${index.count%2==0}'>even</c:if>
                          	<c:if test='${index.count%2==1}'>odd</c:if>
                          ">
                            <td>
                              <div class="avatar avatar-md">
                              	<p class="mb-0 text-muted"><strong>${stat.count+(data.currentPage*10)-10}</strong></p>
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
                            <button type="button" id="hov" class="btn btn-primary bg-my text-white" style="color:white; border-color:transparent; height:40px;" onclick="openMemberDetail('${memberVO.memNo}')">상세</button>
                            </td>
                          </tr>
                          </c:forEach>
                          <c:if test="${data.hasNoArticles()}">
                          	<tr class="odd">
                          		<td colspan="7" style="text.align:center;">데이터가 없습니다.</td>
                          	</tr>
                          </c:if>
                        </tbody>
                      </table>
                      <div class="avatar avatar-md">
	                      <div class="ctable table-borderless table-hover">
	                      	<div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">Showing
	                      	 ${(data.currentPage*data.size) - (data.size-1)}
	                      	 to
	                      	 ${data.currentPage*data.size}
	                      	 of ${data.total} entries
	                      	 </div>
	                      </div>
	                      <nav aria-label="Table Paging" class="mb-0 text-muted">
	                        <ul class="pagination justify-content-center mb-0">
	                          <li class="paginate_button page-item previous
	                          	<c:if test='${data.startPage lt 6}'>disabled</c:if>
	                          " 
	                          	id="dataTable_previous"><a class="page-link " href="/admin/member?currentPage=${data.startPage-5}&size=${data.size}" aria-controls="dataTable" data-dt-idx="0" tabindex="0"
	                          	>Previous</a></li>
	                          	
	                          <c:forEach var="pNo" begin="${data.startPage}" end="${data.endPage+4}">
	                          	<li class='paginate_button page-item
	                          		<c:if test="${param.currentPage==pNo}">active</c:if>
	                          	'><a class="page-link" href="/admin/member?currentPage=${pNo}&size=${data.size}" aria-controls="dataTable" data-dt-idx="1" tabindex="0"
	                          	>${pNo}</a></li>	
	                          </c:forEach>
	                         
	                          <li class="paginate_button page-item next
	                          	<c:if test='${data.endPage ge data.totalPages}'>disabled</c:if>
	                          " id="dataTable_next"><a
	                           class="page-link" href="/admin/member?currentPage=${data.startPage+5}&size=${data.size}" aria-controls="dataTable" data-dt-idx="7" tabindex="0">Next</a></li>
	                        </ul>
	                      </nav>
                      </div>
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
      // 약간의 페이지 사기
      if(location.href.indexOf("?") == -1){
       //alert("체킁");
        let pageItems = document.querySelectorAll(".page-item");
        console.log("체킁:",pageItems[1]);
        $(pageItems[1]).addClass("active");
      }

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
    	  location.href = "/admin/memberDetail?memNo="+memNo;
      }
      
      $(function(){
    	 $("#inlineFormCustomSelectPref1").on("change",function(){
    		 let val = $(this).val();
    		 console.log("val :" +val);
    		 location.href="/admin/member?currentPage=1&size="+val;
    	 });
      });
      
    </script>
  </body>