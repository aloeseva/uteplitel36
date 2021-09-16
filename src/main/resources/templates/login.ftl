<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<#import "parts/login.ftl" as l>

<@c.page >
    <div class="tab-content col-sm-12">
        <div class="iq-card">
            <div class="iq-card-body">
                <div class="sign-in-from">
                    <h1 class="mb-0">Вход</h1>
                    <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
                        <div class="alert alert-danger" role="alert">
                            ${"Ошибка: Неправильный E-Mail и/или пароль!"}
                        </div>
                    </#if>
                    <#if message??>
                        <div class="alert alert-${messageType}" role="alert">
                            ${message}
                        </div>
                    </#if>
                    <@l.login "/login" false/>
                </div>
            </div>
        </div>
    </div>
</@c.page>
