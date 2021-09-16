<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page >
    <div class="col-sm-12">
        <div class="tab-content">
            <div class="iq-card">
                <div class="iq-card-body">
                    <h2>Подтверждение заказа</h2>
                </div>
            </div>
        </div>
    </div>

    <div class="tab-content col-sm-12">
        <div class="iq-card">
            <div class="iq-card-body">
                <div class="row">
                    <div class="col-md-9 pl-4">
                        <div class="tab-content">
                            <h4>Информация заказчика:</h4>
                            <hr>
                            <div class="row">
                                <div class="col-3">
                                    <h6>Имя:</h6>
                                </div>
                                <div class="col-9">
                                    <#if myCart.customerInfo.firstname??>
                                        <p class="mb-0">${myCart.customerInfo.firstname}</p>
                                    </#if>
                                </div>
                                <div class="col-3">
                                    <h6>Фамилия:</h6>
                                </div>
                                <div class="col-9">
                                    <#if myCart.customerInfo.secondname??>
                                        <p class="mb-0">${myCart.customerInfo.secondname}</p>
                                    </#if>
                                </div>
                                <div class="col-3">
                                    <h6>Email:</h6>
                                </div>
                                <div class="col-9">
                                    <p class="mb-0">${myCart.customerInfo.email}</p>
                                </div>
                                <div class="col-3">
                                    <h6>Телефон:</h6>
                                </div>
                                <div class="col-9">
                                    <#if myCart.customerInfo.phone??>
                                        <p class="mb-0">+7 ${myCart.customerInfo.phone}</p>
                                    </#if>
                                </div>
                                <div class="col-3">
                                    <h6>Адрес:</h6>
                                </div>
                                <div class="col-9">
                                    <p class="mb-0">${myCart.customerInfo.address}</p>
                                </div>
                            </div>
                            <h4 class="mt-3">Итог по заказу:</h4>
                            <hr>
                            <div class="row">
                                <div class="col-3">
                                    <h6>Количество:</h6>
                                </div>
                                <div class="col-9">
                                    <p class="mb-0">${myCart.quantityTotal}</p>
                                </div>
                                <div class="col-3">
                                    <h6>Итоговая цена:</h6>
                                </div>
                                <div class="col-9">
                                    <p class="mb-0">${myCart.amountTotal}.00p.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="tab-content col-sm-12">
        <div class="iq-card">
            <div class="iq-card-body">
                <form class="mt-4 col-md-12" action="/shoppingCartConfirmation" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <div class="d-inline-block w-100">
                        <button type="submit"
                                class="btn btn-primary">Заказать
                        </button>
                    </div>
                    <div class="sign-info mt-3 pt-3">
                    <span class="dark-color d-inline-block line-height-2"><a href="/shoppingCart">Изменить корзину</a>
                    </span>
                        <span class="dark-color d-inline-block line-height-2">Или <a href="/shoppingCartCustomer">Изменить информацию покупателя</a>
                    </span>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-sm-12">
        <div class="iq-card">
            <div class="iq-card-body">
                <div class="friend-list-tab mt-2">
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="all-friends" role="tabpanel">
                            <div class="iq-card-body p-0">
                                <div class="row">
                                    <#list myCart.cartLines as productList>
                                        <div class="col-md-3">
                                            <div class="iq-card">
                                                <div class="iq-card-body profile-page p-0">
                                                    <div class="profile-header-image">
                                                        <div class="cover-container"
                                                             style="transform: translate(25%, 0);width: 150px;">
                                                            <img src="${productList.productInfo.image}"
                                                                 alt="profile-bg" class="rounded img-fluid w-100">
                                                        </div>
                                                        <div class="profile-info p-4">
                                                            <div class="user-detail">
                                                                <div class="flex-wrap justify-content-between align-items-start">
                                                                    <div class="profile-detail d-flex">
                                                                        <div class="user-data-block">
                                                                            <h4>${productList.productInfo.price}
                                                                                .00p.</h4>
                                                                            <p style="font-size: 11px">${productList.productInfo.name}</p>

                                                                            <p>Количество: ${productList.quantity}</p>
                                                                            <p>Итоговая цена: ${productList.amount}
                                                                                .00p.</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </#list>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</@c.page>
