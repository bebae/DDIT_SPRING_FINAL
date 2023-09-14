<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
$(document).ready(function () {
    $("#delete").click(function () {
        swal({
            position: 'top-end',
            icon: 'success',
            title: '삭제되었습니다',
            showConfirmButton: false,
            timer: 1500
        });
    });
});
</script>

<style>
  .table thead th {
      color: var(--white-color);
      white-space:nowrap;
  }
  .row {
      align-items: flex-end;
  }
</style>

<div class="wrapper">
  <main role="main" class="main-content mx-auto">
    <div class="container-fluid">
      <div class="row justify-content-center">
        <div class="col-12">
          <h2 class="mb-2 page-title text-center">성적관리</h2>
		  <div style="text-align:right;">
          	<a href="test/testRegisterDetail" class="btn btn-my" >학점취득현황</a>
          </div>
                
          

          

	
          <!-- Small table -->
          <div class="row my-3">
            <div class="col-md-12">
              <div class="card shadow">
                <div class="card-body">
                
                  <!-- table -->
                  
                  <table class="table datatables text-center" id="dataTable-1">
                    
                    <thead class="bg-secondary-light">
                    <h5>현재학기성적</h5>
                    <tr>
                      <th>년도</th>
                      <th>학기</th>
                      <th>과목명</th>
                      <th>이수구분</th>
                      <th>학점</th>
                      <th>등급</th>
                      <th>평점</th>
                      
                      
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                   
                   <!-- 모달 -->
		            <div class="modal fade show" id="verticalModal" tabindex="-1" role="dialog" aria-labelledby="verticalModalTitle" style="padding-right: 19px;" aria-modal="true">
		              <div class="modal-dialog modal-dialog-centered" role="document">
		                <div class="modal-content">
		                  <div class="modal-header">
		                  
		                  	
		                    <h4 class="modal-title" id="verticalModalTitle">출결증빙자료제출</h4>
		                  
		                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                      <span aria-hidden="true">×</span>
		                    </button>
		                  </div>
		                  	<br/>
		                  <p style="text-align:center;">
							  <input type="file" id="inputFile" name="pictures" style="display: inline-block;"/>
							  <button type="button" class="btn btn-my">제출</button>
						  </p>
		                  
		                </div>
		              </div>
		            </div><!-- 모달 -->

                    </tbody>
                  </table>
                  <nav aria-label="Table Paging" class="mb-0 text-muted">
                        <ul class="pagination justify-content-center mb-0">
                          <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                          <li class="page-item"><a class="page-link" href="#">1</a></li>
                          <li class="page-item"><a class="page-link" href="#">2</a></li>
                          <li class="page-item active"><a class="page-link" href="#">3</a></li>
                          <li class="page-item"><a class="page-link" href="#">4</a></li>
                          <li class="page-item"><a class="page-link" href="#">5</a></li>
                          <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                      </nav>
                </div>
              </div>
              
              
              
              
              
               <!-- Small table -->
	          <div class="row my-3">
	            <div class="col-md-12">
	              <div class="card shadow">
	                <div class="card-body">
	                
	                  <!-- table -->
	                
	                  <table class="table datatables text-center" id="dataTable-1">
	                    
	                    <thead class="bg-secondary-light">
	                    <tr>
                      <th>년도</th>
                      <th>학기</th>
                      <th>과목명</th>
                      <th>이수구분</th>
                      <th>학점</th>
                      <th>등급</th>
                      <th>평점</th>
                      
                      
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
	                   
	                   <!-- 모달 -->
			            <div class="modal fade show" id="verticalModal" tabindex="-1" role="dialog" aria-labelledby="verticalModalTitle" style="padding-right: 19px;" aria-modal="true">
			              <div class="modal-dialog modal-dialog-centered" role="document">
			                <div class="modal-content">
			                  <div class="modal-header">
			                  
			                  	
			                    <h4 class="modal-title" id="verticalModalTitle">출결증빙자료제출</h4>
			                  
			                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			                      <span aria-hidden="true">×</span>
			                    </button>
			                  </div>
			                  	<br/>
			                  <p style="text-align:center;">
								  <input type="file" id="inputFile" name="pictures" style="display: inline-block;"/>
								  <button type="button" class="btn btn-my">제출</button>
							  </p>
			                  
			                </div>
			              </div>
			            </div><!-- 모달 -->
	
	                    </tbody>
	                  </table>
	                  <nav aria-label="Table Paging" class="mb-0 text-muted">
	                        <ul class="pagination justify-content-center mb-0">
	                          <li class="page-item"><a class="page-link" href="#">Previous</a></li>
	                          <li class="page-item"><a class="page-link" href="#">1</a></li>
	                          <li class="page-item"><a class="page-link" href="#">2</a></li>
	                          <li class="page-item active"><a class="page-link" href="#">3</a></li>
	                          <li class="page-item"><a class="page-link" href="#">4</a></li>
	                          <li class="page-item"><a class="page-link" href="#">5</a></li>
	                          <li class="page-item"><a class="page-link" href="#">Next</a></li>
	                        </ul>
	                      </nav>
	                </div>
	              </div>
              
<!--               <div class="col-sm-12 col-md-3 my-4"> -->
<!-- 		        <div class="dataTables_info" id="dataTable-1_btn" > -->
<!-- 		          <button type="button" class="btn btn-my">등록</a></button> -->
<!-- 		        </div> -->
<!--       		  </div> -->
            </div> <!-- simple table -->

           

          </div> <!-- end section -->
        </div> <!-- .col-12 -->
      </div> <!-- .row -->
    </div> <!-- .container-fluid -->

    
      
    </div>

  </main> <!-- main -->
</div>

<!-- JavaScript 코드 추가 -->
<script>
    //  버튼 클릭 시 모달 창 보이기
    $(document).ready(function () {
        $(".btn-primary").click(function () {
            $("#verticalModal").modal("show");
        });
    });
</script>