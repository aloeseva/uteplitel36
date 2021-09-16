<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">


<@c.page >
    <div class="col-sm-12">
        <div class="tab-content">
            <div class="iq-card">
                <div class="iq-card-body">
                    <h2>Введите информацию для заказа</h2>
                </div>
            </div>
        </div>
    </div>

    <#if !known>
        <div class="col-sm-12">
            <div class="tab-content">
                <div class="iq-card">
                    <div class="iq-card-body">
                        <h2>Новый покупатель</h2>
                        <p>
                            Создание учетной записи поможет делать покупки быстрее и удобнее, а
                            так же получать скидки как постоянный покупатель и видеть список ваших заказов.
                        </p>
                        <div class="d-inline-block w-100">
                            <a href="/registration"
                               class="btn btn-primary float-right">Зарегистрироваться
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </#if>

    <div class="tab-content col-sm-12">
        <div class="iq-card">
            <div class="iq-card-body">
                <form class="mt-4 col-md-12" action="/shoppingCartCustomer" method="post">
                    <div class="form-group">
                        <label class="control-label" for="exampleInputUsername">Имя:</label>
                        <input type="text"
                               name="firstname"
                               value="<#if customerForm.firstname??>${customerForm.firstname}<#elseif known>${user.firstname}</#if>"
                               class="form-control mb-0 ${(firstnameError??)?string('is-invalid', '')}"
                               id="exampleInputFirstname"
                               placeholder="Имя">
                        <#if firstnameError??>
                            <div class="invalid-feedback">
                                ${firstnameError}
                            </div>
                        </#if>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="exampleInputUsername">Фамилия:</label>
                        <input type="text"
                               name="secondname"
                               value="<#if customerForm.secondname??>${customerForm.secondname}<#elseif known>${user.secondname}</#if>"
                               class="form-control mb-0 ${(secondnameError??)?string('is-invalid', '')}"
                               id="exampleInputUsername"

                               placeholder="Фамилия">
                        <#if secondnameError??>
                            <div class="invalid-feedback">
                                ${secondnameError}
                            </div>
                        </#if>
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="exampleInputEmail">E-Mail:</label>
                        <input type="email"
                               name="email"
                               value="<#if customerForm.email??>${customerForm.email}<#elseif known>${user.email}</#if>"
                               class="form-control mb-0 ${(emailError??)?string('is-invalid', '')}"
                               id="exampleInputEmail"
                               placeholder="some@some.com">
                        <#if emailError??>
                            <div class="invalid-feedback">
                                ${emailError}
                            </div>
                        </#if>
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="exampleInputEmail">Телефон:</label>
                    </div>
                    <div class="form-group" style="margin-top: -17px;">
                        <i class="fa" aria-hidden="true">+7</i>
                        <input type="tel"
                               name="phone"
                               value="<#if customerForm.phone??>${customerForm.phone}<#elseif known>${user.telephone}</#if>"
                               class="form-control mb-0 ${(phoneError??)?string('is-invalid', '')}"
                               id="exampleInputTelephone"
                               placeholder="Телефон">

                        <#if phoneError??>
                            <div class="invalid-feedback">
                                ${phoneError}
                            </div>
                        </#if>
                    </div>

                    <div class="form-group required">
                        <label class="control-label" for="exampleInputAddress">Адрес:</label>
                        <input type="text"
                               name="address"
                               value="<#if customerForm.address??>${customerForm.address}</#if>"
                               class="form-control mb-0 ${(addressError??)?string('is-invalid', '')}"
                               id="exampleInputAddress"
                               placeholder="Адрес">
                        <#if addressError??>
                            <div class="invalid-feedback">
                                ${addressError}
                            </div>
                        </#if>
                    </div>

                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <div class="d-inline-block w-100">
                        <button type="submit"
                                class="btn btn-primary float-right">Продолжить
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</@c.page>
