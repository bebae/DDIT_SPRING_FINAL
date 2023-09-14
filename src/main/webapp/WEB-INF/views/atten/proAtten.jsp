<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div class="col-lg-12">
		<div class="card" style="min-height: 700px; padding-bottom: 15%;">
			<div class="card-body">
				<div id="bodyWrapper">
					<h4 class="lecApplyName">&emsp;&#45;&emsp;담당 강의 조회</h4>
					<div class="clear topBorder"></div>
					<div class="attenTopWrap">
						<p style="margin-top: 30px;">
							<i class="mdi mdi-record-circle" style="color: #001353;"></i>&ensp;수강생목록
						</p>
						<div id="listLec"></div>
						<div id="listStu">
							<table border='1'>
								<tr>
									<th>No.</th>
									<th>단과대학</th>
									<th>학과</th>
									<th>학년</th>
									<th>학번</th>
									<th>이름</th>
									<th>연락처</th>
								</tr>
							</table>
						</div>

						<div id="listPruf">
							<p style="margin-top: 30px;">
								<i class="mdi mdi-record-circle" style="color: #001353;"></i>&ensp;수강생
								출결 증빙 자료
							</p>
							<table border='1'>
								<tr>
									<th>No.</th>
									<th>단과대학</th>
									<th>학과</th>
									<th>학년</th>
									<th>학번</th>
									<th>이름</th>
									<th>연락처</th>
									<th>증빙자료</th>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</table>
						</div>
					</div>
					<div class="attenBotWrap">
						<p style="margin-top: 30px; display: inline-block; float: left;">
							<i class="mdi mdi-record-circle" style="color: #001353;"></i>&ensp;수강생
							출결 정보
						</p>
						<p style="margin-top: 30px; display: inline-block; float: right;">
							<span style="float: right;"> <span
								class="badge badge-outline-danger">총 결석일</span> &emsp; <span
								id="totalAbsent">-</span>&nbsp;일
							</span> <br> <span style="font-size: 0.9em;">지각/조퇴 3회는 결석
								1회로 산정됨</span>
						</p>

						<!-- 학생 정보 -->
						<div class="informDetailTop">
							<table class="mb-3" border="1">
								<tr>
									<td colspan="2" style="text-align: center;">학생정보</td>
									<td colspan="10" style="text-align: center;">출결</td>
								</tr>
								<tr>
									<td>학번</td>
									<td class="W"><input type="text" id="memNo" name="memNo"
										class="form-control f9" disabled placeholder="학생을 선택하세요" /></td>
									<td rowspan='2'>출석</td>
									<td rowspan='2' class="W"><input type="text" id="atenCome"
										class="form-control f9" disabled
										placeholder="학생의 출석일수가 보여집니다." /></td>
									<td rowspan='2'>지각</td>
									<td rowspan='2' class="W"><input type="text" id="atenLate"
										class="form-control f9" disabled
										placeholder="학생의 지각일수가 보여집니다." /></td>
									<td rowspan='2'>조퇴</td>
									<td rowspan='2' class="W"><input type="text"
										id="atenEarlyLeave" class="form-control f9" disabled
										placeholder="학생의 지각일수가 보여집니다." /></td>
									<td rowspan='2'>결석</td>
									<td rowspan='2' class="W"><input type="text"
										id="atenAbsent" class="form-control f9" disabled
										placeholder="학생의 결석일수가 보여집니다." /></td>
									<td rowspan='2'>공결</td>
									<td rowspan='2' class="W"><input type="text"
										id="atenOfiAbsent" class="form-control f9" disabled
										placeholder="학생의 공결일수가 보여집니다." /></td>
								</tr>
								<tr>
									<td>이름</td>
									<td class="W"><input type="text" id="memNm"
										class="form-control f9" disabled placeholder="학생을 선택하세요" /></td>
								</tr>
							</table>
						</div>

						<!-- 출결 상세 -->
						<div class="informDetailBot">
							<p style="margin-top: 30px; display: inline-block;">
								<i class="mdi mdi-record-circle" style="color: #001353;"></i>&ensp;출결표
							</p>
							<div class="alert alert-light bg-light border-0" role="alert"
								style="font-size: 0.9em; padding: 15px 30px 15px; 20 px; border: 1px solid #eee;">
								<p style="display: block; text-align: center; font-size: 1.1em;">&#8251;
									전자출결시스템 안내</p>
								<hr>
								<p>(1) 출결 표시 방법 안내.</p>
								&emsp;-&nbsp;<strong>출석&nbsp;:&nbsp;○&emsp;|&emsp;지각&nbsp;:&nbsp;△&emsp;|&emsp;조퇴&nbsp;:&nbsp;⨉&emsp;|&emsp;결석&nbsp;:&nbsp;⨉&emsp;|&emsp;공결&nbsp;:&nbsp;◎</strong><br>
								<br>
								<p>(2) 출결표는 주차와 차시로 구분됩니다.</p>
								<p>
									(3) 변경 또는 출결을 등록하고 싶은 주차와 차시에 해당하는 <strong>선택박스&nbsp;<i
										class="mdi mdi-minus-box-outline" style="font-size: 1.6em;"></i>&nbsp;를
										클릭
									</strong>하여 출결을 저장합니다.
								<p>
								<p>
									(4) 다음 차시의 출결은 <strong>이전 차시의 출결을 등록해야만</strong> 선택할 수 있습니다.
								<p>
							</div>

							<div class="fitTable">
								<c:forEach var="j" begin="1" end="9" step="8">
									<table class="mb-0" border="1">
										<!-- 1~16주까지 보여주는 곳 -->
										<tr>
											<c:forEach var="i" begin="${j }" end="${j+7}" step="1">
												<td colspan="${data.lecaTime }"><input type="text"
													id="atenWk" name="atenWk" class="inputCustum" value="${i }"
													disabled /></td>
											</c:forEach>
										</tr>
										<!-- 1~학점 만큼 차시를 보여주는 곳 -->
										<tr>
											<c:forEach begin="${j}" end="${j+7}" step="1">
												<c:forEach var="i" begin="1" end="${data.lecaTime }" step="1">
													<td style="width: 50px;"><input type="text"
														id="atenHr" name="atenHr" class="inputCustum"
														value="${i }" disabled /></td>
												</c:forEach>
											</c:forEach>
										</tr>
										<!-- 1~8주차 출결 현황 작성하는 곳 -->
										<tr>
											<c:forEach begin="${j}" end="${j+7}" step="1" var="k">
												<c:forEach var="i" begin="1" end="${data.lecaTime }" step="1">
													<td class="W H" id="hr_${k}_${i}" data-wk="${k}"
														data-hr="${i}"><select name="atenCate" id="atenCate"
														class="attendSelect" disabled>
															<!-- ○◎△  -->
															<option value="null" selected>&nbsp;-</option>
															<option value="A101">○</option>
															<option value="A102">△</option>
															<option value="A103">⨉</option>
															<option value="A104">◎</option>
													</select></td>
												</c:forEach>
											</c:forEach>
										</tr>
									</table>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



