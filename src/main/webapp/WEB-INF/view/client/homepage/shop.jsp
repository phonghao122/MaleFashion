<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="zxx">

        <head>
            <meta charset="UTF-8">
            <meta name="description" content="Male_Fashion Template">
            <meta name="keywords" content="Male_Fashion, unica, creative, html">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <title>Male-Fashion | Template</title>

            <!-- Google Font -->
            <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
                rel="stylesheet">

            <!-- Css Styles -->
            <link rel="stylesheet" href="/client/css/bootstrap.min.css" type="text/css">
            <link rel="stylesheet" href="/client/css/font-awesome.min.css" type="text/css">
            <link rel="stylesheet" href="/client/css/elegant-icons.css" type="text/css">
            <link rel="stylesheet" href="/client/css/magnific-popup.css" type="text/css">
            <link rel="stylesheet" href="/client/css/nice-select.css" type="text/css">
            <link rel="stylesheet" href="/client/css/owl.carousel.min.css" type="text/css">
            <link rel="stylesheet" href="/client/css/slicknav.min.css" type="text/css">
            <link rel="stylesheet" href="/client/css/style.css" type="text/css">
        </head>

        <body>
            <!-- Page Preloder -->
            <div id="preloder">
                <div class="loader"></div>
            </div>

            <jsp:include page="../layout/header.jsp" />

            <!-- Breadcrumb Section Begin -->
            <section class="breadcrumb-option">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcrumb__text">
                                <h4>Shop</h4>
                                <div class="breadcrumb__links">
                                    <a href="/">Home</a>
                                    <span>Shop</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- Shop Section Begin -->
            <section class="shop spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="shop__sidebar">
                                <div class="shop__sidebar__search">
                                    <form action="#">
                                        <input type="text" placeholder="Search...">
                                        <button type="submit"><span class="icon_search"></span></button>
                                    </form>
                                </div>
                                <div class="shop__sidebar__accordion">
                                    <div class="accordion" id="accordionExample">
                                        <div class="card">
                                            <div class="card-heading">
                                                <a data-toggle="collapse" data-target="#collapseOne">Categories</a>
                                            </div>
                                            <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <div class="shop__sidebar__categories">
                                                        <ul class="nice-scroll">
                                                            <li><a href="#">Men (20)</a></li>
                                                            <li><a href="#">Women (20)</a></li>
                                                            <li><a href="#">Bags (20)</a></li>
                                                            <li><a href="#">Clothing (20)</a></li>
                                                            <li><a href="#">Shoes (20)</a></li>
                                                            <li><a href="#">Accessories (20)</a></li>
                                                            <li><a href="#">Kids (20)</a></li>
                                                            <li><a href="#">Kids (20)</a></li>
                                                            <li><a href="#">Kids (20)</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-heading">
                                                <a data-toggle="collapse" data-target="#collapseTwo">Branding</a>
                                            </div>
                                            <div id="collapseTwo" class="collapse show" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <div class="shop__sidebar__brand">
                                                        <ul>
                                                            <li><a href="#">Louis Vuitton</a></li>
                                                            <li><a href="#">Chanel</a></li>
                                                            <li><a href="#">Hermes</a></li>
                                                            <li><a href="#">Gucci</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-heading">
                                                <a data-toggle="collapse" data-target="#collapseThree">Filter Price</a>
                                            </div>
                                            <div id="collapseThree" class="collapse show"
                                                data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <div class="shop__sidebar__price">
                                                        <ul>
                                                            <li><a href="#">$0.00 - $50.00</a></li>
                                                            <li><a href="#">$50.00 - $100.00</a></li>
                                                            <li><a href="#">$100.00 - $150.00</a></li>
                                                            <li><a href="#">$150.00 - $200.00</a></li>
                                                            <li><a href="#">$200.00 - $250.00</a></li>
                                                            <li><a href="#">250.00+</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-heading">
                                                <a data-toggle="collapse" data-target="#collapseFour">Size</a>
                                            </div>
                                            <div id="collapseFour" class="collapse show"
                                                data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <div class="shop__sidebar__size">
                                                        <label for="xs">xs
                                                            <input type="radio" id="xs">
                                                        </label>
                                                        <label for="sm">s
                                                            <input type="radio" id="sm">
                                                        </label>
                                                        <label for="md">m
                                                            <input type="radio" id="md">
                                                        </label>
                                                        <label for="xl">xl
                                                            <input type="radio" id="xl">
                                                        </label>
                                                        <label for="2xl">2xl
                                                            <input type="radio" id="2xl">
                                                        </label>
                                                        <label for="xxl">xxl
                                                            <input type="radio" id="xxl">
                                                        </label>
                                                        <label for="3xl">3xl
                                                            <input type="radio" id="3xl">
                                                        </label>
                                                        <label for="4xl">4xl
                                                            <input type="radio" id="4xl">
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-heading">
                                                <a data-toggle="collapse" data-target="#collapseFive">Colors</a>
                                            </div>
                                            <div id="collapseFive" class="collapse show"
                                                data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <div class="shop__sidebar__color">
                                                        <label class="c-1" for="sp-1">
                                                            <input type="radio" id="sp-1">
                                                        </label>
                                                        <label class="c-2" for="sp-2">
                                                            <input type="radio" id="sp-2">
                                                        </label>
                                                        <label class="c-3" for="sp-3">
                                                            <input type="radio" id="sp-3">
                                                        </label>
                                                        <label class="c-4" for="sp-4">
                                                            <input type="radio" id="sp-4">
                                                        </label>
                                                        <label class="c-5" for="sp-5">
                                                            <input type="radio" id="sp-5">
                                                        </label>
                                                        <label class="c-6" for="sp-6">
                                                            <input type="radio" id="sp-6">
                                                        </label>
                                                        <label class="c-7" for="sp-7">
                                                            <input type="radio" id="sp-7">
                                                        </label>
                                                        <label class="c-8" for="sp-8">
                                                            <input type="radio" id="sp-8">
                                                        </label>
                                                        <label class="c-9" for="sp-9">
                                                            <input type="radio" id="sp-9">
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div class="shop__product__option">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="shop__product__option__left">
                                            <p>Showing 1–12 of 126 results</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="shop__product__option__right">
                                            <p>Sort by Price:</p>
                                            <select>
                                                <option value="">Low To High</option>
                                                <option value="">$0 - $55</option>
                                                <option value="">$55 - $100</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <c:set var="saleStatus">
                                    <span class="label">Hot</span>
                                </c:set>
                                <c:set var="newStatus">
                                    <span class="label">New</span>
                                </c:set>
                                <c:forEach var="product" items="${products}">
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div
                                            class="product__item ${product.status.equals('new-arrivals') ? 'new' : 'sale'}">
                                            <div class="product__item__pic set-bg"
                                                data-setbg="/images/product/${product.image}">
                                                ${product.status.equals('new-arrivals') ? newStatus : saleStatus}
                                                <ul class="product__hover">
                                                    <li><a href="/product/detail/${product.id}"><img
                                                                src="/client/img/icon/search.png" alt=""></a></li>
                                                </ul>
                                            </div>

                                            <div class="product__item__text">
                                                <h6><a href="/product/detail/${product.id}">${product.name}</a></h6>
                                                <a href="/add-to-cart" class="add-cart">+ Add To Cart</a>
                                                <div class="rating">
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <h5>$${product.price}</h5>
                                                <div class="product__color__select">
                                                    <label for="pc-4">
                                                        <input type="radio" id="pc-4">
                                                    </label>
                                                    <label class="active black" for="pc-5">
                                                        <input type="radio" id="pc-5">
                                                    </label>
                                                    <label class="grey" for="pc-6">
                                                        <input type="radio" id="pc-6">
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="product__pagination">
                                        <a class="active" href="#">1</a>
                                        <a href="#">2</a>
                                        <a href="#">3</a>
                                        <span>...</span>
                                        <a href="#">21</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Shop Section End -->

            <jsp:include page="../layout/footer.jsp" />

            <!-- Js Plugins -->
            <script src="/client/js/jquery-3.3.1.min.js"></script>
            <script src="/client/js/bootstrap.min.js"></script>
            <script src="/client/js/jquery.nice-select.min.js"></script>
            <script src="/client/js/jquery.nicescroll.min.js"></script>
            <script src="/client/js/jquery.magnific-popup.min.js"></script>
            <script src="/client/js/jquery.countdown.min.js"></script>
            <script src="/client/js/jquery.slicknav.js"></script>
            <script src="/client/js/mixitup.min.js"></script>
            <script src="/client/js/owl.carousel.min.js"></script>
            <script src="/client/js/main.js"></script>
        </body>

        </html>