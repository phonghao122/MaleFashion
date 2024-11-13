<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                    <link
                        href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
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
                                        <h4>Shopping Cart</h4>
                                        <div class="breadcrumb__links">
                                            <a href="/">Home</a>
                                            <a href="/shop">Shop</a>
                                            <span>Shopping Cart</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Breadcrumb Section End -->

                    <!-- Shopping Cart Section Begin -->
                    <section class="shopping-cart spad">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="shopping__cart__table">
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th>Product</th>
                                                    <th>Quantity</th>
                                                    <th>Total</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:if test="${ empty cartDetails}">
                                                    <tr>
                                                        <td class="product__cart__item">
                                                            <div class="product__cart__item__text">
                                                                Cart is empty! Let's go Shopping
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </c:if>
                                                <c:forEach var="cd" items="${cartDetails}" varStatus="status">
                                                    <tr>
                                                        <td class="product__cart__item">
                                                            <div class="product__cart__item__pic">
                                                                <img src="/images/product/${cd.product.image}"
                                                                    style="width: 80px; height: 80px;" alt="">
                                                            </div>
                                                            <div class="product__cart__item__text">
                                                                <h6>${cd.product.name}</h6>
                                                                <h5>$${cd.product.price}</h5>
                                                            </div>
                                                        </td>
                                                        <td class="quantity__item">
                                                            <div class="quantity">
                                                                <div class="pro-qty-2">
                                                                    <input type="text" value="${cd.quantity}"
                                                                        data-cart-detail-id="${cd.id}"
                                                                        data-cart-detail-price="${cd.price}"
                                                                        data-cart-detail-index="${status.index}">
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="cart__price" data-cart-detail-id="${cd.id}">$
                                                            ${cd.price * cd.quantity}</td>
                                                        <td class="cart__close">
                                                            <form action="/delete-product-to-cart/${cd.id}"
                                                                method="post">
                                                                <input type="hidden" name="${_csrf.parameterName}"
                                                                    value="${_csrf.token}" />
                                                                <button class="btn btn-md rounded-circle">
                                                                    <i class="fa fa-close"></i>
                                                                </button>
                                                            </form>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                            <div class="continue__btn">
                                                <a href="/shop">Continue Shopping</a>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                            <div class="continue__btn update__btn">
                                                <a href="#"><i class="fa fa-spinner"></i> Update cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="cart__discount">
                                        <h6>Discount codes</h6>
                                        <form action="#">
                                            <input type="text" placeholder="Coupon code">
                                            <button type="submit">Apply</button>
                                        </form>
                                    </div>
                                    <div class="cart__total">
                                        <h6>Cart total</h6>
                                        <ul>
                                            <li>Subtotal <span data-cart-total-price="${totalPrice}">$
                                                    ${totalPrice}</span></li>
                                            <li>Total <span data-cart-total-price="${totalPrice}">$ ${totalPrice}</span>
                                            </li>
                                        </ul>
                                        <form:form action="/confirm-checkout" method="post" modelAttribute="cart">
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                            <div style="display: block;">
                                                <c:forEach var="cartDetail" items="${cart.cartDetails}"
                                                    varStatus="status">
                                                    <div class="mb-3">
                                                        <div class="form-group">
                                                            <label>Id:</label>
                                                            <form:input class="form-control" type="text"
                                                                value="${cartDetail.id}"
                                                                path="cartDetails[${status.index}].id" />
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Quantity:</label>
                                                            <form:input class="form-control" type="text"
                                                                value="${cartDetail.quantity}"
                                                                path="cartDetails[${status.index}].quantity" />
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                            <button class="primary-btn">Proceed to checkout</button>
                                        </form:form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Shopping Cart Section End -->

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