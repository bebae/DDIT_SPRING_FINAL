<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<style>
	svg.navbar-brand-img {
		fill: var(--my-color);
	}
	.navbar-light .navbar-nav .nav-link:hover {
		color: var(--my-color);
	}

</style>

<aside class="sidebar-left border-right shadow"
	id="leftSidebar" data-simplebar>
	<a href="#"
		class="btn collapseSidebar toggle-btn d-lg-none text-muted ml-2 mt-3"
		data-toggle="toggle"> <i class="fe fe-x"><span class="sr-only"></span></i>
	</a>
	<nav class="vertnav navbar navbar-light bg-white">
		<!-- nav bar -->
		<div class="w-100 mb-4 d-flex">
			<a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="/">
				<svg version="1.1" id="logo"
					class="navbar-brand-img brand-sm text-my"
					xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					viewBox="0 0 120 120" xml:space="preserve">
						<g>
							<polygon class="st0" points="78,105 15,105 24,87 87,87 	" />
							<polygon class="st0" points="96,69 33,69 42,51 105,51 	" />
							<polygon class="st0" points="78,33 15,33 24,15 87,15 	" />
						</g>
				</svg>
			</a>
		</div>
		<p class="mt-4 mb-1 fs-18 mx-auto">
			<span>MENU</span>
		</p>
		<ul class="navbar-nav flex-fill w-100 mb-2">
			<li class="nav-item dropdown"><a href="#dashboard"
				data-toggle="collapse" aria-expanded="false"
				class="dropdown-toggle nav-link"> <i class="fe fe-home fe-16"></i>
					<span class="ml-3 item-text">임시공통메뉴</span><span class="sr-only">(current)</span>
			</a>
				<ul class="collapse list-unstyled pl-4 w-100 show" id="dashboard">
					<li class="nav-item"><a class="nav-link pl-3"
						href="#"><span class="ml-1 item-text">학사일정</span></a>
					</li>
					<li class="nav-item"><a class="nav-link pl-3"
						href="#"><span class="ml-1 item-text">캠퍼스맵</span></a>
					</li>
					<li class="nav-item"><a class="nav-link pl-3"
						href="#"><span class="ml-1 item-text">오시는길</span></a>
					</li>
					<li class="nav-item"><a class="nav-link pl-3"
						href="#"><span class="ml-1 item-text">마이페이지</span></a></li>
				</ul></li>
		</ul>
		<p class="nav-heading mt-4 mb-1">
			<span>학생</span>
		</p>
		<ul class="navbar-nav flex-fill w-100 mb-2">
			<li class="nav-item dropdown"><a href="#ui-elements"
				data-toggle="collapse" aria-expanded="false"
				class="dropdown-toggle nav-link"> <i class="fe fe-box fe-16"></i>
					<span class="ml-3 item-text">등록&장학</span>
			  </a>
				<ul class="collapse list-unstyled pl-4 w-100" id="ui-elements">
					<li class="nav-item"><a class="nav-link pl-3"
						href="#"><span class="ml-1 item-text">등록</span>
					</a></li>
					<li class="nav-item"><a class="nav-link pl-3"
						href="#"><span class="ml-1 item-text">장학</span></a>
					</li>
				</ul>
      </li>
			<li class="nav-item dropdown">
				<a href="#" class="nav-link">
					<i class="fe fe-credit-card fe-16"></i> <span class="ml-3 item-text">증명서발급</span>
				</a>
			</li>
			<li class="nav-item dropdown">
				<a href="/stu/dormitoryApplyForm" class="nav-link">
					<i class="fe fe-grid fe-16"></i> <span class="ml-3 item-text">기숙사</span>
				</a>
			</li>
      <li class="nav-item dropdown">
        <a href="/stu/lecApply" class="nav-link">
          <i class="fe fe-map fe-16"></i> <span class="ml-3 item-text">수강신청</span>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a href="#" class="nav-link">
          <i class="fe fe-clock fe-16"></i> <span class="ml-3 item-text">수강관리</span>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a href="#ui-2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link"> <i class="fe fe-pen-tool fe-16"></i>
          <span class="ml-3 item-text">성적&평가</span>
        </a>
        <ul class="collapse list-unstyled pl-4 w-100" id="ui-2">
          <li class="nav-item"><a class="nav-link pl-3" href="#"><span class="ml-1 item-text">성적</span>
          </a></li>
          <li class="nav-item"><a class="nav-link pl-3" href="#"><span class="ml-1 item-text">평가</span></a>
          </li>
        </ul>
      </li>
      <li class="nav-item dropdown">
        <a href="/stu/recApply" class="nav-link">
          <i class="fe fe-calendar fe-16"></i> <span class="ml-3 item-text">학적관리</span>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a href="#" class="nav-link">
          <i class="fe fe-user-plus fe-16"></i> <span class="ml-3 item-text">상담</span>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a href="#" class="nav-link">
          <i class="fe fe-camera fe-16"></i> <span class="ml-3 item-text">화상회의</span>
        </a>
      </li>
		</ul>
		<p class="nav-heading mt-4 mb-1">
			<span>교수</span>
		</p>
		<ul class="navbar-nav flex-fill w-100 mb-2">
			<li class="nav-item dropdown">
				<a href="#ui-p-1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
					<i class="fe fe-box fe-16"></i><span class="ml-3 item-text">강의 관리</span>
			</a>
				<ul class="collapse list-unstyled pl-4 w-100" id="ui-p-1">
					<li class="nav-item">
						<a class="nav-link pl-3" href="#"><span class="ml-1 item-text">강의계획서</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link pl-3" href="#"><span class="ml-1 item-text">내 강의</span></a>
					</li>
				</ul>
			</li>
			<li class="nav-item dropdown">
				<a href="#" class="nav-link">
					<i class="fe fe-user-plus fe-16"></i> <span class="ml-3 item-text">학생 관리</span>
				</a>
			</li>
			<li class="nav-item dropdown">
				<a href="#" class="nav-link">
					<i class="fe fe-grid fe-16"></i> <span class="ml-3 item-text">상담</span>
				</a>
			</li>
			<li class="nav-item dropdown">
				<a href="#" class="nav-link">
					<i class="fe fe-map fe-16"></i> <span class="ml-3 item-text">공지사항</span>
				</a>
			</li>
			<li class="nav-item dropdown">
				<a href="#" class="nav-link">
					<i class="fe fe-mail fe-16"></i> <span class="ml-3 item-text">메신저</span>
				</a>
			</li>
			<li class="nav-item dropdown">
				<a href="#" class="nav-link">
					<i class="fe fe-video fe-16"></i> <span class="ml-3 item-text">화상회의</span>
				</a>
			</li>
		</ul>
		<p class="nav-heading mt-4 mb-1">
			<span>교직원</span>
		</p>
		<ul class="navbar-nav flex-fill w-100 mb-2">
			<li class="nav-item dropdown">
				<a href="#ui-e-1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
					<i class="fe fe-users fe-16"></i><span class="ml-3 item-text">사용자관리</span>
				</a>
				<ul class="collapse list-unstyled pl-4 w-100" id="ui-e-1">
					<li class="nav-item">
						<a class="nav-link pl-3" href="#"><span class="ml-1 item-text">사용자 정보 조회</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link pl-3" href="#"><span class="ml-1 item-text">문자발송</span></a>
					</li>
				</ul>
			</li>
			<li class="nav-item dropdown">
				<a href="#" class="nav-link">
					<i class="fe fe-user fe-16"></i> <span class="ml-3 item-text">학생 관리</span>
				</a>
			</li>
			<li class="nav-item dropdown">
				<a href="#" class="nav-link">
					<i class="fe fe-book-open fe-16"></i> <span class="ml-3 item-text">교과목 관리</span>
				</a>
			</li>
			<li class="nav-item dropdown">
				<a href="/admin/schedule" class="nav-link">
					<i class="fe fe-calendar fe-16"></i> <span class="ml-3 item-text">학사 일정</span>
				</a>
			</li>
			<li class="nav-item dropdown">
				<a href="#" class="nav-link">
					<i class="fe fe-tool fe-16"></i> <span class="ml-3 item-text">학사 관리</span>
				</a>
			</li>
			<li class="nav-item dropdown">
				<a href="#" class="nav-link">
					<i class="fe fe-clipboard fe-16"></i> <span class="ml-3 item-text">공지사항</span>
				</a>
			</li>
			<li class="nav-item dropdown">
				<a href="#" class="nav-link">
					<i class="fe fe-bar-chart fe-16"></i> <span class="ml-3 item-text">총지표</span>
				</a>
			</li>
		</ul>
		<p class="nav-heading mt-5 mb-1">
			<span>선적 서류 비치</span>
		</p>
		<ul class="navbar-nav flex-fill w-100 mb-2">
			<li class="nav-item w-100"><a class="nav-link"
				href="#"> <i class="fe fe-help-circle fe-16"></i>
					<span class="ml-3 item-text">Getting Start</span>
			</a></li>
		</ul>

	</nav>
</aside>