<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
$(document).ready(function () {
    $("#register").click(function () {
        swal({
            position: 'top-end',
            icon: 'success',
            title: '등록되었습니다',
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
          <h2 class="mb-2 page-title text-center">시험결과등록</h2>

          

          


          <!-- Small table -->
          <div class="row my-3">
            <div class="col-md-12">
              <div class="card shadow">
                <div class="card-body">
                  <!-- table -->
                  <table class="table datatables text-center" id="dataTable-1">
                    <thead class="bg-secondary-light">
                    <tr>
                      <th>학과</th>
                      <th>학번</th>
                      <th>학생명</th>
                      <th>점수</th>
                      <th>상세보기</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td>
                        <button class="btn btn-my" type="button" data-toggle="modal" data-target="#verticalModal">상세보기</button>
                      </td>
                    </tr>
                   

                    </tbody>
                  </table>
                </div>
              </div>
              
              <!-- 모달 -->
            <div class="modal fade show" id="verticalModal" tabindex="-1" role="dialog" aria-labelledby="verticalModalTitle" style="padding-right: 19px;" aria-modal="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h4 class="modal-title" id="verticalModalTitle">시험이름</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">×</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="form-group row">
                      <label for="input_m_1" class="col-sm-3 col-form-label">학과</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="input_m_1" placeholder="학과">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="input_m_1" class="col-sm-3 col-form-label">학번</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="input_m_1" placeholder="학번">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="input_m_1" class="col-sm-3 col-form-label">학생명</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="input_m_1" placeholder="학생명">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="input_m_1" class="col-sm-3 col-form-label">점수</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="input_m_1" placeholder="점수">
                      </div>
                    </div>
                  </div>
                  <div class="dataTables_info" id="dataTable-1_btn" style="text-align: center;">
		          	<button type="button" class="btn btn-my" id="register">등록</button>
		          </div>
                </div>
              </div>
            </div><!-- 모달 -->
              
              
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
    // "수강계획서 보기" 버튼 클릭 시 모달 창 보이기
    $(document).ready(function () {
        $(".btn-primary").click(function () {
            $("#verticalModal").modal("show");
        });
    });
</script>