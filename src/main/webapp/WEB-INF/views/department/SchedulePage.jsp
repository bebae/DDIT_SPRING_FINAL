<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>

<style>
    /* FullCalendar의 이벤트 요소에 대한 스타일을 지정합니다. */
    .fc-event {
        background-color: #007bff; /* 일정 배경색 */
        color: #fff; /* 글꼴 색상 */
    }
    /* 일요일 날짜 빨간색 */
    .fc-day-sun a {
        color: red;
        text-decoration: none;
    }
    /* 토요일 날짜 파란색 */
    .fc-day-sat a {
        color: blue;
        text-decoration: none;
    }
    th > .fc-scrollgrid-sync-inner {
        background-color: rgb(255 154 9);
        color: #000000;
        padding: 0.5em 0;
    }

    /* 이벤트 호버 시 스타일 변경 */
    .fc-event:hover {
        background-color: #0056b3; /* 호버 시 배경색 변경 */
    }
    /* 사용자 지정 이벤트 클래스에 대한 스타일을 지정합니다. */
    .my-custom-event {
        background-color: green; /* 일정 배경색 */
        color: #fff; /* 글꼴 색상 */
    }

    .table thead th, .table tbody tr th {
        color: var(--white-color);
        white-space:nowrap;
    }



    .fc-button.fc-button-primary {
        background-color: #ffdd00;
        color: #000000;
        border-radius: 0.5em;
        border: 1px solid transparent;
    }
    .fc .fc-button-primary:disabled {
        background-color: #000000;
    }

    .fc .fc-button-primary:not(:disabled).fc-button-active, .fc .fc-button-primary:not(:disabled):active,
    .fc-button.fc-button-primary:hover{
        background-color: #f33c3e;
        color: var(--white-color);
        border: 1px solid transparent;
    }

    th > .fc-scrollgrid-sync-inner {
        border-radius: 10px;
    }

</style>

<div class="wrapper w-75 mt-4">
  <main role="main" class="main-content w-75 mx-auto p-1">
    <!-- ////////// 캘린더를 감싸는 div 시작 ////////// -->
    <div id='calendar' class="w-100 m-auto"></div>
    <!-- ////////// 캘린더를 감싸는 div 끝 ////////// -->

    <div class="row mt-4">
      <div class="col-6">
        <button type="button" class="btn btn-warning fc-button fc-button-primary ml-1" id="addEventBtn">일정 추가</button>
      </div>
      <div class="form-group col-2">
        <label for="inputSelete1" class="d-none"></label>
        <select id="inputSelete1" class="form-control px-2">
          <option selected>일정분류</option>
          <option>학사관리</option>
        </select>
      </div>
      <div class="input-group mb-3 col-4">
        <input type="text" class="form-control" placeholder="Button addons" aria-label="Recipient's username" aria-describedby="button-addon2">
        <div class="input-group-append">
          <button class="btn btn-warning fc-button fc-button-primary" type="button" id="button-addon2">검색</button>
        </div>
      </div>
    </div>

    <div id="loading-spinner" class="text-center d-none">
      <div id="" class="spinner-grow mr-3 text-danger" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>
    <!-- table -->
    <div id="table-content">
    </div>



    <!-- 모달 대화상자 추가 -->
    <div class="modal fade" id="calendarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

          <!-- 일정 입력 폼 -->
          <form id="sch_insert_form">

            <div class="modal-header">
              <h5 class="modal-title " id="exampleModalLabel">일정 추가</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <input id="csrf" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
              <div class="form-group">
                <label for="calendar_content">일정 내용</label>
                <input type="text" class="form-control" id="calendar_content" name="calendar_content">
              </div>
              <div class="form-group">
                <label for="calendar_start_date">시작 날짜</label>
                <input type="date" class="form-control" id="calendar_start_date" name="calendar_start_date">
              </div>
              <div class="form-group">
                <label for="calendar_end_date">종료 날짜</label>
                <input type="date" class="form-control" id="calendar_end_date" name="calendar_end_date">
              </div>
              <div class="form-group">
                <label for="calendar_class">일정 분류</label>
                <select id="calendar_class" class="form-control">
                  <option value="11" selected>학기 관련</option>
                  <option value="12">수업 관련</option>
                  <option value="13">휴일 관련</option>
                  <option value="14">성적 및 학위 관련</option>
                  <option value="15">기타</option>
                </select>
              </div>
              <div class="form-group">
                <label for="calendar_target">대상</label>
                <select id="calendar_target" class="form-control">
                  <option value="1" selected>학생</option>
                  <option value="2">교수</option>
                  <option value="3">교직원</option>
                  <option value="4">학생, 교수</option>
                  <option value="5">교수, 교직원</option>
                  <option value="6">교직원, 학생</option>
                  <option value="7">학생, 교수, 교직원</option>
                </select>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn mb-2 btn-info" id="auto-input">자동입력</button>
              <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
              <button type="submit" class="btn btn-primary" id="addCalendar">추가</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- 모달 끝 -->

    <!-- 모달 대화상자 수정 -->
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel"
         aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <!-- 일정 입력 폼 -->
          <form id="sch_update_form">

            <div class="modal-header">
              <h5 class="modal-title " id="updateModalLabel">일정 수정</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
              <div class="form-group">
                <label for="update_content">일정 내용</label>
                <input type="text" class="form-control" id="update_content" name="calendar_content">
              </div>
              <div class="form-group">
                <label for="update_start_date">시작 날짜</label>
                <input type="date" class="form-control" id="update_start_date" name="calendar_start_date">
              </div>
              <div class="form-group">
                <label for="update_end_date">종료 날짜</label>
                <input type="date" class="form-control" id="update_end_date" name="calendar_end_date">
              </div>
              <div class="form-group">
                <label for="update_class">일정 분류</label>
                <select id="update_class" class="form-control">
                  <option value="11">학기 관련</option>
                  <option value="12">수업 관련</option>
                  <option value="13">휴일 관련</option>
                  <option value="14">성적 및 학위 관련</option>
                  <option value="15">기타</option>
                </select>
              </div>
              <div class="form-group">
                <label for="update_target">대상</label>
                <select id="update_target" class="form-control">
                  <option value="1">학생</option>
                  <option value="2">교수</option>
                  <option value="3">교직원</option>
                  <option value="4">학생, 교수</option>
                  <option value="5">교수, 교직원</option>
                  <option value="6">교직원, 학생</option>
                  <option value="7">학생, 교수, 교직원</option>
                </select>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn mb-2 btn-info" id="auto-update">자동입력</button>
              <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
              <button type="button" class="btn btn-primary" id="updateCalendar">수정</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- 모달 끝 -->

  </main>
