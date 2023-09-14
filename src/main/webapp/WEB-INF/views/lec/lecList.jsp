<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.wrapper {
	border: 1px solid black;
}

.info {
	display: inline-block;
	border: 1px solid black;
}
/* 모달 css */
.modal {
	display: none;
	position: fixed;
	top: 10%;
	left: 37%;
	z-index: 1;
	justify-content: center;
	align-items: center;
}

.modal-content {
	width: 700px;
	height: 800px;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.75);
}

.close {
	position: absolute;
	top: 10px;
	right: 10px;
	font-size: 20px;
	cursor: pointer;
}

#nav-link {rgb (182, 26, 63)
	
}
/* 모달 css */
div {
	border: 1px solid black;
}

/* 시간표 설정 */
#our_table td {
	width: 50px;
	height: 50px;
	text-align: center;
	vertical-align: middle;
	background-color: #ccc;
}

#our_table td.highlighted {
	background-color: #999;
}
</style>
<script>
	//시간표 드래그 이벤트/////////////////////////////////////////////////////////////////////////////

$(function () {
      var isMouseDown = false;
      $("#our_table td")
        .mousedown(function () {
          isMouseDown = true;
          $(this).toggleClass("highlighted");
          return false; // prevent text selection
        })
        .mouseover(function () {
          if (isMouseDown) {
            $(this).toggleClass("highlighted");
          }
        })
        .bind("selectstart", function () {
          return false; // prevent text selection in IE
        });

      $(document)
        .mouseup(function () {
          isMouseDown = false;
        });
    });
$(document).ready(function(){
	$('#timeTableBtn').on('click', function() {
	
		console.log("짜짠");
		
		$('#textArea4time').empty();
		
		timeTable = $('#our_table');
		
		str = '';
		
		for(j = 0; j <= 4; j++) {
			for(i = 1; i <= 9; i++) {
				cellObj = timeTable.find("tr").eq(i).find("td").eq(j);
				
				if(cellObj.hasClass("highlighted")) {
					
					if(j == 0) {
						str += "월요일 " + i + "교시\n";
					}else if(j == 1) {
						str += "화요일 " + i + "교시\n";
					}else if(j == 2) {
						str += "수요일 " + i + "교시\n";
					}else if(j == 3) {
						str += "목요일 " + i + "교시\n";
					}else if(j == 4) {
						str += "금요일 " + i + "교시\n";
					}
				}
			}
		}
		
		$('#textArea4time').append(str);
	});
})

