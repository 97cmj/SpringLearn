<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
<title>게시글 작성</title>
</head>
<style>
.input-style {
	font-size: 20px;
	margin-bottom: 5px;
}
</style>
<body>



	<br>
	<h2 align="center">게시글 작성</h2>

	<div class="container">
		<form action="/board/enroll" method="post">
			<div class="form-group">
				<b><label for="subject" class="input-style">제목</label></b> <input
					type="text" class="form-control" name="title"
					placeholder="제목을 입력하세요.">
			</div>
			<br>
			<div class="form-group">
				<b><label for="content" class="input-style">내용</label></b>
				<textarea class="form-control" name="content" rows="8"
					placeholder="내용을 입력하세요." style="resize: none"></textarea>
			</div>
			<br>
			<div class="form-group">
				<b><label for="writer" class="input-style">작성자</label></b> <input
					type="text" class="form-control" name="writer">
			</div>
			<br>
			<div align="center">
				<button type="submit" class="btn btn-outline-dark">글쓰기</button>
				<button type="button" class="btn btn-outline-dark listB">목록</button>
			</div>
		</form>
	</div>

	<script>
		//글쓰기 버튼 클릭시 제목,내용,작성자가 비어있는지 체크
		$(document).ready(function() {
			$("button[type='submit']").click(function() {
				var title = $("input[name='title']").val();
				var content = $("textarea[name='content']").val();
				var writer = $("input[name='writer']").val();
				if (title == "") {
					alert("제목을 입력하세요.");
					return false;
				} else if (content == "") {
					alert("내용을 입력하세요.");
					return false;
				} else if (writer == "") {
					alert("작성자를 입력하세요.");
					return false;
				}
			});
		});
		
		$(".listB").click(function() {
			location.href = "/board/list";
			
		});
		
	</script>
</body>
</html>