<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
          <h2 class="mb-2 page-title text-center">수강신청</h2>

          <div class="card-body">
            <form>

              <div class="form-group row">
                <div class="form-group col-6">
                  <div class="form-group row text-center">
                    <label for="input1" class="col-sm-4 col-form-label">현재 신청 학점</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" id="input1" readonly>
                    </div>
                  </div>

                  <div class="form-group row text-center">
                    <label for="input2" class="col-sm-4 col-form-label">재학 학기</label>
                    <div class="col-sm-6">
                      <input class="form-control" id="input2" type="text" readonly>
                    </div>
                  </div>
                </div>

                <div class="form-group col-6">
                  <div class="form-group row text-center">
                    <label for="input3" class="col-sm-4 col-form-label">신청 가능 학점</label>
                    <div class="col-sm-6">
                      <input class="form-control" id="input3" type="text" readonly>
                    </div>
                  </div>

                  <div class="form-group row text-center">
                    <label for="input4" class="col-sm-4 col-form-label">학과</label>
                    <div class="col-sm-6">
                      <input class="form-control" id="input4" type="text" readonly>
                    </div>
                  </div>
                </div>
              </div>

            </form>
          </div>

          <h4 class="h4">강의 리스트</h4>
          <div class="row">
            <div class="form-group col-md-2">
              <label for="inputState1"></label>
              <select id="inputState1" class="form-control">
                <option selected="">단과대학</option>
                <option>...</option>
              </select>
            </div>
            <div class="form-group col-md-2">
              <label for="inputState2"></label>
              <select id="inputState2" class="form-control">
                <option selected="">학과</option>
                <option>...</option>
              </select>
            </div>
            <div class="form-group col-md-2">
              <label for="inputState3"></label>
              <select id="inputState3" class="form-control">
                <option selected="">학년</option>
                <option>...</option>
              </select>
            </div>
            <div class="form-group col-md-2">
              <label for="inputState4"></label>
              <select id="inputState4" class="form-control">
                <option selected="">이수구분</option>
                <option>...</option>
              </select>
            </div>
            <div class="form-group col-md-3">
              <label for="inputState5"></label>
              <input class="form-control" id="inputState5" type="text" placeholder="과목명">
            </div>
            <div class="form-group col-md-1">
              <button type="button" class="btn btn-my">검색</button>
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
                      <th>No.</th>
                      <th>이수구분</th>
                      <th>개설학과</th>
                      <th>학년</th>
                      <th>과목명</th>
                      <th>학점</th>
                      <th>최대인원</th>
                      <th>교수명</th>
                      <th>수업계획서</th>
                      <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>368</td>
                      <td>전공선택</td>
                      <td>(478) 446-9234</td>
                      <td>2</td>
                      <td>Borland</td>
                      <td>3</td>
                      <td>45</td>
                      <td>Jun 8, 2019</td>
                      <td>
                        <button class="btn btn-sm btn-primary" type="button" data-toggle="modal" data-target="#verticalModal">수업계획서 보기</button>
                      </td>
                      <td>
                        <button class="btn btn-sm btn-my">신청</button>
                      </td>
                    </tr>
                    <tr>
                      <td>323</td>
                      <td>전공필수</td>
                      <td>(671) 969-1704</td>
                      <td>1 ~ 2</td>
                      <td>Macromedia</td>
                      <td>3</td>
                      <td>30</td>
                      <td>May 8, 2020</td>
                      <td>
                        <button class="btn btn-sm btn-primary" type="button" data-toggle="modal" data-target="#verticalModal">수업계획서 보기</button>
                      </td>
                      <td>
                        <button class="btn btn-sm btn-my">신청</button>
                      </td>
                    </tr>
                    <tr>
                      <td>371</td>
                      <td>전공필수</td>
                      <td>(803) 792-2559</td>
                      <td>3 ~ 4</td>
                      <td>Sibelius</td>
                      <td>3</td>
                      <td>30</td>
                      <td>Apr 2, 2021</td>
                      <td>
                        <button class="btn btn-sm btn-primary" type="button" data-toggle="modal" data-target="#verticalModal">수업계획서 보기</button>
                      </td>
                      <td>
                        <button class="btn btn-sm btn-my">신청</button>
                      </td>
                    </tr>
                    <tr>
                      <td>302</td>
                      <td>교양필수</td>
                      <td>(216) 946-1119</td>
                      <td>1 ~ 4</td>
                      <td>Microsoft</td>
                      <td>1</td>
                      <td>60</td>
                      <td>Dec 4, 2019</td>
                      <td>
                        <button class="btn btn-sm btn-primary" type="button" data-toggle="modal" data-target="#verticalModal">수업계획서 보기</button>
                      </td>
                      <td>
                        <button class="btn btn-sm btn-my">신청</button>
                      </td>
                    </tr>
                    <tr>
                      <td>443</td>
                      <td>교양선택</td>
                      <td>(486) 309-3564</td>
                      <td>3</td>
                      <td>Yahoo</td>
                      <td>3</td>
                      <td>30</td>
                      <td>Dec 27, 2019</td>
                      <td>
                        <button class="btn btn-sm btn-primary" type="button" data-toggle="modal" data-target="#verticalModal">수업계획서 보기</button>
                      </td>
                      <td>
                        <button class="btn btn-sm btn-my">신청</button>
                      </td>
                    </tr>

                    </tbody>
                  </table>
                </div>
              </div>
            </div> <!-- simple table -->

            <!-- 모달 -->
            <div class="modal fade show" id="verticalModal" tabindex="-1" role="dialog" aria-labelledby="verticalModalTitle" style="padding-right: 19px;" aria-modal="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h4 class="modal-title" id="verticalModalTitle">수강 계획서</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">×</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="form-group row">
                      <label for="input_m_1" class="col-sm-3 col-form-label">제목1</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="input_m_1" placeholder="제목1">
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn mb-2 btn-primary" data-dismiss="modal">닫기</button>
                  </div>
                </div>
              </div>
            </div><!-- 모달 -->

          </div> <!-- end section -->
        </div> <!-- .col-12 -->
      </div> <!-- .row -->
    </div> <!-- .container-fluid -->

    <div class="row">
      <div class="col-sm-12 col-md-3 my-4">
        <div class="dataTables_info" id="dataTable-1_info" role="status" aria-live="polite">Showing 1 to 16 of 63 entries</div>
      </div>
      <div class="col-sm-12 col-md-6">
        <div class="dataTables_paginate paging_simple_numbers" id="dataTable-1_paginate">
          <ul class="pagination">
            <li class="paginate_button page-item previous disabled" id="dataTable-1_previous">
              <a href="#" aria-controls="dataTable-1" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
            </li>
            <li class="paginate_button page-item active">
              <a href="#" aria-controls="dataTable-1" data-dt-idx="1" tabindex="0" class="page-link">1</a>
            </li>
            <li class="paginate_button page-item ">
              <a href="#" aria-controls="dataTable-1" data-dt-idx="2" tabindex="0" class="page-link">2</a>
            </li>
            <li class="paginate_button page-item ">
              <a href="#" aria-controls="dataTable-1" data-dt-idx="3" tabindex="0" class="page-link">3</a>
            </li>
            <li class="paginate_button page-item ">
              <a href="#" aria-controls="dataTable-1" data-dt-idx="4" tabindex="0" class="page-link">4</a>
            </li>
            <li class="paginate_button page-item next" id="dataTable-1_next">
              <a href="#" aria-controls="dataTable-1" data-dt-idx="5" tabindex="0" class="page-link">Next</a>
            </li>
          </ul>
        </div>
      </div>
      <div class="col-sm-12 col-md-3 my-4">
        <div class="dataTables_info" id="dataTable-1_btn" >
          <button type="button" class="btn btn-my">홈으로 돌아가기</button>
        </div>
      </div>
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