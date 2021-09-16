<#import "parts/common.ftl" as c>

<@c.page >
    <div class="col-sm-12">
        <div class="tab-content">
            <div class="iq-card">
                <div class="iq-card-body">
                    <h2>Информация заказа</h2>
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
                                    <p class="mb-0">${orderInfo.customerFirstname}</p>
                                </div>
                                <div class="col-3">
                                    <h6>Фамилия:</h6>
                                </div>
                                <div class="col-9">
                                    <p class="mb-0">${orderInfo.customerSecondame}</p>
                                </div>
                                <div class="col-3">
                                    <h6>Email:</h6>
                                </div>
                                <div class="col-9">
                                    <p class="mb-0">${orderInfo.customerEmail}</p>
                                </div>
                                <div class="col-3">
                                    <h6>Телефон:</h6>
                                </div>
                                <div class="col-9">
                                    <p class="mb-0">+7 ${orderInfo.customerPhone}</p>
                                </div>
                                <div class="col-3">
                                    <h6>Адрес:</h6>
                                </div>
                                <div class="col-9">
                                    <p class="mb-0">${orderInfo.customerAddress}</p>
                                </div>
                            </div>
                            <h4 class="mt-3">Итог по заказу:</h4>
                            <hr>
                            <div class="row">
                                <div class="col-3">
                                    <h6>Сумма:</h6>
                                </div>
                                <div class="col-9">
                                    <p class="mb-0">${orderInfo.amount}.00p.</p>
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
            <div class="iq-card-body">
                <div class="table-responsive">
                    <table class="files-lists table table-striped mt-4">
                        <thead>
                        <tr>
                            <th scope="col">Код продукта</th>
                            <th scope="col">Наименование продукта</th>
                            <th scope="col">Количество</th>
                            <th scope="col">Цена</th>
                            <th scope="col">Общая цена</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#list orderInfo.details as orderDetailInfo>
                            <tr>
                                <td>${orderDetailInfo.productCode}</td>
                                <td>${orderDetailInfo.productName}</td>
                                <td>${orderDetailInfo.quanity}</td>
                                <td>${orderDetailInfo.price}.00p.</td>
                                <td>${orderDetailInfo.amount}.00p.</td>
                            </tr>
                        </#list>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</@c.page>
