<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>



<style>
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
	width: 300px;
	height: 400px;
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
</style>


<!doctype html>
<html lang="en">
<main role="main" class="main-content" style="width: 70%; margin: auto;">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-12">
				<div class="row">
					<!-- Small table -->
					<div class="col-md-12 my-4">
						<h2 class="h4 mb-1">시험게시판</h2>
						<p class="mb-3">강의이름${TestVO.subNm}</p>
						<div class="card shadow">
							<div class="card-body">
								<div class="toolbar">
									<form class="form">
										<div class="form-row">
											<div class="form-group col-auto mr-auto">
												<label class="my-1 mr-2 sr-only"
													for="inlineFormCustomSelectPref1">Show</label>

											</div>

										</div>
									</form>
								</div>
								<!-- table -->
								<table class="table table-borderless table-hover">
									<thead>
										<tr>
											<th></th>
											<th>시험</th>
											<th>시험일자</th>
											<th>시작시간</th>
											<th>종료시간</th>
											<th>제한시간</th>
											<th></th>
										</tr>
									</thead>

									<tbody>
										<c:forEach items="${testNoticeList}" var="testVO">
											<tr>

												<td></td>
												<td>
													<p class="mb-0 text-muted">
														<strong>${testNoticeList.testNm}</strong>
													</p> <!--                               <small class="mb-0 text-muted">2474</small> -->
												</td>
												<td>
													<p class="mb-0 text-muted">
														<strong>${testNoticeList.testDe}</strong>
													</p>
												</td>
												<td>
													<p class="mb-0 text-muted">
														<strong>${testNoticeList.testSt}</strong>
													</p>
												</td>
												<td>
													<p class="mb-0 text-muted">
														<strong>${testNoticeList.testEt}</strong>
													</p>
												</td>
												<td>
													<p class="mb-0 text-muted">
														<strong>${testNoticeList.testLimit}</strong>
													</p>
												</td>
												<td>
													<a href="test/testStuDetail" class="btn btn-my">응시하기</a>
												</td>

												</div>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<!-- table -->



								<script src="js/jquery.min.js"></script>
								<script src="js/popper.min.js"></script>
								<script src="js/moment.min.js"></script>
								<script src="js/bootstrap.min.js"></script>
								<script src="js/simplebar.min.js"></script>
								<script src='js/daterangepicker.js'></script>
								<script src='js/jquery.stickOnScroll.js'></script>
								<script src="js/tinycolor-min.js"></script>
								<script src="js/config.js"></script>
								<script src='js/jquery.dataTables.min.js'></script>
								<script src='js/dataTables.bootstrap4.min.js'></script>
								<script>
									$('#dataTable-1').DataTable(
											{
												autoWidth : true,
												"lengthMenu" : [
														[ 16, 32, 64, -1 ],
														[ 16, 32, 64, "All" ] ]
											});
								</script>
								<script src="js/apps.js"></script>
								<!-- Global site tag (gtag.js) - Google Analytics -->
								<script async
									src="https://www.googletagmanager.com/gtag/js?id=UA-56159088-1"></script>
								<script>
									window.dataLayer = window.dataLayer || [];

									function gtag() {
										dataLayer.push(arguments);
									}
									gtag('js', new Date());
									gtag('config', 'UA-56159088-1');
								</script>
								</body>
</html>