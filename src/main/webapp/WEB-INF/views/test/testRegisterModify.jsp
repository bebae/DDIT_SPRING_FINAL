<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script>

    </script>


    <!doctype html>
    <html lang="en">
    <main role="main" class="main-content" style="width: 70%; margin: auto;">
      <div class="container-fluid">
        <div class="row justify-content-center">
          <div class="col-12">
            <h2 class="page-title">시험 수정</h2>
            <p class="text-muted"></p>
            <div class="card-deck">
              <div class="card shadow mb-4">
                <div class="card-body">
                  <form id="yerinForm">
                    <sec:csrfInput />
                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="inputEmail4">시험일자</label>
                        <input type="date" class="form-control" id="testDe" name="testDe" value="${testVO.testDe}">
                      </div>
                      <div class="form-group col-md-6">
                        <label for="inputPassword4">제한시간</label>
                        <input type="text" class="form-control" id="testLimit" name="testLimit" value="${testVO.testLimit}">
                      </div>
                      <div class="form-group col-md-6">
                        <label for="inputEmail4">시작시간</label>
                        <input type="time" class="form-control" id="testSt" name="testSt" value="${testVO.testSt}">
                      </div>
                      <div class="form-group col-md-6">
                        <label for="inputPassword4">종료시간</label>
                        <input type="time" class="form-control" id="testEt" name="testEt" value="${testVO.testEt}">
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="testNm">시험이름</label>
                      <input type="text" class="form-control" id="testNm" name="testNm" value="${testVO.testNm}">
                    </div><br />
					<p>${testVO}</p>
                    <button type="button" class="btn btn-my" id="plus" style="float: right;">+</button>
                    <br />

                    <div id="problems">
                      <div class="form-group" id="problem">
                        <label for="steQue" id="testCnt" >시험문제 1</label>
                        <input type="text" class="form-control" id="steQue" name="steQue"
                          value=""><br />

                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="gridRadios" id="steType" value="option1">
                          <label class="form-check-label" for="gridRadios1">1</label>
                          <input type="text" class="form-control" id="steSelect" name="steSelect"
                            value="">
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="gridRadios" id="steType" value="option2">
                          <label class="form-check-label" for="gridRadios1">2</label>
                          <input type="text" class="form-control" id="steSelect" name="steSelect"
                            value="">
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="gridRadios" id="steType" value="option3">
                          <label class="form-check-label" for="gridRadios1">3</label>
                          <input type="text" class="form-control" id="steSelect" name="steSelect"
                            value="">
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="gridRadios" id="steType" value="option4">
                          <label class="form-check-label" for="gridRadios1">4</label>
                          <input type="text" class="form-control" id="steSelect" name="steSelect"
                            value="">
                        </div>
                        <hr/>
                      </div>
                      
                    </div>
                    <button type="submit" class="btn btn-my" id="save">저장</button>
                  </form>
                </div>
              </div>


    </main> <!-- main -->
    </div> <!-- .wrapper -->
    <script src="/resources/js/jquery.min.js"></script>
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
	   
    
    
      const header = '${_csrf.headerName}';
      const token = '${_csrf.token}';

      // 문제추가 
      const testExamDivPar = document.querySelector("#problems");
      const testExamDiv = document.querySelector("#problem");

      
      let problemCount = 1; // 초기 문제 개수
      $("#plus").click(function () {
        // 새로운 문제 추가
        problemCount++; // 문제 개수 증가
        let newTestExamDiv = testExamDiv.cloneNode(true);  // 부모만 복사

        let ckBoxes =newTestExamDiv.querySelectorAll("[type=radio]");
        let labels = newTestExamDiv.querySelectorAll(".form-check-label");
        for(let i=0; i<ckBoxes.length; i++){
          console.log("메롱!",ckBoxes[i]);
          ckBoxes[i].setAttribute("name",`option\${problemCount}`);
          labels[i].setAttribute("for",`option\${problemCount}`);
        }

        newTestExamDiv.querySelector("#testCnt").innerHTML = `시험 문제  \${problemCount}`;

        testExamDivPar.appendChild(newTestExamDiv);
      });



      $("#yerinForm").on("submit", () => {
        event.preventDefault();  // built-in event 막기

        let testExamList = [];

        let yerinProDivs = document.querySelectorAll("#problem");

        for(let i=0; i<yerinProDivs.length; i++){
            console.log(yerinProDivs[i].querySelectorAll("[type=radio]:checked")[0].value);
            let testExamVO = {
              steNo: (i+1), 
              testCode: 999,
              steType: 200,
              steQue: yerinProDivs[i].querySelector("#steQue").value,	
              steRightAnswer: yerinProDivs[i].querySelectorAll("[type=radio]:checked")[0].value,
              testChoiceList: []
            }

            let options = yerinProDivs[i].querySelectorAll("#steSelect");
            for(let i=0; i<options.length; i++){
              let testChoiceVO = {
                testCode: 999,
	              steNo: testExamVO.steNo,
	              steSelectNo: (i+1),
	              steSelect: options[i].value
              }
              testExamVO.testChoiceList.push(testChoiceVO);
            }
            testExamList.push(testExamVO);  
        }
          
        let testVO = {
          testDe: $("#testDe").val(),
          testLimit: $("#testLimit").val(),
          testSt: $("#testSt").val(),
          testEt: $("#testEt").val(),
          testNm: $("#testNm").val(),
          testExamList: testExamList
        }

        console.log("testVO : ", testVO);
        // console.log("testExamVO : ", testExamVO);


       
        
        
        
        // 수정하기
        
        $upBtn.on("click",()=>{
            let testVO = {
            	testCode: $testCode.val(),
            	testNm: $testNm.val(),
            	testDe: $testDe.val(),
            	testSt: $testSt.val(),
            	testEt: $testEt.val(),
            	testLimit: $testLimit.val(),
            	testSt: $testSt.val()
            }

            $.ajax({
                type:"put",
                url:"/prof/testRegisterModify",
                data: JSON.stringify(testVO),
                contentType:"application/json;charset=utf-8",
                dataType:"text",
                success:function(rslt){
                    console.log(rslt);
                    if (rslt == 1) {
                        //alert("성공");
                        swal({
                          position: 'top-end',
                          icon: 'success',
                          title: '수정되었습니다',
                          showConfirmButton: false,
                          timer: 2000
                        });

                      }
                },
                error: function (xhr, status, error) {
                    console.log("code: " + xhr.status)
                    console.log("message: " + xhr.responseText)
                    console.log("error: " + error);
                }
            })
        });

      });
      
    </script>
    </body>

    </html>