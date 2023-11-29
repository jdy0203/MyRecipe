<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page session="true"%>
<c:set var="loginId" value="${sessionScope.id}"/>
<c:set var="loginOutLink" value="${id==null ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${id==null ? 'Login' : 'Logout'}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Vegan Title</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="main.css">
</head>
<body>
<!-- 헤더 -->
<jsp:include page="header.jsp"/>
<!-- 헤더 끝-->
<!-- 메인 이미지 -->
<div class="container main_con">
	<!-- My recipe -->
	<div class="container veganNews">
		<div class="row">
			<h1>My recipes</h1>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="img/dice1.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="img/dice1.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="img/dice1.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card" style="width: 18rem;">
					<img src="img/dice1.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 오늘의 추천 레시피 -->
	<div class="container veganWhy">
		<div class="row">
			<h1>오늘의 추천 레시피</h1>
			<div class="col">
				<img src="img/dice1.jpg" alt="" width="100%">
			</div>
			<div class="col">
				<div class="whyContent">
					<div class="whyContent2">
						<h4>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maxime ad vel ut et magni! Odio, illum aliquid porro maiores dolorem cum voluptate, molestiae doloremque culpa nesciunt veritatis expedita ipsa. Velit!
						</h4>

						<button type="button" class="btn btn-primary whyBtn">Primary</button>
					</div>
				</div>
			</div>
		</div>

		<!-- 푸터 -->
		<div class="container">
			<footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
				<div class="col-md-4 d-flex align-items-center">
					<a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
						<svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
					</a>
					<span class="text-muted">&copy; 2021 Company, Inc</span>
				</div>

				<ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
					<li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
					<li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
					<li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
				</ul>
			</footer>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>