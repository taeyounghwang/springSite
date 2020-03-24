<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 목록</title>
<link rel="stylesheet" type="text/css" href="/resources/include/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/include/css/board.css">

<script type="text/javascript"
src="/resources/include/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/resources/include/js/common.js"></script>
<script type="text/javascript">
	$(function(){
		/* 글쓰기 버튼 클릭 시 처리 이벤트*/
		$("#insertFormBtn").click(function(){
			location.href = "/board/writeForm.do";
		});
		
		/* 제목 클릭시 상세 페이지 이동을 위한 처리 이벤트 */
		$(".goDetail").click(function(){
			var b_num = $(this).parents("tr").attr("data-num");
			$("#b_num").val(b_num);
			console.log("글번호 : "+ b_num);
			// 상세 페이지로 이동하기 위해 form 추가 (id: detailForm)
			$("#detailForm").attr({
				"method":"get",
				"action":"/board/boardDetail.do"
			});
			$("#detailForm").submit();
		});
		
	});
</script>
</head>
<body>
	<div class="contentContainer">
		<div class="contentTit"><h3>게시판 리스트</h3></div>
		
		<%-- ========== 상세 페이지 이동을 위한 FORM ========== --%>
		<form name="detailForm" id="detailForm">
			<input type="hidden" name="b_num" id="b_num">
		</form>
		<%-- ==================== 리스트 시작 ==================== --%>
		<div id="boardList">
		<table summary="게시판리스트">
			<colgroup>
				<col width="10%" />
				<col width="62%" />
				<col width="15%" />
				<col width="13%" />
			</colgroup>
			<thead>
				<tr>
					<th class="order">글번호</th>
					<th>글제목</th>
					<th data-value="b_data" class="order">작성일</th>
					<th class="borcle">작성자</th>
				</tr>
			</thead>
			<tbody id="list">
				<!-- 데이터 출력 -->
				<c:choose>
					<c:when test="${not empty boardList}">
						<c:forEach var="board" items="${boardList}" varStatus="status">
							<tr class="tac" data-num="${board.b_num}">
								<td>${board.b_num}</td>
								<td class="goDetail tal" align="left">
								${board.b_title}</td>
								<td>${board.b_date}</td>
								<td class="name">
								${board.b_name}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="4" class="tac">등록된 게시물이 존재 하지 않습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		</div>
		<%-- ============================== 리스트 종료 ================================= --%>
		
		<%-- =========================== 글쓰기 버튼 출력 시작 ================================= --%>
		<div class="contentBtn">
			<input type="button" value="글쓰기" id="insertFormBtn">
		</div>
		<%-- ============================== 글쓰기 버튼 출력 종료 ======================================= --%>
	</div>
</body>
</html>