<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag"%>
<!DOCTYPE HTML>
<html>
<head>
<title>봄365</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&family=Jua&display=swap"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Ion Icon Fonts-->
<link rel="stylesheet" href="css/ionicons.min.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">

<!-- Flexslider  -->
<link rel="stylesheet" href="css/flexslider.css">

<!-- Owl Carousel -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<!-- Date Picker -->
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<!-- Flaticons  -->
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

<!-- Theme style  -->
<link rel="stylesheet" href="css/style.css">

<!-- contect animate.css -->
<link rel="stylesheet" href="css/animalsList.css">

<!-- Material Icons -->
   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


</head>

<body>

<!-- Page Header-->
		
		
	<div class="colorlib-loader"></div>
	<div id="page">
		<mytag:pageHeader pageSector=" " />
		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread">
							<span><a href="index.html">입양하기</a></span> / <span>동물소개</span>
						</p>
					</div>
				</div>
			</div>
		</div>
	

<!-- select-animals -->


	<div class="select-animals-container">
			<form class="" id="validate-form" action="/kams/adopt" method="get">
				<div class="row mb-1 mx-2">
					<div class="col-lg-10">
						<div class="row">
							<div class="col-sm-12 col-lg mb-3 mb-lg-0">
								<label class="d-block"> 
									<span class="h4 d-block text-dark font-weight-semi-bold mb-0">동물구분</span> 
									<small class="d-block text-secondary">개/고양이/기타</small>
								</label>
								<div class="js-form-message">
									<div class="js-focus-state form-group">
										<select name="species" class="form-control custom-select" data-msg="동물구분을 선택해 주세요" data-error-class="u-has-error" data-success-class="u-has-success">
											<option value="">All</option>
						
											<option value="개">개</option>
											<option value="고양이">고양이</option>
											<option value="기타">기타</option>
											<span class="material-icons">import_export</span>
										</select>
										
									</div>
								</div>
							</div>
							<div class="col-sm-12 col-lg mb-3 mb-lg-0">
								<label class="d-block"> 
									<span class="h4 d-block text-dark font-weight-semi-bold mb-0">성별</span> 
									<small class="d-block text-secondary">암컷/수컷</small>
								</label>
								<div class="js-form-message">
									<div class="js-focus-state form-group">
										<select name="sex" class="form-control custom-select" data-msg="성별을 선택해 주세요" data-error-class="u-has-error" data-success-class="u-has-success">
											<option value="">All</option>
											<option value="암컷">암컷</option>
											<option value="수컷">수컷</option>
										</select>
									</div>
								</div>			
							</div>
							<div class="col-sm-12 col-lg mb-3 mb-lg-0">
								<label class="d-block"> 
									<span class="h4 d-block text-dark font-weight-semi-bold mb-0">크기</span> 
									<small class="d-block text-secondary">대/중/소 </small>
								</label>
								<div class="js-form-message">
									<div class="js-focus-state form-group">
										<select name="weight" class="form-control custom-select" data-msg="크기을 선택해 주세요" data-error-class="u-has-error" data-success-class="u-has-success">
											<option value="">All</option>
				 							<option value="8">소(8kg 미만)</option>
											<option value="818">중(8~18kg 미만)</option>
				 							<option value="18">대(18kg이상)</option>
										</select>
									</div>
								</div>			
							</div>
							<div class="col-sm-12 col-lg mb-3 mb-lg-0">
								<label class="d-block"> 
									<span class="h4 d-block text-dark font-weight-semi-bold mb-0">연령</span> 
									<small class="d-block text-secondary">puppy/junior/adult/senior</small>
								</label>
								<div class="js-form-message">
									<div class="js-focus-state form-group">
										<select name="birth" class="form-control custom-select" data-msg="연령을 선택해 주세요" data-error-class="u-has-error" data-success-class="u-has-success">
											<option value="">All</option>
											<option value="6">Puppy(~ 6개월)</option>
											<option value="724">Junior(7개월 ~ 2살)</option>
											<option value="3696">Adult(3살 ~ 8살)</option>
											<option value="108">Senior(9살 ~)</option>
										</select>
									</div>
								</div>			
							</div>
						
							<div class="col-12 g-pt-15">
								<div class="input-group">
									<input type="text" class="form-control" name="name" id="name" placeholder="이름(이름을 모를경우 비워두셔도 됩니다.)" aria-label="이름 검색" aria-describedby="searchName">
								</div>				
							</div>	
						</div>
					</div>
					<div class="col-lg-2 g-pt-30 g-pt-60--lg search">
						<div class="g-pb-15 g-pb-sm-0 search-refresh">
							<!-- <button type="reset" id="query-reset" class="btn btn-sm btn-block btn-outline-primary transition-3d-hover mb-1">초기화</button> -->
							<!-- <a href="/kams/adopt" class="btn btn-sm btn-block btn-outline-primary transition-3d-hover mb-1">초기화</a> -->
							<a href="/kams/adopt" class="btn btn-sm btn-block g-brd-0 text-secondary g-font-size-14 g-px-0 mb-1 reset">
								<i class="icon-refresh"></i> <span class="g-text-underline search-refresh">검색 설정 초기화</span></a>
						</div>
						<div class="g-pt-15--lg">
							<button type="submit" class="btn btn-sm btn-block btn-primary btn-search-animals">검색</button>
						</div>
					</div>
				</div>
			</form>
		</div>
		
		
