<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page >
    <script>
        width = screen.width;
        if (width > 430) {
            cicle = '' +
                '<div class="col-sm-12">' +
                '   <div class="iq-card"> ' +
                '       <div class="iq-card-body"> ' +
                '           <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">' +
                '               <div class="carousel-inner"> ' +
                '                   <div class="carousel-item  active" align="center">' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/full_jjIbt5ZY-130x100.jpg" alt="PENOPLEX" class="img-responsive">' +
                '                           </a> ' +
                '                       </div>' +
                '                       <div class="col-3 float-left"> ' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/840-130x100.jpg" alt="URSA" class="img-responsive">' +
                '                           </a>' +
                '                       </div> ' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/logo-doorhan-130x100.png" alt="DOORHAN" class="img-responsive">' +
                '                           </a>' +
                '                       </div>' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/volma-130x100.png" alt="??????????" class="img-responsive"> ' +
                '                           </a>' +
                '                       </div>' +
                '                   </div>' +
                '                   <div class="carousel-item" align="center">' +
                '                       <div class="col-3 float-left"> ' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/optimist-130x100.jpg" alt="????????????????" class="img-responsive">' +
                '                           </a>' +
                '                       </div> ' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/Beznazvaniya-130x100.png" alt="Ravatherm" class="img-responsive">' +
                '                           </a>' +
                '                       </div>' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/2017-02-06_18-12-38_1.c66f2b361b18fdec0ae32e1185520f09-130x100.jpg" alt="IZOVOL" class="img-responsive"> ' +
                '                           </a>' +
                '                       </div>' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/cd0b38184dc52c63a353b8b1fe775173-130x100.png" alt="Docke" class="img-responsive">' +
                '                           </a> ' +
                '                       </div>' +
                '                   </div>' +
                '                   <div class="carousel-item" align="center">' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/logoknauf-130x100.png" alt="KNAUF" class="img-responsive">' +
                '                           </a> ' +
                '                       </div>' +
                '                       <div class="col-3 float-left"> ' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/logo-kronospan-130x100.png" alt="KronoSpan" class="img-responsive">' +
                '                           </a>' +
                '                       </div> ' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/logobauteks(setki)-130x100.png" alt="BauTex" class="img-responsive">' +
                '                           </a>' +
                '                       </div>' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/logoevrokron-130x100.png" alt="????????????????" class="img-responsive"> ' +
                '                           </a>' +
                '                       </div>' +
                '                   </div>' +
                '                   <div class="carousel-item" align="center">' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/logoIzoLajk-130x100.jpg" alt="??????????????" class="img-responsive">' +
                '                           </a> ' +
                '                       </div>' +
                '                       <div class="col-3 float-left"> ' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/Bostik-130x100.jpg" alt="Bostik" class="img-responsive">' +
                '                           </a>' +
                '                       </div> ' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/c6466d162b7e626667c8de72cc540a0d-130x100.jpg" alt="UltraLam" class="img-responsive">' +
                '                           </a>' +
                '                       </div>' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/40dbfb12948fee04a46e03100c5bea23-130x100.jpg" alt="??????????????????????" class="img-responsive"> ' +
                '                           </a>' +
                '                       </div>' +
                '                   </div>' +
                '                   <div class="carousel-item" align="center">' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/9599fcca5cd7076109e774bb8105b503-130x100.jpg" alt="Tech-KREP" class="img-responsive">' +
                '                           </a> ' +
                '                       </div>' +
                '                       <div class="col-3 float-left"> ' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/logoevrokron-130x100.png" alt="????????????????" class="img-responsive">' +
                '                           </a>' +
                '                       </div> ' +
                '                       <div class="col-3 float-left">' +
                '                           <a href="#">' +
                '                               <img src="https://stroydiskont-vrn.ru/image/cache/catalog/logoizover-130x100.png" alt="IZOVER" class="img-responsive">' +
                '                           </a>' +
                '                       </div>' +
                '                   </div>' +
                '               </div>' +
                '               <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev"> ' +
                '                   <span class="carousel-control-prev-icon" aria-hidden="true"> </span> ' +
                '                   <span class="sr-only">Previous</span> ' +
                '               </a> ' +
                '               <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next"> ' +
                '                   <span class="carousel-control-next-icon" aria-hidden="true"></span> ' +
                '                   <span class="sr-only">Next</span> ' +
                '               </a> ' +
                '           </div>' +
                '       </div> ' +
                '   </div> ' +
                '</div>'
            // '</div> '
        } else {
            cicle = ''
        }
    </script>
    <div class="col-sm-12">
        <div class="iq-card">
            <div class="iq-card-body">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="/static/img/Cn8_Ip1WgAAj_4B-1140x380.jpg" class="d-block w-100" alt="#">
                        </div>
                        <div class="carousel-item">
                            <img src="/static/img/diskontnayakarta2-1140x380.jpg" class="d-block w-100" alt="#">
                        </div>
                        <div class="carousel-item">
                            <img src="/static/img/durhanfon-1140x380.jpg" class="d-block w-100" alt="#">
                        </div>
                        <div class="carousel-item">
                            <img src="/static/img/EKSTRIM(1)-1140x380.png" class="d-block w-100" alt="#">
                        </div>
                        <div class="carousel-item">
                            <img src="/static/img/izovolbaner-1140x380.png" class="d-block w-100" alt="#">
                        </div>
                        <div class="carousel-item">
                            <img src="/static/img/negorichij(1)-1140x380.png" class="d-block w-100" alt="#">
                        </div>
                        <div class="carousel-item">
                            <img src="/static/img/NOVAYALINEJKATEPLOIZOLYACIONNIHMATERIALOVURSA-1140x380.png"
                                 class="d-block w-100" alt="#">
                        </div>
                        <div class="carousel-item">
                            <img src="/static/img/SOGREVAETTAM,GDEDRUGIEBESSILNI-1140x380.png" class="d-block w-100"
                                 alt="#">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.write(cicle);
    </script>

    <div class="col-sm-12">
        <div class="tab-content">
            <div class="iq-card">
                <div class="iq-card-body">
                    <h2>??????????????</h2>
                    <div class="friend-list-tab mt-2">
                        <div class="tab-content">
                            <div class="tab-pane fade active show" id="all-friends" role="tabpanel">
                                <div class="iq-card-body p-0">
                                    <div class="row">
                                        <div class="col-md-6 col-lg-6 mb-3">
                                            <div class="iq-friendlist-block">
                                                <div class="d-flex align-items-center justify-content-between">
                                                    <div class="d-flex align-items-center">
                                                        <a href="#">
                                                            <img src="https://stroydiskont-vrn.ru/image/cache/catalog/1-300x300.jpg"
                                                                 width="150px" height="150px" alt="profile-img"
                                                                 class="img-fluid">
                                                        </a>
                                                        <div class="friend-info ml-3">
                                                            <a href="#">
                                                                <h5>????????????????????</h5>
                                                                <p class="mb-0">112</p>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-6 mb-3">
                                            <div class="iq-friendlist-block">
                                                <div class="d-flex align-items-center justify-content-between">
                                                    <div class="d-flex align-items-center">
                                                        <a href="#">
                                                            <img src="https://stroydiskont-vrn.ru/image/cache/catalog/plenkakategoriya-300x300.png"
                                                                 width="150px" height="150px" alt="profile-img"
                                                                 class="img-fluid">
                                                        </a>
                                                        <div class="friend-info ml-3">
                                                            <a href="#">
                                                                <h5>????????????</h5>
                                                                <p class="mb-0">23</p>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-6 mb-3">
                                            <div class="iq-friendlist-block">
                                                <div class="d-flex align-items-center justify-content-between">
                                                    <div class="d-flex align-items-center">
                                                        <a href="#">
                                                            <img src="https://stroydiskont-vrn.ru/image/cache/catalog/krepezh-300x300.jpg"
                                                                 width="150px" height="150px" alt="profile-img"
                                                                 class="img-fluid">
                                                        </a>
                                                        <div class="friend-info ml-3">
                                                            <a href="#">
                                                                <h5>????????????</h5>
                                                                <p class="mb-0">21</p>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-6 mb-3">
                                            <div class="iq-friendlist-block">
                                                <div class="d-flex align-items-center justify-content-between">
                                                    <div class="d-flex align-items-center">
                                                        <a href="#">
                                                            <img src="https://stroydiskont-vrn.ru/image/cache/catalog/peni-300x300.png"
                                                                 width="150px" height="150px" alt="profile-img"
                                                                 class="img-fluid">
                                                        </a>
                                                        <div class="friend-info ml-3">
                                                            <a href="#">
                                                                <h5>????????</h5>
                                                                <p class="mb-0">18</p>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="iq-card">
            <div class="iq-card-body p-0">
                <div class="user-tabing">
                    <ul class="nav nav-pills d-flex align-items-center justify-content-center profile-feed-items p-0 m-0">
                        <li class="col-sm-3 p-0">
                            <a class="nav-link active" data-toggle="pill" href="#timeline">??????????????????????????</a>
                        </li>
                        <li class="col-sm-3 p-0">
                            <a class="nav-link" data-toggle="pill" href="#about">??????????</a>
                        </li>
                        <li class="col-sm-3 p-0">
                            <a class="nav-link" data-toggle="pill" href="#friends">???????? ????????????</a>
                        </li>
                        <li class="col-sm-3 p-0">
                            <a class="nav-link" data-toggle="pill" href="#photos">??????????</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-12">
        <div class="tab-content">
            <div class="tab-pane fade active show" id="timeline" role="tabpanel">
                <div class="iq-card">
                    <div class="iq-card-body">
                        <div class="friend-list-tab mt-2">
                            <div class="tab-content">
                                <div class="tab-pane fade active show" id="all-friends" role="tabpanel">
                                    <div class="iq-card-body p-0">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="iq-card" style="height: 450px">
                                                    <div class="iq-card-body profile-page p-0">
                                                        <div class="profile-header-image">
                                                            <div class="cover-container">
                                                                <img src="https://stroydiskont-vrn.ru/image/cache/catalog/PENOPLEX/1-3(2)-250x250.jpg"
                                                                     alt="profile-bg" class="rounded img-fluid w-100">
                                                            </div>
                                                            <div class="profile-info p-4">
                                                                <div class="user-detail">
                                                                    <div class="d-flex flex-wrap justify-content-between align-items-start">
                                                                        <button type="submit"
                                                                                class="btn btn-primary mb-3"
                                                                                style="transform: translate(50%, 0)">
                                                                            <div data-icon="Q" class="icon">
                                                                                ????????????
                                                                            </div>
                                                                        </button>
                                                                        <div class="profile-detail d-flex">
                                                                            <div class="user-data-block">
                                                                                <h4 class="">2133.00p.</h4>
                                                                                <p style="font-size: 11px">??????????????????????????
                                                                                    ????????????????????????????
                                                                                    ?????????????????? ???????????????? 40??585??1185 ????
                                                                                    ???????? ?????? ???????????? !!! ???????????????? ????????????
                                                                                    !!!</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="about" role="tabpanel">
                <div class="iq-card">
                    <div class="iq-card-body">
                        <div class="friend-list-tab mt-2">
                            <div class="tab-content">
                                <div class="tab-pane fade active show" id="all-friends" role="tabpanel">
                                    <div class="iq-card-body p-0">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="iq-card" style="height: 450px">
                                                    <div class="iq-card-body profile-page p-0">
                                                        <div class="profile-header-image">
                                                            <div class="cover-container">
                                                                <img src="https://stroydiskont-vrn.ru/image/cache/catalog/KNAUF/knaufnord-250x250.jpeg"
                                                                     alt="profile-bg" class="rounded img-fluid w-100">
                                                            </div>
                                                            <div class="profile-info p-4">
                                                                <div class="user-detail">
                                                                    <div class="d-flex flex-wrap justify-content-between align-items-start">
                                                                        <button type="submit"
                                                                                class="btn btn-primary mb-3"
                                                                                style="transform: translate(50%, 0)">
                                                                            <div data-icon="Q" class="icon">
                                                                                ????????????
                                                                            </div>
                                                                        </button>
                                                                        <div class="profile-detail d-flex">
                                                                            <div class="user-data-block">
                                                                                <h4 class="">2220.00p.</h4>
                                                                                <p style="font-size: 11px">????????????????????
                                                                                    ?????????? ???????? (50??610??1230,
                                                                                    9,0????.??/0,450??3)</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="iq-card" style="height: 450px">
                                                    <div class="iq-card-body profile-page p-0">
                                                        <div class="profile-header-image">
                                                            <div class="cover-container">
                                                                <img src="https://stroydiskont-vrn.ru/image/cache/catalog/KNAUF/knaufmini-250x250.jpg"
                                                                     alt="profile-bg" class="rounded img-fluid w-100">
                                                            </div>
                                                            <div class="profile-info p-4">
                                                                <div class="user-detail">
                                                                    <div class="d-flex flex-wrap justify-content-between align-items-start">
                                                                        <button type="submit"
                                                                                class="btn btn-primary mb-3"
                                                                                style="transform: translate(50%, 0)">
                                                                            <div data-icon="Q" class="icon">
                                                                                ????????????
                                                                            </div>
                                                                        </button>
                                                                        <div class="profile-detail d-flex">
                                                                            <div class="user-data-block">
                                                                                <h4 class="">1100.00p.</h4>
                                                                                <p style="font-size: 11px">????????????????????
                                                                                    ?????????? ?????? ???????????????????? ????????
                                                                                    (50??600??7000, 8,4??2)</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="iq-card" style="height: 450px">
                                                    <div class="iq-card-body profile-page p-0">
                                                        <div class="profile-header-image">
                                                            <div class="cover-container">
                                                                <img src="https://stroydiskont-vrn.ru/image/cache/catalog/Volma/keramic-250x250.png"
                                                                     alt="profile-bg" class="rounded img-fluid w-100">
                                                            </div>
                                                            <div class="profile-info p-4">
                                                                <div class="user-detail">
                                                                    <div class="d-flex flex-wrap justify-content-between align-items-start">
                                                                        <button type="submit"
                                                                                class="btn btn-primary mb-3"
                                                                                style="transform: translate(50%, 0)">
                                                                            <div data-icon="Q" class="icon">
                                                                                ????????????
                                                                            </div>
                                                                        </button>
                                                                        <div class="profile-detail d-flex">
                                                                            <div class="user-data-block">
                                                                                <h4 class="">0.00p.</h4>
                                                                                <p style="font-size: 11px">??????????????????
                                                                                    ???????? ?????????????? ??????????, 25
                                                                                    ????</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="iq-card" style="height: 450px">
                                                    <div class="iq-card-body profile-page p-0">
                                                        <div class="profile-header-image">
                                                            <div class="cover-container">
                                                                <img src="https://stroydiskont-vrn.ru/image/cache/catalog/LITOKS/Gruntovka-LITOX-ULTRA-univers-5l-250x250.png"
                                                                     alt="profile-bg" class="rounded img-fluid w-100">
                                                            </div>
                                                            <div class="profile-info p-4">
                                                                <div class="user-detail">
                                                                    <div class="d-flex flex-wrap justify-content-between align-items-start">
                                                                        <button type="submit"
                                                                                class="btn btn-primary mb-3"
                                                                                style="transform: translate(50%, 0)">
                                                                            <div data-icon="Q" class="icon">
                                                                                ????????????
                                                                            </div>
                                                                        </button>
                                                                        <div class="profile-detail d-flex">
                                                                            <div class="user-data-block">
                                                                                <h4 class="">235.00p.</h4>
                                                                                <p style="font-size: 11px">??????????????????
                                                                                    ?????????????????????????? ULTRA ????????????,
                                                                                    5 ??</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="friends" role="tabpanel">
                <div class="iq-card">
                    <div class="iq-card-body">
                        <div class="friend-list-tab mt-2">
                            <div class="tab-content">
                                <div class="tab-pane fade active show" id="all-friends" role="tabpanel">
                                    <div class="iq-card-body p-0">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="iq-card" style="height: 450px">
                                                    <div class="iq-card-body profile-page p-0">
                                                        <div class="profile-header-image">
                                                            <div class="cover-container">
                                                                <img src="https://stroydiskont-vrn.ru/image/cache/catalog/dyubeldlyateploizolyaciismetallicheskimgvozdem-250x250.jpg"
                                                                     alt="profile-bg" class="rounded img-fluid w-100">
                                                            </div>
                                                            <div class="profile-info p-4">
                                                                <div class="user-detail">
                                                                    <div class="d-flex flex-wrap justify-content-between align-items-start">
                                                                        <button type="submit"
                                                                                class="btn btn-primary mb-3"
                                                                                style="transform: translate(50%, 0)">
                                                                            <div data-icon="Q" class="icon">
                                                                                ????????????
                                                                            </div>
                                                                        </button>
                                                                        <div class="profile-detail d-flex">
                                                                            <div class="user-data-block">
                                                                                <h4 class="">4.80p.</h4>
                                                                                <p style="font-size: 11px">???????????? ??????
                                                                                    ?????????????????????????? ??
                                                                                    ?????????????????????????? ?????????????? 10*90 ???? (IZM)
                                                                                    - ????</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="iq-card" style="height: 450px">
                                                    <div class="iq-card-body profile-page p-0">
                                                        <div class="profile-header-image">
                                                            <div class="cover-container">
                                                                <img src="https://stroydiskont-vrn.ru/image/cache/catalog/Dyubeldlyateploizolyaciistermogolovkoj-250x250.jpg"
                                                                     alt="profile-bg" class="rounded img-fluid w-100">
                                                            </div>
                                                            <div class="profile-info p-4">
                                                                <div class="user-detail">
                                                                    <div class="d-flex flex-wrap justify-content-between align-items-start">
                                                                        <button type="submit"
                                                                                class="btn btn-primary mb-3"
                                                                                style="transform: translate(50%, 0)">
                                                                            <div data-icon="Q" class="icon">
                                                                                ????????????
                                                                            </div>
                                                                        </button>
                                                                        <div class="profile-detail d-flex">
                                                                            <div class="user-data-block">
                                                                                <h4 class="">14.50p.</h4>
                                                                                <p style="font-size: 11px">???????????? ??????
                                                                                    ?????????????????????????? ??
                                                                                    ?????????????????????????? ?? ??????????????????????????
                                                                                    ?????????????? 10*200 ???? (IZL-T) - ????</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="iq-card" style="height: 450px">
                                                    <div class="iq-card-body profile-page p-0">
                                                        <div class="profile-header-image">
                                                            <div class="cover-container">
                                                                <img src="https://stroydiskont-vrn.ru/image/cache/catalog/dyubeldlyateploizolyaciisplastikovimgvozdem-250x250.jpg"
                                                                     alt="profile-bg" class="rounded img-fluid w-100">
                                                            </div>
                                                            <div class="profile-info p-4">
                                                                <div class="user-detail">
                                                                    <div class="d-flex flex-wrap justify-content-between align-items-start">
                                                                        <button type="submit"
                                                                                class="btn btn-primary mb-3"
                                                                                style="transform: translate(50%, 0)">
                                                                            <div data-icon="Q" class="icon">
                                                                                ????????????
                                                                            </div>
                                                                        </button>
                                                                        <div class="profile-detail d-flex">
                                                                            <div class="user-data-block">
                                                                                <h4 class="">3.80p.</h4>
                                                                                <p style="font-size: 11px">???????????? ??????
                                                                                    ?????????????????????????? ??
                                                                                    ?????????????????????? ?????????????? 10*100 ???? (IZO)
                                                                                    - ????</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="iq-card" style="height: 450px">
                                                    <div class="iq-card-body profile-page p-0">
                                                        <div class="profile-header-image">
                                                            <div class="cover-container">
                                                                <img src="https://stroydiskont-vrn.ru/image/cache/catalog/podvesprofilya-250x250.jpg"
                                                                     alt="profile-bg" class="rounded img-fluid w-100">
                                                            </div>
                                                            <div class="profile-info p-4">
                                                                <div class="user-detail">
                                                                    <div class="d-flex flex-wrap justify-content-between align-items-start">
                                                                        <button type="submit"
                                                                                class="btn btn-primary mb-3"
                                                                                style="transform: translate(50%, 0)">
                                                                            <div data-icon="Q" class="icon">
                                                                                ????????????
                                                                            </div>
                                                                        </button>
                                                                        <div class="profile-detail d-flex">
                                                                            <div class="user-data-block">
                                                                                <h4 class="">15.00p.</h4>
                                                                                <p style="font-size: 11px">????????????
                                                                                    ?????????????? 0,9???? ??
                                                                                    (60??27??0,9????)</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="photos" role="tabpanel">
                <div class="iq-card">
                    <div class="iq-card-body">
                        <div class="friend-list-tab mt-2">
                            <div class="tab-content">
                                <div class="tab-pane fade active show" id="all-friends" role="tabpanel">
                                    <div class="iq-card-body p-0">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="iq-card" style="height: 450px">
                                                    <div class="iq-card-body profile-page p-0">
                                                        <div class="profile-header-image">
                                                            <div class="cover-container">
                                                                <img src="https://stroydiskont-vrn.ru/image/cache/catalog/Bostik_STANDARD_45-250x250.jpg"
                                                                     alt="profile-bg" class="rounded img-fluid w-100">
                                                            </div>
                                                            <div class="profile-info p-4">
                                                                <div class="user-detail">
                                                                    <div class="d-flex flex-wrap justify-content-between align-items-start">
                                                                        <button type="submit"
                                                                                class="btn btn-primary mb-3"
                                                                                style="transform: translate(50%, 0)">
                                                                            <div data-icon="Q" class="icon">
                                                                                ????????????
                                                                            </div>
                                                                        </button>
                                                                        <div class="profile-detail d-flex">
                                                                            <div class="user-data-block">
                                                                                <h4 class="">230.00p.</h4>
                                                                                <h6>???????????? 17%</h6>
                                                                                <p style="font-size: 11px">????????
                                                                                    ?????????????????????? ????????????????????????????
                                                                                    Standart 45, 650 ????</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="iq-card" style="height: 450px">
                                                    <div class="iq-card-body profile-page p-0">
                                                        <div class="profile-header-image">
                                                            <div class="cover-container">
                                                                <img src="https://stroydiskont-vrn.ru/image/cache/catalog/Bostik_STANDARD_65-250x250.jpg"
                                                                     alt="profile-bg" class="rounded img-fluid w-100">
                                                            </div>
                                                            <div class="profile-info p-4">
                                                                <div class="user-detail">
                                                                    <div class="d-flex flex-wrap justify-content-between align-items-start">
                                                                        <button type="submit"
                                                                                class="btn btn-primary mb-3"
                                                                                style="transform: translate(50%, 0)">
                                                                            <div data-icon="Q" class="icon">
                                                                                ????????????
                                                                            </div>
                                                                        </button>
                                                                        <div class="profile-detail d-flex">
                                                                            <div class="user-data-block">
                                                                                <h4 class="">380.00p.</h4>
                                                                                <h6>???????????? 25%</h6>
                                                                                <p style="font-size: 11px">????????
                                                                                    ?????????????????????? ????????????????????????????
                                                                                    Standart 65, 750 ????</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="iq-card" style="height: 450px">
                                                    <div class="iq-card-body profile-page p-0">
                                                        <div class="profile-header-image">
                                                            <div class="cover-container">
                                                                <img src="https://stroydiskont-vrn.ru/image/cache/catalog/Profilpotolochnij-250x250.jpg"
                                                                     alt="profile-bg" class="rounded img-fluid w-100">
                                                            </div>
                                                            <div class="profile-info p-4">
                                                                <div class="user-detail">
                                                                    <div class="d-flex flex-wrap justify-content-between align-items-start">
                                                                        <button type="submit"
                                                                                class="btn btn-primary mb-3"
                                                                                style="transform: translate(50%, 0)">
                                                                            <div data-icon="Q" class="icon">
                                                                                ????????????
                                                                            </div>
                                                                        </button>
                                                                        <div class="profile-detail d-flex">
                                                                            <div class="user-data-block">
                                                                                <h4 class="">235.00p.</h4>
                                                                                <h6>???????????? 16%</h6>
                                                                                <p style="font-size: 11px">??????????????
                                                                                    ???????????????????? 0,5????
                                                                                    (60??27??0,5????) 3?? - ???????? ???? ??????????</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="iq-card" style="height: 450px">
                                                    <div class="iq-card-body profile-page p-0">
                                                        <div class="profile-header-image">
                                                            <div class="cover-container">
                                                                <img src="https://stroydiskont-vrn.ru/image/cache/catalog/Setkasvarnaya50h50mmD=1.6mm%C2%A0(1h50m)cena2520rub-250x250.jpg"
                                                                     alt="profile-bg" class="rounded img-fluid w-100">
                                                            </div>
                                                            <div class="profile-info p-4">
                                                                <div class="user-detail">
                                                                    <div class="d-flex flex-wrap justify-content-between align-items-start">
                                                                        <button type="submit"
                                                                                class="btn btn-primary mb-3"
                                                                                style="transform: translate(50%, 0)">
                                                                            <div data-icon="Q" class="icon">
                                                                                ????????????
                                                                            </div>
                                                                        </button>
                                                                        <div class="profile-detail d-flex">
                                                                            <div class="user-data-block">
                                                                                <h4 class="">7540.00p.</h4>
                                                                                <h6>???????????? 12%</h6>
                                                                                <p style="font-size: 11px">?????????? ??????????????
                                                                                    1,0??50?? ???????????? 25??25????
                                                                                    D=1.6????</p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="tab-content">
            <div class="iq-card">
                <div class="iq-card-body">
                    <h2>?????????????? ?????????? ?????????????????????? "?????????? ??????????????"</h2>
                    <p><br>
                        ?????????????? ?????????? ?????????????????????? ??? ?????? ????????????-?????????????????? ?????????????????? ?????????????????????????????????? ???????????????????? ??????????????
                        ????????????????????????????.<br><br>

                        ?? ?????? ???? ?????????????? ???????????? ?????????????????? ?? ???????????????? ?? ?????????? ???????????? ???????????????????? ???????????????????? ??????????????, ??
                        ?????????? ???????????? ?????????????????????? ?? ?????????????????????????? ?????????????????? - ??????????????????????, ?????????????????????? ??????????, ????????,
                        ????????????, ??????????????????, ?????????????????????????? ?? ???????????? ????????????.<br><br>

                        ???????????????? ?????????? ?????????? ?????? ???? ?????????????????? ???????????? ???? 1 ??????????, ?????? ?? ???? ?????????????? ????????????.<br><br>

                        ?????? ?????????????? ???? 20 000 ???????????? ???????????? ???????????? ???????????????? ???????????????????? ?????????? ?? ???????????????????? ????????????????????????
                        ???????????? ???????????????????? ?? ???????????????? ???? ??????????????.<br><br>

                        ?????? ?????????????? ???????????????????? ???????????? ???????????????? ???? ???????????????? ?? ?????????????? ?????? ?????? ?????????? ?? ??????????????????????
                        ????????????????????.
                    </p>
                </div>
            </div>
        </div>
    </div>

</@c.page>