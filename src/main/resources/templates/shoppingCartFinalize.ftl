<#import "parts/common.ftl" as c>

<@c.page >
    <div class="col-sm-12">
        <div class="tab-content">
            <div class="iq-card">
                <div class="iq-card-body">
                    <h2>Спасибо за заказ!</h2>
                    <p>
                        Ваш номер заказа: ${lastOrderedCart.orderNum}
                    </p>
                </div>
            </div>
        </div>
    </div>
</@c.page>
