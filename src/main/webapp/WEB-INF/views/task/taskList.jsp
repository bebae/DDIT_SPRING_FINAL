<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	border: 1px solid black;
}

#wrapper{
	display: flex;
}
</style>
</head>

<body>

	<div>
		<select id="lecSel" name="lecSel" onchange="lecSel()">
			<c:forEach var="lecCode" items="${lecCode}">
				<option value="${lecCode.lecCode}">${lecCode.lecaNm}</option>
			</c:forEach>
		</select> 
		<a href="">강의계획서</a> 
		<a href="">강의자료실</a> 
		<a href="/pro/task">과제</a> 
		<a href="">시험</a> 
		<a href="">출결</a> 
		<a href="">성적</a>
	</div>

	<div id="wrapper">
		<div id="taskList">
		
		
		</div>
		<div>
			<span>과제이름</span><input type="text" name="taskNm"><br/> 
			<span>과제내용</span><textarea rows="" cols="" name="taskCon"></textarea><br/>
			<span>마감일자</span><input type="date" name="taskDead"><br/>
			<span>과제점수</span><input type="number" name=taskScore><br/>
			<span>첨부파일</span><input type="file" name=""><br/>

			<button type="button" onclick="taskIns()">등록</button>
			<button type="button" onclick="taskUp()">수정</button>
			<button type="button" onclick="taskDel()">삭제</button>
		</div>
	</div>




</body>
<script type="text/javascript">
	//등록
	function taskIns() {
		console.log("등록")
	}

	//수정
	function taskUp() {
		console.log("수정")

	}

	//삭제
	function taskDel() {
		console.log("삭제")

	}
	
	const myList = document.querySelector("#taskList") ;
	
	function lecSel(){
		const lecCode = (document.querySelector("#lecSel")).value;
		console.log("lecCode",lecCode);
		
		$.ajax({
			url:"/pro/seltaskList/"+lecCode,
			type:"get",
			dataType:"json",
			success: function(rslt){
				let str = "<table border=1>";
				str += "<tr><td>No.</td><td>제목</td><td>과제등록일</td><td>과제마감일</td><td>제출목록</td></tr>"
			 	for(i=0;i<rslt.length;i++){
			 		str +="<tr onmouseover=fmover(this) onmouseout=fmout(this) onclick=fmclick(this)>";
			 		str +=`<td>\${rslt[i].taskCode}</td>`;
			 		str +=`<td>\${rslt[i].taskNm}</td>`;
			 		str +=`<td>\${rslt[i].taskDe}</td>`;
			 		str +=`<td>\${rslt[i].taskDead}</td>`;
			 		str +=`<td style="display:none;">\${rslt[i].taskCon}</td>`;
			 		str +=`<td style="display:none;">\${rslt[i].taskScore}</td>`;
			 		str +=`<td style="display:none;">\${rslt[i].fileId}</td>`;
			 		str +=`<td><a href="/pro/submitTask">보기</a></td>`;
			 		str +="</tr>";
			 	}
				str += "</table>";
				myList.innerHTML = str;
			}
		})
	}
	
	//TR 마우스 오버
	function fmover(pthis){
		pthis.style.backgroundColor="black";
		pthis.style.color="yellow";	
	}

	//TR 마우스 아웃
	function fmout(pthis){
		pthis.style.backgroundColor="white";
		pthis.style.color="black";
	}

	const taskNm = document.querySelector("input[name=taskNm]");
	const taskCon = document.querySelector("textarea[name=taskCon]");
	const taskDead = document.querySelector("input[name=taskDead]");
	const taskScore = document.querySelector("input[name=taskScore]");
	const fileId = document.querySelector("input[name=fileId]");
	//Tr 클릭시
	
	function fmclick(pthis){
		taskNm.value = pthis.children[1].innerText;
		taskCon.value = pthis.children[4].innerText;
		taskDead.value = pthis.children[3].innerText;
		taskScore.value = pthis.children[5].innerText;
		fileId.value = pthis.children[6].innerText;
	}
	
	
	
	

	
</script>
</html>