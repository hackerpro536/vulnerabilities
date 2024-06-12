<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Product Management - Demo Admin Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="<?=ADMIN_THEME_URL?>css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">FPT Jetking</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="?logout=1">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="index.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Management</div>
                            <a class="nav-link active" href="product.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Products
                            </a>
                            <a class="nav-link" href="users.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Users
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        <?=users('full_name')?>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Products</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Product Management</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Edit product: <?=$item['title']?>
                            </div>
                            <div class="card-body">
                                <form method="post" action="product.php?save=<?=$item['id']?>" enctype="multipart/form-data">
                                    <input type="hidden" name="id" value="<?=$item['id']?>">
                                    <div class="form-group mb-3">
                                        <label>Title</label>
                                        <input type="text" class="form-control" value="<?=$item['title']?>" name="title">
                                    </div>
                                    <div class="form-group mb-3">
                                        <label>SKU</label>
                                        <input type="text" class="form-control" value="<?=$item['sku']?>" name="sku">
                                    </div>
                                    <div class="form-group mb-3">
                                        <label>Price</label>
                                        <input type="text" class="form-control" value="<?=$item['price']?>" name="price">
                                    </div>
                                    <div class="form-group mb-3">
                                        <label>Intro</label>
                                        <textarea class="form-control" rows="3" name="intro"><?=$item['intro']?></textarea>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label>Detail</label>
                                        <textarea class="form-control" rows="3" name="content"><?=$item['content']?></textarea>
                                    </div>
                                    <div class="form-group  mb-3">
                                        <label>Photo</label>
                                        <input type="file" class="form-control-file" name="images">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Workshop - FPT Jetking</div>
                            <div>
                                Demo Vulnerabilities Website by
                                &middot;
                                <a href="LPTech.Asia">LPTech.Asia</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="<?=ADMIN_THEME_URL?>js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="<?=ADMIN_THEME_URL?>assets/demo/chart-area-demo.js"></script>
        <script src="<?=ADMIN_THEME_URL?>assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="<?=ADMIN_THEME_URL?>js/datatables-simple-demo.js"></script>
    </body>
</html>
