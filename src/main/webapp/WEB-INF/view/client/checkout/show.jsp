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
                                        <h4>Check Out</h4>
                                        <div class="breadcrumb__links">
                                            <a href="/">Home</a>
                                            <a href="/shop">Shop</a>
                                            <span>Check Out</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Breadcrumb Section End -->

                    <!-- Checkout Section Begin -->
                    <section class="checkout spad">
                        <div class="container">
                            <div class="checkout__form">
                                <form:form action="/check-out" method="post" modelAttribute="newOrder">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    <div class="row">
                                        <div class="col-lg-8 col-md-6">
                                            <h6 class="coupon__code"><span class="icon_tag_alt"></span> Have a coupon?
                                                <a href="#">Click
                                                    here</a> to enter your code
                                            </h6>
                                            <h6 class="checkout__title">Billing Details</h6>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="checkout__input">
                                                        <p>Fist Name<span>*</span></p>
                                                        <form:input path="firstName" type="text" />
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="checkout__input">
                                                        <p>Last Name<span>*</span></p>
                                                        <form:input path="lastName" type="text" />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="checkout__input">
                                                <p>Address<span>*</span></p>
                                                <form:input path="address" type="text" placeholder="Street Address"
                                                    class="checkout__input__add" />
                                            </div>
                                            <div class="checkout__input">
                                                <p>Town/City<span>*</span></p>
                                                <form:input path="city" type="text" />
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="checkout__input">
                                                        <p>Phone<span>*</span></p>
                                                        <form:input path="phone" type="text" />
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="checkout__input">
                                                        <p>Email<span></span></p>
                                                        <form:input path="email" type="text" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="checkout__input">
                                                <p>Order notes<span></span></p>
                                                <form:input path="orderNote" type="text"
                                                    placeholder="Notes about your order, e.g. special notes for delivery." />
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="checkout__order">
                                                <h4 class="order__title">Your order</h4>
                                                <div class="checkout__order__products">Product <span>Total</span></div>
                                                <ul class="checkout__total__products">
                                                    <c:forEach var="cd" items="${cartDetails}">

                                                        <li>0${cd.quantity} x ${cd.product.name} <span>$
                                                                ${cd.product.price}</span></li>
                                                    </c:forEach>
                                                </ul>
                                                <ul class="checkout__total__all">
                                                    <li>Subtotal <span>$750.99</span></li>
                                                    <li>Total <span>$750.99</span></li>
                                                </ul>
                                                <button type="submit" class="site-btn">PLACE ORDER</button>
                                            </div>
                                        </div>
                                    </div>
                                </form:form>
                            </div>
                        </div>
                    </section>
                    <!-- Checkout Section End -->

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