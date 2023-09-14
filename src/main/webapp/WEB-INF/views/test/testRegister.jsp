<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    <style>
      .table thead th {
        color: var(--white-color);
        white-space: nowrap;
      }

      .row {
        align-items: flex-end;
      }
    </style>

    <div class="wrapper">
<%--     <p>예린${testRegiNoticeList}</p> --%>
      <main role="main" class="main-content mx-auto">
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12">
              <h2 class="mb-2 page-title text-center">시험</h2>
			  <p class="text-muted" style="text-align:center;">강의명</p>

              <!-- Small table -->
              <div class="row my-3">
                <div class="col-md-12">
                  <div class="card shadow">
                    <div class="card-body">

                      <!-- table -->
                      <div style="text-align:right;">
                        <a href="/prof/testDetail" class="btn btn-my">등록</a>
                      </div>
                      
                      <table class="table datatables text-center" id="dataTable-1">
                        <tbody>
                          <thead class="bg-secondary-light">

                              <tr>
                                <th>No</th>
                                <th>제목</th>
                                <th>시험시작</th>
                                <th>시험종료</th>
                                <th>등록일</th>
                                <th>평가목록</th>
                                <th></th>
                                <th></th>
                                <th></th>
                              </tr>
                          </thead>

                            <c:forEach items="${testRegiNoticeList}" var="TestVO">
                          <tr>
                            <td>
                              <p class="mb-0 text-muted">
                                <strong>${TestVO.testCode}</strong>
                              </p>
                            </td>
                            <td>
                              <p class="mb-0 text-muted">
                                <strong>${TestVO.testNm}</strong>
                              </p>
                            </td>
                            <td>
                              <p class="mb-0 text-muted">
                                <strong>${TestVO.testSt}</strong>
                              </p>
                            </td>
                            <td>
                              <p class="mb-0 text-muted">
                                <strong>${TestVO.testEt}</strong>
                              </p>
                            </td>
                            <td>
                              <p class="mb-0 text-muted">
                                <strong><fmt:formatDate value="${TestVO.testDe}" pattern="yyyy-MM-dd"/></strong>
                                
                              </p>
                            </td>
                            <td>
                              <a href="/prof/testStuDetail" class="btn btn-my">상세보기</a>
                            </td>
                            <td>
                             	<button class="btn btn-my" onclick="openTestDetail('${TestVO.testCode}')">수정</button>
                            </td>
                            <td>
                              <button class="btn btn-my" id="delete" type="button" data-toggle="modal"
                                data-target="#verticalModal">삭제</button>
                            </td>
                          </tr>

                          </c:forEach>
                        </tbody>
                      </table>
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


      </main> <!-- main -->
    </div>





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
      
      function openTestDetail(testCode) {
    	  // 수정 페이지로 이동
    	  location.href = "/prof/testRegisterModify?testCode="+testCode;
      }
    </script>

    <!-- JavaScript 코드 추가 -->
    <script>
      //  버튼 클릭 시 모달 창 보이기
      $(document).ready(function () {
        $(".btn-primary").click(function () {
          $("#verticalModal").modal("show");
        });
      });
    </script>