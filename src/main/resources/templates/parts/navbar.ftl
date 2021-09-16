<#include "security.ftl">
<#import "login.ftl" as l>

<!-- TOP Nav Bar -->
<#macro navbar>
    <script>
        width = screen.width;
        if (width > 380) {
            phone = '+8800-555-35-35'
            call = '<button type="button" class="btn btn-success" >Задать вопрос</button>'
        } else {
            call = '<button type="button" class="btn btn-success" style="margin-right: 33px;">Задать вопрос</button>'
            phone = ''
        }
    </script>
    <div class="iq-top-navbar">
        <div class="iq-navbar-custom">
            <nav class="navbar navbar-expand-lg navbar-light p-0">
                <div class="iq-navbar-logo d-flex justify-content-between">
                    <a href="/">
                        <span>Uteplitel36</span>
                    </a>
                    <div class="iq-menu-bt align-self-center">
                        <div class="wrapper-menu">
                            <div class="main-circle"><i class="ri-menu-line"></i></div>
                        </div>
                    </div>
                </div>
                <div class="iq-search-bar">
                    <form action="#" class="searchbox">
                        <input type="text" class="text search-input" placeholder="Поиск...">
                        <a class="search-link" href="#"><i class="ri-search-line"></i></a>
                    </form>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-label="Toggle navigation">
                    <i class="ri-menu-3-line"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-list">
                        <li>
                            <script>
                                document.write(call);
                            </script>
                        </li>

                        <li>
                            <p style="margin: 2px 5px -5px 15px">
                                <script>
                                    document.write(phone);
                                </script>
                            </p>
                        </li>

                        <li class="nav-item" style="margin-right: -15px;">
                            <a href="/shoppingCart" class="iq-waves-effect d-flex align-items-center">
                                <div data-icon="Q" class="icon" style="margin-bottom: -5px;">
                                </div>
                                <div id="lottie-beil" style="margin-right: -20px;"></div>
                                <#if cartSize?? && cartSize != 0>
                                    <span class="bg-danger dots"></span>
                                </#if>
                            </a>
                        </li>
                    </ul>
                    <ul class="navbar-list">
                        <li>
                            <a href="#" class="search-toggle iq-waves-effect d-flex align-items-center">
                                <i class="ri-arrow-down-s-fill"></i>
                            </a>
                            <div class="iq-sub-dropdown iq-user-dropdown">
                                <div class="iq-card shadow-none m-0">
                                    <div class="iq-card-body p-0 ">
                                        <div class="bg-primary p-3 line-height">
                                            <h5 class="mb-0 text-white line-height">${name}</h5>
                                        </div>
                                        <#if user??>
                                            <a href="/orderList" class="iq-sub-card iq-bg-primary-hover">
                                                <div class="media align-items-center">
                                                    <div class="rounded iq-card-icon iq-bg-primary">
                                                        <i class="ri-file-user-line"></i>
                                                    </div>
                                                    <div class="media-body ml-3">
                                                        <h6 class="mb-0 ">Заказы</h6>
                                                        <p class="mb-0 font-size-12">Список заказов клиентов</p>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="profile-edit.html" class="iq-sub-card iq-bg-warning-hover">
                                                <div class="media align-items-center">
                                                    <div class="rounded iq-card-icon iq-bg-warning">
                                                        <i class="ri-profile-line"></i>
                                                    </div>
                                                    <div class="media-body ml-3">
                                                        <h6 class="mb-0 ">Edit Profile</h6>
                                                        <p class="mb-0 font-size-12">Modify your personal details.</p>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="account-setting.html" class="iq-sub-card iq-bg-info-hover">
                                                <div class="media align-items-center">
                                                    <div class="rounded iq-card-icon iq-bg-info">
                                                        <i class="ri-account-box-line"></i>
                                                    </div>
                                                    <div class="media-body ml-3">
                                                        <h6 class="mb-0 ">Account settings</h6>
                                                        <p class="mb-0 font-size-12">Manage your account parameters.</p>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="privacy-setting.html" class="iq-sub-card iq-bg-danger-hover">
                                                <div class="media align-items-center">
                                                    <div class="rounded iq-card-icon iq-bg-danger">
                                                        <i class="ri-lock-line"></i>
                                                    </div>
                                                    <div class="media-body ml-3">
                                                        <h6 class="mb-0 ">Privacy Settings</h6>
                                                        <p class="mb-0 font-size-12">Control your privacy
                                                            parameters.</p>
                                                    </div>
                                                </div>
                                            </a>
                                        </#if>

                                        <div class="d-inline-block w-100 text-center p-3">
                                            <@l.logout />
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <!-- TOP Nav Bar END -->
</#macro>
