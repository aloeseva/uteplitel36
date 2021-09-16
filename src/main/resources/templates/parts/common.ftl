<#import "navbar.ftl" as n>

<#macro page>
    <!DOCTYPE html>
    <html lang="en" xmlns="http://www.w3.org/1999/html">
    <head>
        <meta charset="UTF-8"/>
        <title>Uteplitel36</title>

        <!-- Required meta tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon -->
        <#--        <link rel="shortcut icon" href="/static/img/gorila.png"/>-->
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="/static/css/bootstrap.min.css">
        <!-- Typography CSS -->
        <link rel="stylesheet" href="/static/css/typography.css">
        <!-- Style CSS -->
        <link rel="stylesheet" href="/static/css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="/static/css/responsiv.css">

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
              integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
              crossorigin="anonymous">

        <#--        <script src="https://cdnjs.cloudflare.com/ajax/libs/turbolinks/5.2.0/turbolinks.js"></script>-->

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="/static/js/jquery.min.js"></script>
        <script src="/static/js/popper.min.js"></script>
        <script src="/static/js/bootstrap.min.js"></script>

        <!-- Appear JavaScript -->
        <script src="/static/js/jquery.appear.js"></script>

        <!-- Countdown JavaScript -->
        <script src="/static/js/countdown.min.js"></script>
        <!-- Counterup JavaScript -->
        <script src="/static/js/waypoints.min.js"></script>

        <#--        -->
        <script src="/static/js/jquery.counterup.min.js"></script>
        <#--        -->

        <!-- Wow JavaScript -->
        <script src="/static/js/wow.min.js"></script>
        <!-- Apexcharts JavaScript -->
        <script src="/static/js/apexcharts.js"></script>

        <#--        -->
        <!-- Slick JavaScript -->
        <script src="/static/js/slick.min.js"></script>
        <!-- Select2 JavaScript -->
        <script src="/static/js/select2.min.js"></script>
        <#--        -->

        <!-- Owl Carousel JavaScript -->
        <script src="/static/js/owl.carousel.min.js"></script>

        <#--        -->
        <!-- Magnific Popup JavaScript -->
        <script src="/static/js/jquery.magnific-popup.min.js"></script>
        <!-- Smooth Scrollbar JavaScript -->
        <script src="/static/js/smooth-scrollbar.js"></script>
        <#--        -->

        <!-- lottie JavaScript -->
        <script src="/static/js/lottie.js"></script>
        <!-- am core JavaScript -->
        <script src="/static/js/core.js"></script>
        <!-- am charts JavaScript -->
        <script src="/static/js/charts.js"></script>
        <!-- am animated JavaScript -->
        <script src="/static/js/animated.js"></script>
        <!-- am kelly JavaScript -->
        <script src="/static/js/kelly.js"></script>
        <!-- am maps JavaScript -->
        <script src="/static/js/maps.js"></script>
        <!-- am worldLow JavaScript -->
        <script src="/static/js/worldLow.js"></script>

        <#--        -->
        <!-- Chart Custom JavaScript -->
        <script src="/static/js/chart-custom.js"></script>
        <!-- Custom JavaScript -->
        <script src="/static/js/custom.js"></script>

        <!-- Optional JavaScript -->
        <style>
            .turbolinks-progress-bar {
                height: 2px;
                background-color: navy;
            }
        </style>
        <style>
            div.form-group .control-label:before {
                content: '* ';
                color: #F00;
                font-weight: bold;
            }
        </style>
        <style>
            i.fa {
                width: 30px;
                height: 30px;
                line-height: 30px;
                text-align: center;
                margin-right: -30px;
                position: relative;
                z-index: 1;
                float: left;
                margin-top: 7px;
            }

            i.fa + input {
                padding-left: 30px;
            }
        </style>
    </head>

    <body class="right-column-fixed">
    <@n.navbar />
    <#include "sidebar.ftl">
    <div class="wrapper">
        <div id="content-page" class="content-page">
            <div class="container">
                <div class="row">
                    <#nested>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <footer class="bg-white iq-footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xm-12">
                    <h5>Информация</h5>
                    <ul class="list-unstyled">
                        <li><a href="#">О нас</a></li>
                        <li><a href="#">Доставка</a></li>
                        <li><a href="#">Политика Безопасности</a></li>
                        <li><a href="#">Условия соглашения</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xm-12">
                    <h5>Служба поддержки</h5>
                    <ul class="list-unstyled">
                        <li><a href="#">Контакты</a></li>
                        <li><a href="#">Возврат товара</a></li>
                        <li><a href="#">Карта сайта</a></li>
                    </ul>
                </div>
                <div class="clearfix visible-sm visible-xs"></div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xm-12">
                    <h5>Дополнительно</h5>
                    <ul class="list-unstyled">
                        <li><a href="#">Производители</a></li>
                        <li><a href="#">Акции</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xm-12">
                    <h5>Личный Кабинет</h5>
                    <ul class="list-unstyled">
                        <li><a href="#">Личный Кабинет</a></li>
                        <li><a href="#">История заказов</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <footer class="bg-white iq-footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    Copyright 2021 <a href="/">Uteplitel36</a> All Rights Reserved.
                </div>
                <div class="col-lg-6 text-right">
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item">+8800-555-35-35</li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer END -->
    </body>
    </html>
</#macro>