<script>



	const myList = document.querySelector("#listStu");
	const lecList = document.querySelector("#listLec");
	const prufList = document.querySelector("#listPruf");
	const selMemNo = document.querySelector("#memNo");
	const selMemNm = document.querySelector("#memNm");
	const atenCome = document.querySelector("#atenCome");
	const atenLate = document.querySelector("#atenLate");
	const atenEarlyLeave = document.querySelector("#atenEarlyLeave");
	const atenAbsent = document.querySelector("#atenAbsent");
	const atenOfiAbsent = document.querySelector("#atenOfiAbsent");
	const memNo = "202008P003";
	
	
	// 해당 교수 강의 목록 > 수강생 목록 > cnt 조회
	function stuclick(pthis) {
	    const lecSelect = document.querySelector('.lecSelect');
	    selectedValue = lecSelect.value;
	    
	    console.log("selectedValue",selectedValue);
	    
	    let memNo = pthis.children[4].innerText;
	    let memNm = pthis.children[5].innerText;
	    
	    console.log("pthis.children[4].innerText",memNo);
	    console.log("pthis.children[4].innerText",memNm);
	
	    $.ajax({
	        url: "/pro/atten/attendanceCnt",
	        type: 'get',
	        data: {
	            lecCode: selectedValue,
	            memNo: memNo
	        },
	        dataType: 'JSON',
	        success: function (result) {
	        	//result :  {"atenDe":null,"lecCode":null,"memNo":null,"codeAtenSe":null,"atenYn":null,"atenRsn":null,"atenPruf":null,"lecaNm":null,"stuYr":0,"colNm":null,"depNm":null,"memNm":null,"memTel":null
	        		//,"atenCome":0,"atenLate":0,"atenEarlyLeave":0,"atenAbsent":0,"atenOfiAbsent":0}
	            console.log("result : ", JSON.stringify(result));
	
	            selMemNo.value = memNo;
	            selMemNm.value = memNm;
	            atenCome.value = result.atenCome;
	            atenLate.value = result.atenLate;
	            atenEarlyLeave.value = result.atenEarlyLeave;
	            atenAbsent.value = result.atenAbsent;
	            atenOfiAbsent.value = result.atenOfiAbsent;
	        }
	    });
	}
	
	
	// 해당 교수 강의 목록
	function listLec(callback){
		let xhr = new XMLHttpRequest();
		xhr.open("get","/pro/atten/list/"+memNo,true);
		xhr.onreadystatechange = () =>{
			if(xhr.readyState == 4 && xhr.status == 200){
				let rslt = JSON.parse(xhr.responseText);
				
				let str = '<select name="lecCate" class="lecSelect">';
				str += "<option>강의선택</option>";
				
				for(let i=0; i<rslt.length; i++){
					str += `<option value=\${rslt[i].lecCode}>\${rslt[i].lecaNm}</option>`;
				}
				str += '</select>';
				lecList.innerHTML = str;
				
				callback();
			}
		}
		xhr.send();
	}

	
	// 출결 증빙자료