<!-- animals list -->


				<div class="row animals-photos">
					<div class="col-md-3 col-lg-3 mb-4 text-center animals-photos-text">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="images/sample.png" class="img-fluid animals" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">강록</a></h2>
								<span class="animal_spacies">개</span></br>
								<span class="animal_gender">수컷(중성화O)</span></br>
							    <span class="animal_age">2살 4개월 <span class="animal_weight">/ 21.0kg</span></span>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-lg-3 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="images/sample.png" class="img-fluid animals" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">남희</a></h2>
								<span class="animal_spacies">개</span></br>
								<span class="animal_gender">암컷(중성화O)</span></br>
							    <span class="animal_age">6개월 <span class="animal_weight">/ 6.5kg</span></span>
							</div>
						</div>
					</div>
						<div class="col-md-3 col-lg-3 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="images/sample.png" class="img-fluid animals" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">레슬리</a></h2>
								<span class="animal_spacies">개</span></br>
								<span class="animal_gender">수컷(중성화O)</span></br>
							    <span class="animal_age">1살 2개월 <span class="animal_weight">/ 7.9kg</span></span>
							</div>
						</div>
					</div>
						<div class="col-md-3 col-lg-3 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="images/sample.png" class="img-fluid animals" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">루시</a></h2>
								<span class="animal_spacies">개</span></br>
								<span class="animal_gender">암컷(중성화O)</span></br>
							    <span class="animal_age">4살 2개월 <span class="animal_weight">/ 7.5kg</span></span>
							</div>
						</div>
					</div>
						<div class="col-md-3 col-lg-3 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="images/sample.png" class="img-fluid animals" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">마리</a></h2>
								<span class="animal_spacies">고양이</span></br>
								<span class="animal_gender">암컷(중성화O)</span></br>
							    <span class="animal_age">5살 10개월 <span class="animal_weight">/ 4.6kg</span></span>
							</div>
						</div>
					</div>
						<div class="col-md-3 col-lg-3 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="images/sample.png" class="img-fluid animals" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">쿠로</a></h2>
								<span class="animal_spacies">고양이</span></br>
								<span class="animal_gender">수컷(중성화)</span></br>
							    <span class="animal_age">4살 1개월<span class="animal_weight">/ 2.8kg</span></span>
							</div>
						</div>
					</div>
						<div class="col-md-3 col-lg-3 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="images/sample.png" class="img-fluid animals" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">홀리</a></h2>
								<span class="animal_spacies">고양이</span></br>
								<span class="animal_gender">암컷(중성화O)</span></br>
							    <span class="animal_age">8살 1개월 <span class="animal_weight">/ 5.1kg</span></span>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-lg-3 mb-4 text-center">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="images/sample.png" class="img-fluid animals" alt="Free html5 bootstrap 4 template">
							</a>
							<div class="desc">
								<h2><a href="#">보석</a></h2>
								<span class="animal_spacies">개(믹스)</span></br>
								<span class="animal_gender">수컷(중성화O)</span></br>
							    <span class="animal_age">10살 2개월 <span class="animal_weight">/ 3.3kg</span></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="block-27">
		               <ul>
			               <li><a href="#"><i class="ion-ios-arrow-back"></i></a></li>
		                  <li class="active"><span>1</span></li>
		                  <li><a href="#">2</a></li>
		                  <li><a href="#">3</a></li>
		                  <li><a href="#">4</a></li>
		                  <li><a href="#">5</a></li>
		                  <li><a href="#"><i class="ion-ios-arrow-forward"></i></a></li>
		               </ul>
		            </div>
					</div>
				</div>
			</div>
		</div>


			<!-- Page Footer-->
		<mytag:pageFooter />

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- popper -->
	<script src="js/popper.min.js"></script>
	<!-- bootstrap 4.1 -->
	<script src="js/bootstrap.min.js"></script>
	<!-- jQuery easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

</body>
</html>