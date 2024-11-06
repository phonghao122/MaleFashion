<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                <meta name="author" content="Hỏi Dân IT" />
                <title>Dashboard - Hỏi Dân IT</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/admin/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Manage Product</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Product</li>
                                </ol>
                                <div class="row">
                                    <div class="mx-auto">
                                        <div class="d-flex justify-content-between">
                                            <h3>Product Detail with id: ${product.id}</h3>
                                        </div>
                                        <hr>
                                        <div class="card" style="width: 60%;">
                                            <div class="card-header">
                                                Product Information
                                            </div>
                                            <div class="col-12 mb-3">
                                                <img style="max-height: 250px; display: block;"
                                                    src="/admin/images/product/${product.image}" alt="Card image cap" />

                                            </div>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item">ID: ${product.id}</li>
                                                <li class="list-group-item">Name: ${product.name}</li>
                                                <li class="list-group-item">Price: ${product.price}</li>
                                                <li class="list-group-item">Detail Description: ${product.detailDesc}
                                                </li>
                                                <li class="list-group-item">Short Description: ${product.shortDesc}</li>
                                                <li class="list-group-item">Quantity: ${product.quantity}</li>
                                                <li class="list-group-item">Brand: ${product.brand}</li>
                                                <li class="list-group-item">Category: ${product.category}</li>
                                                <li class="list-group-item">Size: ${product.size}</li>
                                                <li class="list-group-item">Color: ${product.color}</li>
                                            </ul>
                                        </div>
                                        <a href="/admin/product" class="btn btn-success mt-3">Back</a>
                                    </div>
                                </div>

                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/admin/js/scripts.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                    crossorigin="anonymous"></script>
            </body>

            </html>