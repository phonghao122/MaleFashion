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
                                        <div class="col-12">
                                            <button class="btn border-secondary text-primary text-uppercase mb-4"
                                                id="btnFilter">
                                                Lọc Sản Phẩm
                                            </button>
                                        </div>
                                        <div class="card">

                                            <div class="card-heading">
                                                <a data-toggle="collapse" data-target="#collapseOne">Categories</a>
                                            </div>
                                            <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                                <div class="card-body">

                                                    <div class="shop__sidebar__categories" id="categoryFilter">
                                                        <div class="nice-scroll form-check form-check-inline">
                                                            <input class="form-check-input" value="MEN" type="checkbox">
                                                            <label class="form-check-label" for="factory-1">Men</label>
                                                        </div>

                                                        <div class="nice-scroll form-check form-check-inline">
                                                            <input class="form-check-input" value="WOMEN"
                                                                type="checkbox">
                                                            <label class="form-check-label"
                                                                for="factory-1">Women</label>
                                                        </div>
                                                        <div class="nice-scroll form-check form-check-inline">
                                                            <input class="form-check-input" value="BAGS"
                                                                type="checkbox">
                                                            <label class="form-check-label" for="factory-1">Bags</label>
                                                        </div>
                                                        <div class="nice-scroll form-check form-check-inline">
                                                            <input class="form-check-input" value="CLOTHING"
                                                                type="checkbox">
                                                            <label class="form-check-label"
                                                                for="factory-1">Clothing</label>
                                                        </div>
                                                        <div class="nice-scroll form-check form-check-inline">
                                                            <input class="form-check-input" value="SHOES"
                                                                type="checkbox">
                                                            <label class="form-check-label"
                                                                for="factory-1">Shoes</label>
                                                        </div>
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
                                                    <div class="shop__sidebar__brand" id="brandFilter">
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" value="LV">
                                                            <label class="form-check-label" for="target-1">Louis
                                                                Vuitton</label>
                                                        </div>

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox"
                                                                value="CHANEL">
                                                            <label class="form-check-label"
                                                                for="target-1">Chanel</label>
                                                        </div>

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox"
                                                                value="GUCCI">
                                                            <label class="form-check-label" for="target-1">Gucci</label>
                                                        </div>

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox"
                                                                value="HERMES">
                                                            <label class="form-check-label"
                                                                for="target-1">Hermes</label>
                                                        </div>

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
                                                    <div class="shop__sidebar__price" id="priceFilter">
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" id="price-2"
                                                                value="$0-$100">
                                                            <label class="form-check-label" for="price-2">$0.00 -
                                                                $100.00</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" id="price-2"
                                                                value="$100-$500">
                                                            <label class="form-check-label" for="price-2">$100.00 -
                                                                $500.00</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" id="price-2"
                                                                value="$500-$1000">
                                                            <label class="form-check-label" for="price-2">$500 -
                                                                $1000.00</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" id="price-2"
                                                                value="$1000+">
                                                            <label class="form-check-label"
                                                                for="price-2">$1000.00+</label>
                                                        </div>
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
                                                    <div class="shop__sidebar__size" id="sizeFilter">
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" id="s"
                                                                value="S">
                                                            <label class="form-check-label" for="s">S</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" id="m"
                                                                value="M">
                                                            <label class="form-check-label" for="m">M</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" id="l"
                                                                value="L">
                                                            <label class="form-check-label" for="l">L</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" id="xl"
                                                                value="XL">
                                                            <label class="form-check-label" for="xl">XL</label>
                                                        </div>
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
                                                    <div class="shop__sidebar__color" id="colorFilter">
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" value="1" type="checkbox"
                                                                id="sp-1">
                                                            <label class="form-check-label c-1" for="sp-1"></label>
                                                        </div>

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" value="2" type="checkbox"
                                                                id="sp-2">
                                                            <label class="c-2 form-check-label" for="sp-2">

                                                            </label>
                                                        </div>

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" value="3" type="checkbox"
                                                                id="sp-3">
                                                            <label class="c-3 form-check-label" for="sp-3">

                                                            </label>
                                                        </div>

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" value="4" type="checkbox"
                                                                id="sp-4">
                                                            <label class="c-4 form-check-label" for="sp-4">

                                                            </label>
                                                        </div>

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" value="5" type="checkbox"
                                                                id="sp-5">
                                                            <label class="c-5 form-check-label" for="sp-5">

                                                            </label>
                                                        </div>

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" value="6" type="checkbox"
                                                                id="sp-6">
                                                            <label class="c-6 form-check-label" for="sp-6">

                                                            </label>
                                                        </div>

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" value="7" type="checkbox"
                                                                id="sp-7">
                                                            <label class="c-7 form-check-label" for="sp-7">

                                                            </label>
                                                        </div>

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" value="8" type="checkbox"
                                                                id="sp-8">
                                                            <label class="c-8 form-check-label" for="sp-8">

                                                            </label>
                                                        </div>

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" value="9" type="checkbox"
                                                                id="sp-9">
                                                            <label class="c-9 form-check-label" for="sp-9">

                                                            </label>
                                                        </div>

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
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" id="sort-2" value="Default"
                                                    name="radio-sort">
                                                <label class="form-check-label" for="sort-2">Default</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" id="sort-2"
                                                    value="High-To-Low" name="radio-sort">
                                                <label class="form-check-label" for="sort-2">High To Low</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" id="sort-2"
                                                    value="Low-To-High" name="radio-sort">
                                                <label class="form-check-label" for="sort-2">Low To High</label>
                                            </div>
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
                                                <h6>${product.name}</h6>
                                                <form method="post" action="/add-to-cart/${product.id}">
                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                        value="${_csrf.token}" />
                                                    <button class="add-cart">+ Add To Cart</button>
                                                </form>
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
                                        <c:forEach begin="0" end="${totalPages - 1}" varStatus="loop">
                                            <a class="${(loop.index + 1) eq currentPage ? 'active ' : ''}"
                                                href="/shop?page=${loop.index + 1}">${loop.index + 1}</a>
                                        </c:forEach>
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