// 	function listPruf(){
// 		let xhr = new XMLHttpRequest();
// 		xhr.open("get","/pro/atten/list/pruf"+memNo,true);
// 		xhr.onreadystatechange = () =>{
// 			if(xhr.readyState == 4 && xhr.status == 200){
// 					let rslt = JSON.parse(xhr.responseText);
					
// 					 console.log('rslt 값: ', rslt);
					
// 					let tblStr = "<table border='1'>";
// 					tblStr += "<tr><th>No.</th><th>단과대학</th><th>학과</th><th>학년</th><th>학번</th><th>이름</th><th>연락처</th><th>증빙자료</th></tr>";
// 					for(let i=0; i<rslt.length; i++){
// 						tblStr += "<tr onclick=fmclick(this)>";
// 						tblStr += `<td>\${i+1}</td>`;
// 						tblStr += `<td>\${rslt[i].colNm || '없음'}</td>`;
// 						tblStr += `<td>\${rslt[i].depNm || '없음'}</td>`;
// 						tblStr += `<td>\${rslt[i].stuYr || '없음'}</td>`;
// 						tblStr += `<td>\${rslt[i].memNo || '없음'}</td>`;
// 						tblStr += `<td>\${rslt[i].memNm || '없음'}</td>`;
// 						tblStr += `<td>\${rslt[i].memTel || '없음'}</td>`;
// 						tblStr += `<td><button type="button" onclick="fSearch()">pdf</button></td>`;
// 						tblStr += "</tr>";
				
// 				}
// 				tblStr += "</table>";
// 				prufList.innerHTML = tblStr;
// 			}
// 		}
// 		xhr.send();
// 	}
	
	// 해당 교수 강의 목록 > 수강생 목록
	listLec(function () {
		const lecSelect = document.querySelector('.lecSelect');
		lecSelect.addEventListener('change', function () {
		    selectedValue = lecSelect.value;
		    
		    let xhr = new XMLHttpRequest();
			xhr.open("get",`/pro/atten/list/stu/\${selectedValue}`,true);
			xhr.onreadystatechange = () =>{
				if(xhr.readyState == 4 && xhr.status == 200){
					let rslt = JSON.parse(xhr.responseText);
			
					let tblStr = "<table border='1'>";
					tblStr += "<tr><th>No.</th><th>단과대학</th><th>학과</th><th>학년</th><th>학번</th><th>이름</th><th>연락처</th></tr>";
					for(let i=0; i<rslt.length; i++){
						tblStr += "<tr onclick=stuclick(this)>";
						tblStr += `<td>\${i+1}</td>`;
						tblStr += `<td>\${rslt[i].colNm || '없음'}</td>`;
						tblStr += `<td>\${rslt[i].depNm || '없음'}</td>`;
						tblStr += `<td>\${rslt[i].stuYr || '없음'}</td>`;
						tblStr += `<td>\${rslt[i].memNo || '없음'}</td>`;
						tblStr += `<td>\${rslt[i].memNm || '없음'}</td>`;
						tblStr += `<td>\${rslt[i].memTel || '없음'}</td>`;
						tblStr += "</tr>";
				
					}
					tblStr += "</table>";
					myList.innerHTML = tblStr;
			}
		}
		xhr.send();
	    
	  });
	    
	});
	
	
	
	

</script>
</body>
</html>