</div>


<script>


    $(document).ready(function () {
        // 시큐리티 CSRF 토큰 값을 가져옵니다.
        const csrf = $("#csrf").val();



        function updateCalendar(data) {
            // JSON 데이터에서 필요한 값을 추출
            let schTtl = data.schTtl;
            let schSt = data.schSt;
            let schEt = data.schEt;
            let codeSchSe = data.codeSchSe;
            let codeSchMem = data.codeSchMem;

            // 각 input 태그에 값을 설정
            $("#update_content").val(schTtl);
            $("#update_start_date").val(schSt);
            $("#update_end_date").val(schEt);
            // select 태그에서 codeSchSe와 codeSchMem 값을 선택
            $("#update_class option").filter(function() {
                return $(this).text() === codeSchSe;
            }).prop("selected", true);

            $("#update_target option").filter(function() {
                return $(this).text() === codeSchMem;
            }).prop("selected", true);

            // 모달을 열기
            $("#updateModal").modal("show");
        }

        // Form submit 설정
        const schInsertForm = document.querySelector("#sch_insert_form");
        schInsertForm.addEventListener("submit", ajaxInsert);

        function ajaxInsert() {
            event.preventDefault(); // 기본 동작 취소

            let content = $("#calendar_content").val();
            let startDate = $("#calendar_start_date").val();
            let endDate = $("#calendar_end_date").val();
            let calendarClass = $("#calendar_class").val();
            let target = $("#calendar_target").val();

            console.log(content, startDate, endDate, calendarClass, target);

            // Ajax 요청을 보냅니다.
            $.ajax({
                type: "POST",
                url: "/admin/schedule",
                headers: {
                    "X-CSRF-TOKEN": csrf // CSRF 토큰을 헤더에 추가
                },
                data: {
                    memNo: '201803E002',
                    schTtl: startDate,
                    schSt: startDate,
                    schEt: endDate,
                    codeSchSe: calendarClass,
                    codeSchMem: target
                },
                dataType: "text",
                success: function(data) {
                    console.log(data)
                },
                error: function() {
                    console.log('에러 발생');
                    // 에러 발생 시 수행할 작업을 여기에 추가할 수 있습니다.
                }
            });
        }

        // Insert 자동 입력
        $('#auto-input').click(function () {
            let calendarContent = "2학기 수강신청 기간"; // "휴학" 라디오 버튼의 값
            let startDate = "2023-09-01";
            let endDate = "2023-09-21";
            let calendarClass = "11";
            let calendarTarget = "7";

            $("#calendar_content").val(calendarContent);
            $("#calendar_start_date").val(startDate);
            $("#calendar_end_date").val(endDate);
            $("#calendar_class").val(calendarClass);
            $("#calendar_target").val(calendarTarget);
        });

        // 초기 리스트 로딩
        reloadList();

        // 캘린더 헤더 옵션
        const headerToolbar = {
            left: 'prev,next today',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek',
        }

        // 캘린더 옵션
        let calendarOptions = {
            height: '650px',
            expandRows: true,
            timeZone: 'UTC',
            slotMinTime: '09:00',
            slotMaxTime: '18:00',
            headerToolbar: headerToolbar,
            initialView: 'dayGridMonth',
            locale: 'kr',
            selectable: true,
            selectMirror: true,
            navLinks: true,
            dayMaxEventRows: true,
            nowIndicator: true,
            displayEventTime: false,
            editable: false, // 초기에는 수정 불가능
            events: [], // 일정 데이터
            eventClick: function(info) {
                let schCode = info.event._def.publicId;
                // console.log(id);
                $.ajax({
                    type: "GET",
                    url: "/admin/schedule/" + schCode,
                    dataType: "json",
                    success: function(data) {
                      console.log(data);
                        updateCalendar(data);
                    },
                    error: function() {
                      console.log('리스트 로딩 중 에러 발생');
                    }
                });
            }
        };

        // 캘린더 초기화
        let calendarEl = document.getElementById('calendar');
        let calendar = new FullCalendar.Calendar(calendarEl,  calendarOptions);
        calendar.render();


        // 리스트를 다시 로드하는 비동기 함수
        function reloadList() {
            $.ajax({
                type: "GET",
                url: "/admin/scheduleList",
                dataType: "json",
                success: function(data) {

                    // 받은 JSON 데이터를 사용하여 HTML 생성 및 테이블 업데이트
                    let html = "";
                    html += `
                    <table class="table datatables text-center" id="dataTable-1">
                      <thead class="bg-secondary-light">
                          <th>기간</th>
                          <th>일정명</th>
                          <th>등록자</th>
                          <th></th>
                      </thead>
                    <tbody>
                    `;

                    // events 배열을 초기화
                    calendarOptions.events = [];

                    $.each(data, function(index, item) {
                        html +=
                            "<tr>"
                            + "<td>" + item.schSt + " ~ " + item.schEt + "</td>"
                            + "<td>" + item.schTtl + "</td>"
                            + "<td>" + item.memNm + "</td>"
                            + "<td><button class='btn btn-my'>상세</button></td>"
                            + "</tr>"
                        ;

                        // events 배열에 이벤트 추가
                        calendarOptions.events.push({
                            id: item.schCode
                            , title: item.schTtl
                            , start: item.schSt
                            , end: item.schEt
                        });
                    });
                    html += "</tbody></table>";

                    // 로딩 스피너 숨김
                    $("#loading-spinner").hide();
                    // 리스트 컨테이너 업데이트
                    $("#table-content").html(html);

                    // 캘린더를 수정 불가능하도록 변경
                    calendar.setOption('editable', false);
                },
                error: function() {
                    console.log('리스트 로딩 중 에러 발생');
                    // 로딩 스피너 숨김
                    $("#loading-spinner").hide();
                }
            });
        }

        // 모달의 추가 버튼 클릭 시
        $("#addEventBtn").on("click", function () {
            // 입력 필드 초기화
            $("#calendar_content").val("");
            $("#calendar_start_date").val("");
            $("#calendar_end_date").val("");
            $("#calendar_class").val(11);
            $("#calendar_target").val(1);
            $("#calendarModal").modal("show");
        });
    });



</script>


