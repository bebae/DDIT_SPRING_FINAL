<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<style>
	img.img-fluid {
		width: 136px;
	}
</style>

<script>
$(document).ready(function() {
    $.ajax({
    	url : "/admin/getList",
    	type: "GET",     
    	dataType : "JSON",
    	success : function(result){
    		console.log(result);

    		let txt ="";
    		txt += "<div class='card-deck mb-4'>";
    		for(let i = 0; i<result.length; i++){
    			
    			console.log(result[i].depNm);
	        	txt +=`
	    	  		<div class='card border-0 bg-transparent'>
	        			<img src="/resources/master/light/assets/avatars/학사모.png" alt="..." class="card-img-top img-fluid rounded">
	    	  			<div class='card-body'>
	    	  			<h5 class='h6 card-title mb-1'>\${result[i].depNm}</h5>
	    	  			<p class="card-text">
                    		<button class="btn btn-outline-secondary bg-my text-white" type="button" id="departmentDetail">상세 보기</button>
                    	</p>
                    	<hr>
                    	</div>
                   	</div>
	        	`;	
	        	if ((i + 1) % 4 === 0 || i === result.length - 1) {
                    txt += '</div><div class="card-deck mb-4">'; 
                }
    		}
    		txt += "</div>";
   			$('#kanghyuk').html(txt);
    	}
    })
    
 	// 버튼 클릭 이벤트 처리
    $("#departmentBtn").click(function () {
        // "/admin/department" URL로 이동
        window.location.href = "/admin/department";
    });
});
</script>


<div class="container-fluid">
 <div class="row justify-content-center">
   <div class="col-12 col-lg-10">
     <div class="row align-items-center my-4">
       <div class="col">
         <h2 class="page-title">학과 조회</h2>
       </div>
       <input type="text" class="form-control" id="search1" value="" placeholder="Search" style="margin-right: 10px; height:40px; width:300px;">
       <button type="button"  id="ho" class="btn btn-primary bg-my text-white" style="color:white; border-color: transparent; height:40px;">검색</button>
       <div class="col-auto">
         <button type="button" class="btn btn-primary bg-my text-white" id="departmentBtn">학과 등록</button>
       </div>
     </div>
     <h6 class="mb-3">학과 리스트</h6>
     
   	 <div id="kanghyuk">
   	 </div> 

     </div> 
   </div>
 </div> <!-- .row -->
</div>

<script>
 window.dataLayer = window.dataLayer || [];

 function gtag()
 {
   dataLayer.push(arguments);
 }
 gtag('js', new Date());
 gtag('config', 'UA-56159088-1');
</script>
</body>