</script>
</head>
<body>
	<!-- 모달모달모달모달모달모달모달모달모달모달모달모달모달모달모달모달모달모달모달모달모달모달모달모달모달모달창 -->
	<div id="myModal" class="modal">
		<div class="modal-content">
			<span class="close" onclick="closeModal()">&times;</span>
			<!-- 모달내용 -->
			<div class="card-body">
				<h5>강의계획서 작성</h5>
				<ul class="nav nav-pills nav-fill mb-3" id="pills-tab"
					role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="pills-home-tab" data-toggle="pill" href="#pills-home"
						role="tab" aria-controls="pills-home" aria-selected="true">기본
							사항 작성</a></li>
					<li class="nav-item"><a class="nav-link"
						id="pills-contact-tab" data-toggle="pill" href="#pills-contact"
						role="tab" aria-controls="pills-contact" aria-selected="false">시간표
							선택</a></li>
				</ul>
				<div class="tab-content mb-1" id="pills-tabContent">
					<div class="tab-pane fade active show" id="pills-home"
						role="tabpanel" aria-labelledby="pills-home-tab">
						<p>개인정보</p>
						<table border="1">
							<tr>
								<td>담당교수</td>
								<td><input type="text" name="memNm" id="memNm" /></td>
								<td>교수소속</td>
								<td><input type="text" name="depName" id="depName"></td>
							</tr>
							<tr>
								<td>학과전화</td>
								<td><input type="text" name="deTel" id="deTel"></td>
								<td>교수전화</td>
								<td><input type="text" name="profTel" id="profTel"></td>
							</tr>
						</table>
						<p>강의 기본사항</p>
						<table border="1">
							<tr>
								<td>년도</td>
								<td><select id="lecaYr">
										<option value="2023">2023</option>
								</select></td>
								<td>학기</td>
								<td><select id="lecaSem">
										<option value="1">1학기</option>
										<option value="2">2학기</option>
								</select></td>
							</tr>

							<tr>
								<td>대상학년</td>
								<td><select id="lecaTrg" >
										<option value="1">1학년</option>
										<option value="2">2학년</option>
										<option value="3">3학년</option>
										<option value="4">4학년</option>
								</select></td>
								<td>학점</td>
								<td><select id="lecaCrd">
										<option value="1">1학점</option>
										<option value="2">2학점</option>
										<option value="3">3학점</option>
								</select></td>
							</tr>

							<tr>
								<td>강의명</td>
								<td><input type="text" id="lecaNm"></td>
								<td>이수구분</td>
								<td><select id="SeCode">
										<option>전필</option>
										<option>전선</option>
										<option>교필</option>
										<option>교선</option>
								</select></td>
							</tr>

							<tr>
								<td>과목이름</td>
								<td >
									<select id="subCode">
										<c:forEach var="subject" items="${subjectVO}">
											<option value="${subject.subCode}">${subject.subNm}</option>
										</c:forEach>
									</select>								
								</td>
								<td>평가기준</td>
								<td>
									<select id="lecaStdCode">
										<c:forEach var="leesCode" items="${leesCodeVO}">
											<option value="${leesCode.codeId}">${leesCode.codeNm}</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td>강의시수</td>
								<td><input type="text" id="lecaTime"></td>
								<td>최대정원</td>
								<td><input type="text" id="lecaCap"></td>
								<td>
							</tr>

						</table>
					</div>

					<div class="tab-pane fade" id="pills-contact" role="tabpanel"
						aria-labelledby="pills-contact-tab">
						<div>
						    <p>시간표 선택</p>
						    <p>${buildingVO[0].roomVO}</p>
						    <select id="bldCode" onchange="updateRoomOptions()">
						        <option>선택하세요</option>
						        <c:forEach var="building" items="${buildingVO}">
						            <option value="${building.bldCode}">${building.bldNm}</option>
						        </c:forEach>
						    </select>
						    <select id="roomNo">
						      <option>선택하세요</option>  
						    </select>
						</div>
						<div>
							<table id="our_table" border="1">
								<tr>
									<th style="width: 70px;"></th>
									<th>월</th>
									<th>화</th>
									<th>수</th>
									<th>목</th>
									<th>금</th>
								</tr>
								<tr>
									<th>1교시</th>
									<td>1</td>
									<td>2</td>
									<td>3</td>
									<td>4</td>
									<td>5</td>
								</tr>
								<tr>
									<th>2교시</th>
									<td>5</td>
									<td>4</td>
									<td>3</td>
									<td>2</td>
									<td>1</td>
								</tr>
								<tr>
									<th>3교시</th>
									<td>7</td>
									<td>8</td>
									<td>9</td>
									<td>0</td>
									<td></td>
								</tr>
								<tr>
									<th>4교시</th>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<th>5교시</th>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<th>6교시</th>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<th>7교시</th>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<th>8교시</th>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<th>9교시</th>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</table>
							<button type="button" id="timeTableBtn">시간 선택하기</button>
							<button type="button" id="timeReset">초기화</button>
						</div>


						<div>
							<p>희망시간</p>
							<textarea id="textArea4time" rows="5" cols="45">
							</textarea>
						</div>
						<button type="button" onclick="applyRegist()">등록</button>
					</div>
				</div>
			</div>
			<!-- 모달내용 -->
		</div>
	</div>
	<!-- 모달모달모달모달모달모달모달모달모달모달모달모달모달모달창모달모달모달모달모달모달모달모달모달모달 -->

	<div class="wrapper">
		<div class="wrapper">
			<table>
				<tr>
					<td>교번</td>
					<td><input type="text" name="memNo"></td>
					<td>성명</td>
					<td><input type="text" name="name"></td>
					<td>연락처</td>
					<td><input type="text" name="tel"></td>
					<td>소속</td>
					<td><input type="text" name="depNm"></td>
				</tr>

				<tr>
					<td>직책</td>
					<td><input type="text" name="proNm"></td>
					<td>재직상태</td>
					<td><input type="text" name="stat"></td>
					<td>생년월일</td>
					<td><input type="text" name="birth"></td>
				</tr>
			</table>
		</div>

		<div class="wrapper">
			<p>연도/학기</p>
			<select name="getYrSem" id="getYrSem" onchange="getListAgain()" >
				<option value="">전체</option>
				<!-- b.LECA_YR, b.LECA_SEM -->
				<c:forEach var="yrsem" items="${yrsemList}">
					<option value="${yrsem.lecaYr}${yrsem.lecaSem}">${yrsem.lecaYr}/${yrsem.lecaSem}</option>
				</c:forEach>
			</select>

			<!-- 테이블에 강의 list 뿌리기 -->
			<div id="disp">
				<table border="1">
					<tr>
						<th>년도/학기</th><th>학년</th><th>강의명</th><th>제한인원</th><th>개설이수구분</th><th>학점</th><th>강의시간/강의실</th><th>성적평가방식</th><th>계획서 상태</th><th>계획서</th>
					</tr>
					<c:forEach var="lecApplyVO" items="${lecApplyVOList}">
					<tr>
						<td>${lecApplyVO.lecaYr}/${lecApplyVO.lecaSem}</td>
						<td>${lecApplyVO.lecaTrg}</td>
						<td>${lecApplyVO.lecaNm}</td>
						<td>${lecApplyVO.lecaCap}</td>
						<td>${lecApplyVO.lecaSeCode}</td>
						<td>${lecApplyVO.lecaCrd}</td>
						<td>
							<c:forEach var="lectureVO" items="${lecApplyVO.lectureVOList}" >
								<c:forEach var="lectureDetailVO" items="${lectureVO.lectureDetailVO}">
									${lectureDetailVO.lecdWeek} ${lectureDetailVO.lecdSt}-${lectureDetailVO.lecdEt},
								</c:forEach>
								(${lectureVO.bldCode} ${lectureVO.roomNo})
							</c:forEach>
						</td>
						<td>${lecApplyVO.lecaStdCode}</td>
						<td>${lecApplyVO.lecaYn}</td>
						<td><button type="button">다운</button></td>
					</tr>
					</c:forEach>
				</table>
			</div>
			<!-- 테이블에 강의 list 뿌리기 -->
			<button type="button" onclick="openModal()">강의계획서 작성</button>
		</div>
	</div>

	<script>
	
	
		//강의계획서 등록
		function applyRegist(){
			//넘길데이터
			
		}
		
		//셀렉트 옵션 건물,호수 동적으로 
		function updateRoomOptions() {
			
			selectedBuildingCode = $("#bldCode").val();
			
			console.log("selectedBuildingCode",selectedBuildingCode);
			
			$.ajax({
				url:"/lec/roomNo",
				type:"get",
				data:{
					buildingCode: selectedBuildingCode
				},
				dataType:"json",
				success: function(rslt){
					let roomOptions = $("#roomNo");
		            roomOptions.empty(); // 기존 옵션을 모두 제거
		            
		            for (var i = 0; i < rslt.length; i++) {
		            	for(var j= 0;j< rslt[i].roomVO.length; j++)
		                roomOptions.append(`<option value="\${rslt[i].roomVO[j].roomNo}">\${rslt[i].roomVO[j].roomNo}</option>`);

		            }
		        }
				
			})
		}
		    
		    
		
	
		//모달열기
		function openModal() {
			const modal = document.getElementById('myModal');
			modal.style.display = 'block';

			let xhr = new XMLHttpRequest();
			xhr.open("get", "/lec/getProf", true);
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					//json객체로 바꿈
					let rslt = JSON.parse(xhr.responseText);

					$("#memNm").val(rslt[0].memNm);
					$("#depName").val(rslt[0].departmentVO[0].depNm);
					$("#deTel").val(rslt[0].departmentVO[0].depTel);
					$("#profTel").val(rslt[0].memTel);

				}
			}
			xhr.send();

		}

		//모달닫기
		function closeModal() {
			const modal = document.getElementById('myModal');
			modal.style.display = 'none';
		}

		const myList = document.querySelector("#disp");
		const getYrSem = document.querySelector("#getYrSem");
		


		
		
		/* 강의계획서 목록 select 옵션에 따라 보이기 */
		function getListAgain() {
		    // 드롭다운에서 선택한 값을 가져옵니다.
		    const lecaYrSem = document.getElementById("getYrSem").value;
		    const lecaYr = lecaYrSem.substring(0, 4); // 선택한 값에서 연도를 추출합니다.
		    const lecaSem = lecaYrSem.substring(4,5);
		    //lecaYrSem : 20232
		    console.log("lecaYrSem : " + lecaYrSem);
		    //lecaYr : 2023
		    console.log("lecaYr : " + lecaYr);
		    
		    console.log("lecaSem : " + lecaSem);
		
		    // http://localhost/lec/lecListSel?lecaYr=2023&lecaSem=2
		    let xhr = new XMLHttpRequest();
		    xhr.open("get", "/lec/lecListSel?lecaYr=" + lecaYr + "&lecaSem=" + lecaSem, true);
		    xhr.onreadystatechange = function () {
		        if (xhr.readyState == 4 && xhr.status == 200) {
		            // JSON 응답을 파싱하고 목록을 업데이트합니다.
		            let rslt = JSON.parse(xhr.responseText);
		            updateList(rslt);
		        }
		    }
		    xhr.send();
		}
		
		// 응답 데이터를 기반으로 목록을 업데이트하는 함수
		function updateList(data) {
		    let tblStr = "<table border=1>";
		    tblStr += "<tr><th>년도/학기</th><th>학년</th><th>강의명</th><th>제한인원</th><th>개설이수구분</th><th>학점</th><th>강의시간/강의실</th><th>성적평가방식</th><th>계획서 상태</th><th>계획서</th></tr>";
		    for (let i = 0; i < data.length; i++) {
		        tblStr += "<tr>"
		        tblStr += `<td>\${data[i].lecaYr} \${data[i].lecaSem}</td>`
		        tblStr += `<td>\${data[i].lecaTrg}</td>`
		        tblStr += `<td>\${data[i].lecaNm}</td>`
		        tblStr += `<td>\${data[i].lecaCap}</td>`
		        tblStr += `<td>\${data[i].lecaSeCode}</td>`
		        tblStr += `<td>\${data[i].lecaCrd}</td>`
		        tblStr += "<td>"; // 강의시간/강의실 데이터 표시 부분 시작
		        for (let a = 0; a < data[i].lectureVOList.length; a++) {
		            const lecture = data[i].lectureVOList[a];
		            for (let b = 0; b < lecture.lectureDetailVO.length; b++) {
		                const detail = lecture.lectureDetailVO[b];
		                tblStr += `\${detail.lecdWeek}(\${detail.lecdSt}-\${detail.lecdEt}), 강의실: \${lecture.roomNo}<br>`;
		            }
		        }
		        tblStr += "</td>"; // 강의시간/강의실 데이터 표시 부분 끝
		        tblStr += `<td>\${data[i].lecaStdCode}</td>`
		        tblStr += `<td>\${data[i].lecaYn}</td>`
		        tblStr += `<td><button type="button">다운</buttion></td>`
		        tblStr += "</tr>"
		    }
		    tblStr += "</table>";
		
		    // HTML 요소를 새로운 목록으로 업데이트합니다.
		    const myList = document.querySelector("#disp");
		    myList.innerHTML = tblStr;
		}
		
	
		
		
		const memNo = document.querySelector("input[name=memNo]");
		const name = document.querySelector("input[name=name]");
		const tel = document.querySelector("input[name=tel]");
		const depNm = document.querySelector("input[name=depNm]");
		const proNm = document.querySelector("input[name=proNm]");
		const stat = document.querySelector("input[name=stat]");
		const birth = document.querySelector("input[name=birth]");

		/* 교수 정보 리스트 */
		function getProf() {
			let xhr = new XMLHttpRequest();
			xhr.open("get", "/lec/getProf", true);
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					
					let rslt = JSON.parse(xhr.responseText);
					console.log("rsltssssssss",rslt);
					memNo.value = rslt[0].memNo;
					name.value = rslt[0].memNm;
					tel.value = rslt[0].memTel;
					depNm.value = rslt[0].departmentVO[0].depNm;
					proNm.value = rslt[0].professorVO[0].proPosYn;
					stat.value = rslt[0].professorVO[0].codeProStat;
					birth.value = rslt[0].memBir;
				}
			}
			xhr.send();
		}
		getProf();
	</script>
</body>
</html>