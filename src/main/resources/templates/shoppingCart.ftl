<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<#import "/spring.ftl" as spring />

<@c.page>
    <div class="col-sm-12">
        <div class="tab-content">
            <div class="iq-card">
                <div class="iq-card-body">
                    <h2>Корзина</h2>
                </div>
            </div>
        </div>
    </div>

    <#if cartSize == 0>
        <div class="col-sm-12">
            <div class="tab-content">
                <div class="iq-card">
                    <div class="iq-card-body">
                        <h3>Ваша Корзина пуста!</h3>
                        <span class="dark-color d-inline-block line-height-2">
                            <a href="/">Вернуться к покупкам</a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    <#else>
        <div class="tab-content col-sm-12">
            <div class="iq-card">
                <div class="iq-card-body">
                    <form class="mt-4 col-md-12" action="/shoppingCart" method="post">
                        <div class="row">
                            <#list cartForm.cartLines as productList>
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
                                                                    <h4>${productList.productInfo.price}.00p.</h4>
                                                                    <p style="font-size: 11px">${productList.productInfo.name}</p>

                                                                    <div class="form-group required">
                                                                        <label>Количество:</label>
                                                                        <input name="quantity"
                                                                               class="form-control mb-0 ${(passwordError??)?string('is-invalid', '')}"
                                                                               value="${productList.quantity}">
                                                                        <#if passwordError??>
                                                                            <div class="invalid-feedback">
                                                                                ${passwordError}
                                                                            </div>
                                                                        </#if>
                                                                    </div>
                                                                    <p>Итоговая цена: ${productList.amount}.00p.</p>
                                                                    <a href="/shoppingCartRemoveProduct?code=${productList.productInfo.code}"
                                                                       type="button"
                                                                       style="transform: translate(50%, 0)"
                                                                       class="btn btn-outline-danger mb-3">Удалить</a>
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


                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>

                        <div class="d-inline-block w-100 offset-md-4">
                            <button type="submit"
                                    class="btn btn-primary">Обновить количество товаров
                            </button>
                        </div>
                        <div class="sign-info mt-3 pt-3">
                                <span class="dark-color d-inline-block line-height-2">
                                    <a href="/shoppingCartCustomer">Оформить заказ </a>
                                </span>
                            <span class="dark-color d-inline-block line-height-2">Или <a href="/">Вернуться к покупкам</a>
                                </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </#if>

</@c.page>