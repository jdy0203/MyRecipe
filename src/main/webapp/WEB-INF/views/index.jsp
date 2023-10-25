<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="loginOutLink" value="${sessionScope.id==null ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${sessionScope.id==null ? 'Login' : 'Logout'}"/>
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
<header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light main_navbar">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">마이레시피</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="#">Home</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							My recipe
						</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">마이레시피</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">자유게시판</a></li>
						</ul>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="<c:url value='/login/login'/>">Login</a>
					</li>
				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="검색어를 입력해주세요" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
</header>

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