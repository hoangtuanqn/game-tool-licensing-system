<body>
    <!-- header-area -->
    <header class="third-header-bg home-six-header">
        <div class="bg"></div>
        <div class="container custom-container">
            <div class="header-top-area t-header-top-area d-none d-lg-block">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="header-top-social">
                            <ul>
                                <li>Follow</li>
                                <li><a href="<?= $TUANORI->site('fbadmin'); ?>"><i class="fab fa-facebook-f"></i></a>
                                </li>
                                <li><a href="<?= $TUANORI->site('ytbadmin'); ?>"><i class="fa-brands fa-youtube"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div id="sticky-header">
            <div class="container custom-container">
                <div class="row">
                    <div class="col-12">
                        <div class="main-menu menu-style-two">
                            <nav>
                                <div class="logo d-block d-lg-none">
                                    <a href="/"><img src="<?= $TUANORI->site('logo') ?>" alt="Logo" width="160px">
                                    </a>
                                </div>
                                <div class="navbar-wrap d-none d-lg-flex">
                                    <ul class="left">
                                        <li><a href="/">Trang chủ</a>

                                        </li>
                                        <li><a href="#">NẠP TIỀN<span class="badge bg-warning text-dark"></span> <i class="fas fa-sort-down"></i></a>
                                            <ul class="submenu" style="left: 0px;">
                                                <li><a href="/client/napthe">Nạp thẻ cào <span class="badge bg-warning text-dark"></span></a>
                                                </li>
                                                <li><a href="/client/napatm">Nạp ATM & MOMO <span class="badge bg-danger">HOT</span></a>
                                                </li>

                                            </ul>
                                        </li>

                                        <li><a href="#">Hệ thống <span class="badge bg-warning text-dark">NEW</span> <i class="fas fa-sort-down"></i></a>
                                            <ul class="submenu" style="left: 0px;">
                                                <li><a href="/client/chuyentien">Chuyển tiền <span class="badge bg-warning text-dark">NEW</span></a></li>
                                                <li><a href="/client/giftcode">Giftcode <span class="badge bg-danger">HOT</span></a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Lịch sử <span class="badge bg-danger">NEW</span> <i class="fas fa-sort-down"></i></a>
                                            <ul class="submenu" style="left: 0px;">
                                                <li>
                                                    <a href="/client/history/sodu">Biến động số dư</a>
                                                </li>
                                                <li>
                                                    <a href="/client/history/chuyentien">Lịch sử chuyển tiền</a>
                                                </li>
                                                <li>
                                                    <a href="/client/history/napthe">Lịch sử nạp thẻ</a>
                                                </li>
                                                <li>
                                                    <a href="/client/history/atm">nạp ATM & MOMO <span class="badge bg-danger">HOT</span></a>
                                                </li>
                                                <li><a href="/client/history/key">Lịch sử mua hàng <span class="badge bg-danger">HOT</span></a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <div class="logo mt-2">
                                        <a href="/" class="d-block"><img src="<?= $TUANORI->site('logo') ?>" alt="Logo" width="150px">
                                        </a>
                                    </div>
                                    <?php if (empty($_COOKIE['token'])) { ?>
                                        <ul class="right">
                                            <div class="header-top-login-2">
                                                <ul>
                                                    <li class="btn-auth"><a href="/client/register"><i class="far fa-edit"></i>Đăng ký</a>
                                                    </li>
                                                    <li class="or">hoặc</li>
                                                    <li class="btn-auth"><a href="/client/login"><i class="far fa-edit"></i>Đăng nhập</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </ul>
                                    <?php } else { ?>
                                        <ul class="right">
                                            <li><a href="/cart.html">Giảm giá: <span style="color:#bcee0e;" id="cart-header"><?= $getUser['discount']; ?>%</span></a>
                                            </li>
                                            <li class="info-user">
                                                <a href="#"> USER-ID: <span class="font-bold"><?= $getUser['id']; ?> </span> / Số dư: <?= format_cash($getUser['money']); ?> đ</a>
                                                <ul class="submenu">
                                                    <li><a href="#">UserID: <span>#<?= $getUser['id']; ?></span></a></li>
                                                    <?php if ($getUser['level'] == 'admin') { ?>
                                                        <li><a href="/Admin">Panel Admin</a></li>
                                                    <?php } ?>
                                                    <li><a href="/client/history/key">Lịch sử mua hàng</a></li>
                                                    <li><a href="/client/history/napthe">Lịch sử nạp tiền</a></li>
                                                    <li><a href="#" class="log-out">Đăng xuất</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    <?php } ?>

                                </div>
                            </nav>
                        </div>

                        <div class="mobile-menu-wrap d-block d-lg-none">
                            <nav>
                                <div id="mobile-menu" class="navbar-wrap">
                                    <ul>
                                        <li class="show"><a href="/">Trang chủ</a>
                                        </li>

                                        <li><a href="#">Nạp tiền</a>
                                            <ul class="submenu" style="left: 0px;">
                                                <li><a href="dangnhap.html">Nạp thẻ cào (auto)</a>
                                                </li>
                                                <li><a href="/">Nạp Momo - ATM (auto)</a>
                                                </li>

                                            </ul>
                                        </li>
                                        <li><a href="#">Hệ thống</a>
                                            <ul class="submenu" style="left: 0px;">
                                                <li><a href="/">Chuyển tiền <span class="badge bg-warning text-dark">NEW</span></a>
                                                </li>
                                                <li><a href="/">Giftcode <span class="badge bg-danger">HOT</span></a>
                                                </li>
                                                <li><a href="/">Lịch sử chuyển tiền</a>
                                                </li>

                                            </ul>
                                        </li>
                                        <li><a href="#">Get Key <span class="badge bg-danger">NEW</span></a>
                                        </li>

                                        <li><a href="dangky.html">Đăng ký</a>
                                        </li>
                                        <li><a href="dangnhap.html">Đăng nhập</a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                        <div class="mobile-menu"></div>
                    </div>
                    <!-- Modal Search -->
                    <div class="modal fade" id="search-modal" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <form>
                                    <input type="text" placeholder="Search here...">
                                    <button><i class="fa fa-search"></i>
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(document).ready(function() {
                $('.log-out').click(function(event) {
                    /* Act on the event */
                    event.preventDefault();
                    Swal.fire({
                        title: 'Thông báo đăng xuất!',
                        html: "Bạn có muốn thực hiện hành động?",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#ccfe1e',
                        confirmButtonText: 'Đăng xuất ngay',
                        customClass: "custom_modal",
                        background: '#1f2029'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $.ajax({
                                    url: '/client/logout',
                                    type: 'POST',
                                })
                                .done(function(result) {
                                    if (result == 'done') {
                                        location.reload();
                                    }
                                });

                        }

                    })
                });
            });
        </script>
        <div class="header-bottom-bg"></div>
    </header>
    <!-- header-area-end -->
    <div id="preloader">
        <div id="loading-center">
            <div id="loading-center-absolute">
                <img src="/public/img/preloader.svg" alt="">
            </div>
        </div>
    </div>