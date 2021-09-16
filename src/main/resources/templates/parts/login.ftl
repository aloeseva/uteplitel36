<#include "security.ftl">

<#macro login path isRegisterForm>


    <form class="mt-4" action="${path}" method="post">
        <div class="form-group">
            <label <#if isRegisterForm>class="control-label"</#if> for="exampleInputEmail">E-Mail:</label>
            <input type="<#if isRegisterForm>email<#else>username</#if>"
                   name="<#if isRegisterForm>email<#else>username</#if>"
                   value="<#if user??>${user.email}</#if>"
                   class="form-control mb-0 ${(emailError??)?string('is-invalid', '')}"
                   id="exampleInputEmail"
                   placeholder="some@some.com">
            <#if emailError??>
                <div class="invalid-feedback">
                    ${emailError}
                </div>
            </#if>
        </div>

        <#if isRegisterForm>
            <div class="form-group">
                <label class="control-label" for="exampleInputUsername">Имя:</label>
                <input type="text"
                       name="firstname"
                       value="<#if user??>${user.firstname}</#if>"
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
                       value="<#if user??>${user.secondname}</#if>"
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
                <label class="control-label" for="exampleInputEmail">Телефон:</label>
            </div>
            <div class="form-group" style="margin-top: -17px;">
                <i class="fa" aria-hidden="true">+7</i>
                <input type="tel"
                       name="telephone"
                       value="<#if user??>${user.telephone}</#if>"
                       class="form-control mb-0 ${(telephoneError??)?string('is-invalid', '')}"
                       id="exampleInputTelephone"
                       placeholder="Телефон">

                <#if telephoneError??>
                    <div class="invalid-feedback">
                        ${telephoneError}
                    </div>
                </#if>
            </div>
        </#if>

        <div class="form-group required">
            <label <#if isRegisterForm>class="control-label"</#if> for="exampleInputPassword1">Пароль:</label>
            <input type="password"
                   name="password"
                   class="form-control mb-0 ${(passwordError??)?string('is-invalid', '')}"
                   id="exampleInputPassword1"
                   placeholder="Пароль">
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>

        <#if isRegisterForm>
            <div class="form-group">
                <label class="control-label" for="exampleInputPassword2">Повтор пароля:</label>
                <input type="password"
                       name="password2"
                       class="form-control mb-0 ${(password2Error??)?string('is-invalid', '')}"
                       id="exampleInputPassword2"
                       placeholder="Повторите пароль">
                <#if password2Error??>
                    <div class="invalid-feedback">
                        ${password2Error}
                    </div>
                </#if>
            </div>
        </#if>

        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div class="d-inline-block w-100">
            <button type="submit"
                    class="btn btn-primary float-right"><#if isRegisterForm>Создать<#else>Войти</#if></button>
        </div>
        <div class="sign-info">
            <#if !isRegisterForm>
                <span class="dark-color d-inline-block line-height-2">Впервые на сайте? <a href="/registration">Зарегистрироваться</a>
                </span>
            <#else >
                <span class="dark-color d-inline-block line-height-2">Уже имеете аккаунт? <a href="/login">Войти</a>
                </span>
            </#if>
        </div>
    </form>
</#macro>

<#macro logout>
    <#if known>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="btn btn-primary" type="submit" style="text-align: center;">Выйти</button>
        </form>
    <#else>
        <form action="/login" method="get">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="btn btn-primary" type="submit" style="text-align: center;">Войти</button>
        </form>
    </#if>
</#macro>
