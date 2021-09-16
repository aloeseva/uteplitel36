<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<#import "parts/pager.ftl" as p>

<@c.page>
    <div class="col-sm-12">
        <div class="tab-content">
            <div class="iq-card">
                <div class="iq-card-body">
                    <h2>${subCategory.description}</h2>
                </div>
            </div>
        </div>
    </div>
    <@p.pager page url />
    <div class="col-sm-12">
        <div class="iq-card">
            <div class="iq-card-body">
                <div class="friend-list-tab mt-2">
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="all-friends" role="tabpanel">
                            <div class="iq-card-body p-0">
                                <div class="row">
                                    <#list page.content as item>
                                        <div class="col-md-3">
                                            <div class="iq-card" style="height: 450px">
                                                <div class="iq-card-body profile-page p-0">
                                                    <div class="profile-header-image">
                                                        <div class="cover-container">
                                                            <img src="${item.image}"
                                                                 alt="profile-bg" class="rounded img-fluid w-100">
                                                        </div>
                                                        <div class="profile-info p-4">
                                                            <div class="user-detail">
                                                                <div class="flex-wrap justify-content-between align-items-start">
                                                                    <a href="/buyProduct?code=${item.code}"
                                                                            type="submit"
                                                                            class="row btn btn-primary mb-3"
                                                                            style="transform: translate(50%, 0)">
                                                                        <div data-icon="Q" class="icon">
                                                                            Купить
                                                                        </div>
                                                                    </a>
                                                                    <div class="profile-detail d-flex">
                                                                        <div class="user-data-block">
                                                                            <h4>${item.price}.00p.</h4>
                                                                            <p style="font-size: 11px">${item.name}</p>
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