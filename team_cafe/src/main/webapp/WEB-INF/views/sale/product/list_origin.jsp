<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리스트</title>
<style type="text/css">
	th{background: orange};
</style>
</head>
<body>
<h1>리스트</h1>
<a href="writeform.cafe">글 쓰기</a>
<table width="600" cellpadding="3">
	<tr>
		<th width="50">번호</th>
		<th width="100">카테고리</th>
		<th width="100">이미지</th>
		<th width="120">상품명</th>
		<th width="80">가격</th>
		<th width="120"></th>
	</tr>	

<c:forEach var="b" items="${list}">


	<tr>
		<td>${b.cafe_product_code}</td>
		<%-- <td>
		
		<c:forEach begin="0" end="${b.tab}">
		&nbsp;&nbsp;&nbsp;
		</c:forEach> --%>
		
	<%-- 	<a href="read.htm?num=${b.cafe_product_code}&pg=${pg}">${b.subject}</a></td> --%>
		<td>${b.product_category_name}</td>
		<td><img src="../upload/${b.cafe_product_img}" style="width:150px"></td>
		<td>${b.cafe_product_name}</td>
		<td>${b.cafe_product_price}</td>
		<td><input type="button" value="수정" onclick="location.href='updateform.cafe?num=${b.cafe_product_code}&pg=${pg}'" /></td>
	</tr>
</c:forEach>

</table>
<div style="width:600px;text-align:right"><a href="writeform.cafe">글쓰기</a></div>

<table width="600">
<tr>
	<td align="center">
		<!-- 처음 이전 링크 -->
		<c:if test="${pg>1}">  <!-- 5>10 : false / 15>10 : true -->
			[<a href="list.cafe?pg=1">◀◀</a>]
			[<a href="list.cafe?pg=${pg-1}">◀</a>]		
		</c:if>
		<c:if test="${pg<=1}"> <!-- 5<=10 :true / 15<=10:false -->
			[<span style="color:gray">◀◀</span>]	
			[<span style="color:gray">◀</span>]
		</c:if>
		
		<!-- 블록 범위 찍기 -->
		<c:forEach begin="${fromPage}" end="${toPage}" var="i">
			<c:if test="${i==pg}">[${i}]</c:if>
			<c:if test="${i!=pg}">
				[<a href="list.cafe?pg=${i}">${i}</a>]
			</c:if>
		</c:forEach>
		
		<!-- 다음, 이후 -->
		<c:if test="${pg<allPage}"> <!-- 20<21 : true -->
				[<a href="list.cafe?pg=${pg+1}">▶</a>]
				[<a href="list.cafe?pg=${allPage}">▶▶</a>]
		
		</c:if>	
		<c:if test="${pg>=allPage}"> <!-- 21>=21 :true -->
				[<span style="color:gray">▶</span>]
				[<span style="color:gray">▶▶</span>]
		
		</c:if>			
		
	</td>
</tr>
</table>
</body>
</html>