<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" type="text/css" href="${rootPath}/css/info_info.css">
<script src="${rootPath}/js/info_info.js"></script>

<body>
	<article class="title">
		<p>도서정보</p>
	</article>
	<table>
		<tr>
			<th>도서코드</th>
			<td>${InfoDTO.b_code}</td>
			<th>도서명</th>
			<td>${InfoDTO.b_name}</td>
		</tr>
		
		<tr>
			<th>저자</th>
			<td>${InfoDTO.b_auther}</td>
			<th>출판사</th>
			<td>${InfoDTO.b_comp}</td>
		</tr>
		
		<tr>
			<th>구입일자</th>
			<td>${InfoDTO.b_year}</td>
			<th>구입가격</th>
			<td>${InfoDTO.b_iprice}</td>
		</tr>
	</table>
	
	<div class="button_box1">
		<button class="info_button" id="info_edit" data-bcode="${InfoDTO.b_code}" type="button">도서정보 수정</button>
		<button class="info_button" id="info_delete" data-bcode="${InfoDTO.b_code}" type="button">도서정보 삭제</button>
	</div>
	
	<article class="title">
		<p>독서록</p>
	</article>
	<c:choose>
		<c:when test="${empty reportInfoDTO}">
			<p class="noReport">독서록이 없습니다</p>
		</c:when>
		<c:otherwise>
			<table>
				<tr>
					<th>일련번호</th>
					<td>${reportInfoDTO.rb_seq}</td>
					<th>별점</th>
					<td>${reportInfoDTO.rb_star}</td>
				</tr>
				<tr>
					<th>독서일자</th>
					<td>${reportInfoDTO.rb_date}</td>
					<th>독서시작시간</th>
					<td>${reportInfoDTO.rb_stime}</td>
				</tr>
				<tr>
					<th>독서시간</th>
					<td>${reportInfoDTO.rb_rtime} 시간</td>
					<th>한줄평</th>
					<td>${reportInfoDTO.rb_subject}</td>
				</tr>
				<tr>
					<th colspan="4">소감</th>
				</tr>
				<tr>
					<td colspan="4">${reportInfoDTO.rb_text}</td>
				</tr>
			</table>
		</c:otherwise>
	</c:choose>
	
	<div class="button_box2">
		<button class="info_button" id="report_write" data-bcode="${InfoDTO.b_code}" type="button">독서록 쓰기</button>
	</div>
	
	<article class="title">
		<p>독서록 리스트</p>
	</article>
	<%@ include file="/WEB-INF/views/include/report_list.jsp" %>
</body>
</html>