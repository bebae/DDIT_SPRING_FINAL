<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!doctype html>
<html lang="en">

<main role="main" class="main-content" style="width: 70%; margin: auto;">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-12">
				<div class="row">
					<!-- Small table -->
					<div class="col-md-12 my-4">
						<h2 class="h4 mb-1">강의게시판</h2>
						<p class="mb-3">강의이름${lecNoticeVO.subNm}</p>
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
											<th>제목</th>
											<th>내용</th>
											<th>작성일자</th>
											<th>수정일자</th>
											<th></th>
										</tr>
									</thead>

									<tbody>
										<c:forEach items="${lecNoticeList}" var="lecNoticeVO">
											<tr>

												<td></td>
												<td>
													<p class="mb-0 text-muted">
														<strong>${lecNoticeVO.lecnTtl}</strong>
													</p> <!--                               <small class="mb-0 text-muted">2474</small> -->
												</td>
												<td>
													<p class="mb-0 text-muted">
														<strong>${lecNoticeVO.lecnCon}</strong>
													</p>
												</td>
												<td>
													<p class="mb-0 text-muted">
														<strong>${lecNoticeVO.lecnDe}</strong>
													</p>
												</td>
												<td>
													<p class="mb-0 text-muted">
														<strong>${lecNoticeVO.lecnUpdde}</strong>
													</p>
												</td>
												<td><a href="/path/to/your/file.pdf"
													download="my_file.pdf" class="btn btn-my">상세보기</a></td>

												<!--                             <td><button class="btn btn-sm dropdown-toggle more-horizontal" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="openModal()"> -->
												<!--                                 <span class="text-muted sr-only">Action</span> -->
												<!--                               </button> -->
												<!--                               <div class="dropdown-menu dropdown-menu-right"> -->
												<!--                                 <a class="dropdown-item" href="">첨부파일</a> -->

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