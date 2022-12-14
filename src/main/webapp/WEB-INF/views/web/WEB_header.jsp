<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div class="about_backtop">
	    <div class="backtop">
	        <i class="fa fa-angle-double-up"></i>
	    </div>
	    <p class="backtop_text">Về đầu trang</p>
	</div>
	<!-- Page Preloder -->
	<div id="preloder">
	    <div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	<div class="humberger__menu__overlay"></div>
	<div class="humberger__menu__wrapper">
	    <div class="humberger__menu__logo">
	        <a href="#"><img src="assetsWEB/img/logoTTpetSHop(1).png" alt=""></a>
	    </div>
	    <div class="humberger__menu__cart">
	        <ul>
	            <!--<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>-->
	            <li><a href='<c:url value="/User-Cart"/>'><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
	        </ul>
	        <div class="header__cart__price">item: <span>$150.00</span></div>
	    </div>
	    <div class="humberger__menu__widget">
	        <div class="header__top__right__language">
	            <img src="img/language.png" alt="">
	            <div>English</div>
	            <span class="arrow_carrot-down"></span>
	            <ul>
	                <li><a href="#">Spanis</a></li>
	                <li><a href="#">English</a></li>
	            </ul>
	        </div>
	        <div class="header__top__right__auth">
	            <a href="#"><i class="fa fa-user"></i> Login</a>
	        </div>
	    </div>
	    <nav class="humberger__menu__nav mobile-menu">
	        <ul>
	            <li class="active"><a href="./index.html">Home</a></li>
	            <li><a href="./shop-grid.html">Shop</a></li>
	            <li><a href="#">Pages</a>
	                <ul class="header__menu__dropdown">
	                    <li><a href="./shop-details.html">Shop Details</a></li>
	                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
	                    <li><a href="./checkout.html">Check Out</a></li>
	                    <li><a href="./blog-details.html">Blog Details</a></li>
	                </ul>
	            </li>
	            <li><a href="./blog.html">Blog</a></li>
	            <li><a href="./contact.html">Contact</a></li>
	        </ul>
	    </nav>
	    <div id="mobile-menu-wrap"></div>
	    <div class="header__top__right__social">
	        <a href="#"><i class="fa fa-facebook"></i></a>
	        <a href="#"><i class="fa fa-twitter"></i></a>
	        <a href="#"><i class="fa fa-linkedin"></i></a>
	        <a href="#"><i class="fa fa-pinterest-p"></i></a>
	    </div>
	    <div class="humberger__menu__contact">
	        <ul>
	            <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
	            <li>Free Shipping for all Order of $99</li>
	        </ul>
	    </div>
	</div>
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<header class="header">
	    <div class="header__top">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-6 col-md-6">
	                    <div class="header__top__left">
	                        <ul>
	                            <li><i class="fa fa-envelope"></i> tamphamasd@gmail.com</li>
	                            <li>Miễn phí vận chuyển cho đơn hàng trên 300.000đ</li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="col-lg-6 col-md-6">
	                    <div class="header__top__right">
	                        <div class="header__top__right__social">
	                            <a href="https://www.facebook.com/quitam.pham"><i class="fa fa-facebook"></i></a>
	                            <a href="#"><i class="fa fa-twitter"></i></a>
	                            <a href="#"><i class="fa fa-linkedin"></i></a>
	                            <!--<a href="#"><i class="fa fa-pinterest-p"></i></a>-->
	                        </div>
	                        <div class="header__top__right__language">
	                            <img src="assetsWEB/img/vie-language.png" alt="">
	                            <div>Options</div>

	                            <c:if test="${not empty USERMODEL }">
	                                <span class="arrow_carrot-down"></span>
	                                <ul>
	                                    <!--<li><a href='<c:url value="/User-profile"/>'>Edit Profile</a></li>-->
	                                    <li><a href="User-profile">Edit Profile</a></li>
	                                    <li><a href='<c:url value="/log-out?action=logout"/>'>Logout</a></li>
	                                </ul>
                                    <div class="header__top__right__auth">
                                        <a href="#"><i class="fa fa-user"></i><c:out value="${USERMODEL.fullname}"/></a>
                                    </div>
	                            </c:if>
	                        </div>
	                        <c:if test="${not empty USERMODEL }">
	                        </c:if>
	                        <c:if test="${empty USERMODEL }">
	                            <div class="header__top__right__auth">
	                                <a href='<c:url value="/log-in?action=login"/>'><i class="fa fa-user"></i>Đăng Nhập</a>
	                            </div>
	                        </c:if>
	                    </div>
	                </div>
	            </div>
	            <div class="row">
	                <marquee behavior="scroll" direction="left">Your scrolling text goes here</marquee>
	            </div>
	        </div>
	    </div>
	    <div class="container">
	        <div class="row">
	            <div class="col-lg-3">
	                <div class="header__logo">
	                    <a href="./index.html"><img src="assetsWEB/img/TTPETSHOP(1).png" alt=""></a>
	                </div>
	            </div>
	            <div class="col-lg-7">
	                <nav class="header__menu">
	                    <ul>
	                        <li class="active"><a href="./index.html">Trang chủ</a></li>
	                        <li><a href="./shop-grid.html">Shop</a>
	                            <ul class="header__menu__dropdown">
	                                <li><a href="#">Chó</a></li>
	                                <li><a href="#">Mèo</a></li>
	                                <li><a href="#">Chim</a></li>
	                                <li><a href="#">Hamster</a></li>
	                            </ul>
	                        </li>
	                        <li><a href="#">Pages</a>
	                            <ul class="header__menu__dropdown">
	                                <li><a href="./shop-details.html">Shop Details</a></li>
	                                <li><a href="./shoping-cart.html">Shoping Cart</a></li>
	                                <li><a href="./checkout.html">Check Out</a></li>
	                                <li><a href="./blog-details.html">Blog Details</a></li>
	                            </ul>
	                        </li>
	                        <li><a href="./blog.html">Blog</a></li>
	                        <li><a href="./contact.html">Contact</a></li>
	                    </ul>
	                </nav>
	            </div>
	            <div class="col-lg-2">
	                <div class="header__cart">
	                    <ul>
	                        <!-- <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li> -->
	                        <li><a href='<c:url value="/User-Cart"/>'><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
	                    </ul>
	                    <div class="header__cart__price">item: <span>$150.00</span></div>
	                </div>
	            </div>
	        </div>
	        <div class="humberger__open">
	            <i class="fa fa-bars"></i>
	        </div>
	    </div>
	</header>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<section class="hero hero-normal">
	    <div class="container">
	        <div class="row">
	            <div class="col-lg-3">
	                <div class="hero__categories">
	                    <div class="hero__categories__all">
	                        <i class="fa fa-bars"></i>
	                        <span>All departments</span>
	                    </div>
	                    <ul>
	                        <li><a href="#">Fresh Meat</a></li>
	                        <li><a href="#">Vegetables</a></li>
	                        <li><a href="#">Fruit & Nut Gifts</a></li>
	                        <li><a href="#">Fresh Berries</a></li>
	                        <li><a href="#">Ocean Foods</a></li>
	                        <li><a href="#">Butter & Eggs</a></li>
	                        <li><a href="#">Fastfood</a></li>
	                        <li><a href="#">Fresh Onion</a></li>
	                        <li><a href="#">Papayaya & Crisps</a></li>
	                        <li><a href="#">Oatmeal</a></li>
	                        <li><a href="#">Fresh Bananas</a></li>
	                    </ul>
	                </div>
	            </div>
	            <div class="col-lg-9">
	                <div class="hero__search">
	                    <div class="hero__search__form">
	                        <form action="./home" method="get">
	                            <div class="hero__search__categories">
	                                All Categories
	                                <span class="arrow_carrot-down"></span>
	                            </div>
	                            <input type="hidden" name="action" value="search">
	                            <input type="text" name="searchString" placeholder="What do yo u need?">
	                            <button type="submit" class="site-btn">SEARCH</button>
	                        </form>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
	<!-- Hero Section End -->