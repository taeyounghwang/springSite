<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>



<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/images/common/icon.png">
<title><tiles:getAsString name="title" /></title>
<!-- Bootstrap core CSS -->
<link href="/resources/include/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="/resources/include/dist/css/sticky-footer-navbar.css"
	rel="stylesheet">
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]>
<script src="/resources/include/dist/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script
	src="/resources/include/dist/assets/js/ie-emulation-modes-warning.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>
</head>
<body>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<tiles:insertAttribute name="header" />

	</nav>
	<!-- Begin page content -->
	<div class="container">
		<div class="page-header">
			<div class="jumbotron">
				<h1>노력은 배신하지 않는다.</h1>


				<p>Efforts are not betraying you....</p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-6 col-lg-4">
				<h2>게시판 관리</h2>
				<p>처음으로 만든 게시판. 이미지 첨부가 가능한 게시판. 입력/수정/삭제 및 댓글 작성까지 처리 완료.</p>
				<p>
					<a class="btn btn-default" href="/board/boardList.do" role="button">
						View details &raquo;</a>
				</p>
			</div>
			<!--/.col-xs-6.col-lg-4-->
			<div class="col-xs-6 col-lg-4">
				<h2>갤러리 게시판 관리</h2>
				<p>썸네일 처리 게시판. 입력 처리 완료. lightbox 처리.</p>
				<p>
					<a class="btn btn-default" href="/gallery/galleryList.do"
						role="button"> View details &raquo;</a>
				</p>
			</div>
			<!--/.col-xs-6.col-lg-4-->
			<div class="col-xs-6 col-lg-4">
				<h2>로그인 및 회원 관리</h2>
				<p>회원 가입/정보 수정/회원 탈퇴 처리 완료. 로그인 및 로그아웃 처리 완료.</p>
				<p>
					<a class="btn btn-default" href="/member/login.do" role="button">
						View details &raquo;</a>
				</p>
			</div>
			<!--/.col-xs-6.col-lg-4-->
		</div>
		<!--/row-->
	</div>
	<!--/.container-->
	<footer class="footer">

		<tiles:insertAttribute name="footer" />

	</footer>
	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
	<script src="/resources/include/dist/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="/resources/include/dist/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>