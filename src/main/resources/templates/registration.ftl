<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<#import "parts/login.ftl" as l>

<@c.page >
    <script>
        width = screen.width;
        if (width > 430) {
            reg = '<h1 class="mb-0">Регистрация</h1>'
        } else {
            reg = '<h1 class="mb-0" style="font-size: 38px">Регистрация</h1>'
        }
    </script>
    <div class="tab-content col-sm-12">
        <div class="iq-card">
            <div class="iq-card-body">
                <div class="sign-in-from">
                    <script>
                        document.write(reg)
                    </script>
                    <@l.login "/registration" true />
                </div>
            </div>
        </div>
    </div>
</@c.page>
