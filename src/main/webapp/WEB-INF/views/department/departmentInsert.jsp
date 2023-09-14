<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<main role="main" class="main-content" style="width: 85%; margin: auto;">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12 col-lg-10 col-xl-8">
                <h2 class="h3 mb-4 page-title">학과 등록</h2>
                <hr class="my-4">
                <div class="my-4">
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="colCode">단과대학</label> 
                                <select id="colCode" class="form-control">
                                    <option>단과대 선택</option>
                                    <c:forEach var="colCode" items="${colList}">
                                        <option value="${colCode.codeId}">${colCode.codeNm}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="depNm">학과명</label> 
                                <input type="text" id="depNm" class="form-control" value="${departmentVO.depNm}" placeholder="ex) 경제학과">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="depCode">학과코드</label> 
                                <input type="text" id="depCode" class="form-control" value="${departmentVO.depCode}" placeholder="ex) S1">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="depDc">학과 소개</label> 
                                <textarea id="depDc" class="form-control" placeholder="학과  소개를 기입하여 주세요" style="height: 150px;"></textarea>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="depCap">최대 정원</label>
                                    <input type="number" id="depCap" class="form-control" value="${departmentVO.depCap}" placeholder="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="depTel">연락처</label>
                                    <input type="text" id="depTel" class="form-control" value="${departmentVO.depTel}" placeholder="ex) 0421231234">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="provost">학과장</label>
                                    <select id="provost" class="form-control">
                                        <option>학과장 선택</option>
                                        <c:forEach var="provost" items="${provostList}">
                                            <option value="${provost.memNo}">${provost.memNm}</option>
                                        </c:forEach>
                                    </select>
                                </div>
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
                        <hr class="my-4">
                        <div class="text-center">
                            <button type="button" id="regBtn" class="btn btn-outline-secondary bg-my text-white" style="font-size: 1.0rem; width: 200px;">등록</button>
                        </div>
                    </form>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.col-12 -->
        </div>
        <!-- .row -->
    </div>
</main>
<!-- main -->
</div>
<!-- .wrapper -->
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
<script type="text/javascript" src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script>
    var textarea = document.getElementById("departmentIntro");
    textarea.value = "${departmentVO.depDc}";
</script>
<script>
//학과 등록
$("#regBtn").on("click", () => {
    let departmentVO = {
        colCode: $("#colCode").val(),
        depNm: $("#depNm").val(),
        depCode: $("#depCode").val(), 
        depDc: $("#depDc").val(),
        depCap: $("#depCap").val(),
        depTel: $("#depTel").val(),
        depDrhf: $("#provost").val(),
        memNo: $("#TA").val()
    };
    //DEP_CODE, COL_CODE, DEP_NM, DEP_DC, DEP_DRHF, DEP_CAP, DEP_TEL, DEP_DEL_YN, MEM_NO
    //{"colCode":"ART","depNm":"미용학과","depCode":"A2","depDc":"asdf","depCap":"2","depTel":"0421231234","provost":"201701P001","TA":"201803E008"}
    console.log("체킁:",JSON.stringify(departmentVO)); // 항상 보내는 값을 먼저 눈으로 확인!

    $.ajax({
        type: "post",
        url: "/admin/department",
        data: JSON.stringify(departmentVO),
        contentType: "application/json;charset=utf-8",
        dataType: "text",
        beforeSend: function (xhr) {
            xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
        },
        success: function (result) {
            console.log("result: " + result);
            if (result == "success") {
                alert("학과 등록이 정상적으로 완료되었습니다.");
                window.location.href = "/admin/departmentList"; // 등록 후 목록 페이지로 이동
            } else {
                alert("학과 등록 실패");
            }
        },
        error: function (xhr, status, error) {
            console.log("code:" + xhr.status);
            console.log("message: " + xhr.responseText);
            console.log("error:" + error);
            alert("학과 등록 중 오류가 발생했습니다.");
        }
    });
});
</script>
