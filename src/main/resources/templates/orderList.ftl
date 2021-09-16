<#import "parts/common.ftl" as c>
<#import "parts/pager.ftl" as p>

<@c.page >
    <div class="col-sm-12">
        <div class="tab-content">
            <div class="iq-card">
                <div class="iq-card-body">
                    <h2>Список заказов</h2>
                    <p>Общее количество заказов: ${totalRecords}</p>
                </div>
            </div>
        </div>
    </div>

    <@p.pager paginationResult url />
    <div class="col-sm-12">
        <div class="iq-card">
            <div class="iq-card-body">
                <div class="table-responsive">
                    <table class="files-lists table table-striped mt-4">
                        <thead>
                        <tr>
                            <th scope="col">Номер заказа</th>
                            <th scope="col">Дата заказа</th>
                            <th scope="col">Имя заказчика</th>
                            <th scope="col">Фамилия заказчика</th>
                            <th scope="col">Адрес заказчика</th>
                            <th scope="col">E-Mail заказчика</th>
                            <th scope="col">Стоимость заказа</th>
                            <th scope="col">Подробнее</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#list paginationResult.content as orderInfo>
                            <tr>
                                <td>${orderInfo.orderNum}</td>
                                <td>${orderInfo.orderDate}
                                </td>
                                <td>${orderInfo.customerFirstname}</td>
                                <td>${orderInfo.customerSecondame}</td>
                                <td>${orderInfo.customerAddress}</td>
                                <td>${orderInfo.customerEmail}</td>
                                <td style="color:red;">
                                    ${orderInfo.amount}.00p.
                                </td>
                                <td><a href="/order?orderId=${orderInfo.id}">
                                        Подробнее</a></td>
                            </tr>
                        </#list>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</@c.page>
