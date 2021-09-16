<#include "security.ftl">

<!-- Sidebar  -->
<div class="iq-sidebar">
    <div id="sidebar-scrollbar">
        <nav class="iq-sidebar-menu">
            <ul id="iq-sidebar-toggle" class="iq-menu">
                <li>
                    <a href="#ui-elements" class="iq-waves-effect <#if !categoryName??> collapsed </#if>"  data-toggle="collapse" aria-expanded="<#if !categoryName??> false <#else> true </#if>"><i class="fas fa-align-left"></i><span>Каталог</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                    <ul id="ui-elements" class="iq-submenu collapse <#if categoryName??> show </#if>" data-parent="#iq-sidebar-toggle">
                        <li>
                            <a href="#ui-kit" class="iq-waves-effect <#if !categoryName??> collapsed <#elseif categoryName == "uteplitel"> </#if>" data-toggle="collapse" aria-expanded="<#if !categoryName??> false <#elseif categoryName != "uteplitel"> true </#if>"><i class="las la-campground"></i><span>Утеплитель</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                            <ul id="ui-kit" class="iq-submenu collapse <#if !categoryName??> <#elseif categoryName == "uteplitel"> show</#if>" data-parent="#ui-elements">
                                <li class="<#if !category??> <#elseif !subCategory?? && categoryName == "uteplitel"> active</#if>"><a href="/categories/uteplitel">Все</a></li>
                                <li class="<#if !subCategory??> <#elseif subCategory.name == "uteplitel-dlya-krovli"> active</#if>"><a href="/categories/uteplitel/uteplitel-dlya-krovli">Для кровли</a></li>
                                <li class="<#if !subCategory??> <#elseif subCategory.name == "uteplitel-dlya-pola"> active</#if>"><a href="/categories/uteplitel/uteplitel-dlya-pola">Для пола</a></li>
<#--                                <li><a href="#">Для звукоизоляции</a></li>-->
<#--                                <li><a href="#">Для стен</a></li>-->
<#--                                <li><a href="#">Для фундамента</a></li>-->
                                <li class="<#if !brand??> <#elseif brand == "ISOVOL"> active</#if>"><a href="/brands/isovol">Isovol</a></li>
                                <li class="<#if !brand??> <#elseif brand == "URSA"> active</#if>"><a href="/brands/ursa">Ursa</a></li>
<#--                                <li><a href="#">Для ...</a></li>-->
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="iq-waves-effect"><i
                                class="las la-industry"></i><span>О нас</span></a>
                </li>
                <li>
                    <a href="#" class="iq-waves-effect"><i
                                class="las la-wallet"></i><span>Оплата</span></a>
                </li>
                <li>
                    <a href="#" class="iq-waves-effect"><i
                                class="las la-truck"></i><span>Доставка</span></a>
                </li>
                <li>
                    <a href="#" class="iq-waves-effect"><i
                                class="las la-handshake"></i><span>Партнеры</span></a>
                </li>
                <li>
                    <a href="#" class="iq-waves-effect"><i
                                class="las la-map-marker-alt"></i><span>Контакты</span></a>
                </li>
                <#if user??>
                    <li>
                        <a href="#" class="iq-waves-effect"><i
                                    class="las la-user"></i><span>Личный кабинет</span></a>
                    </li>
                </#if>
            </ul>
        </nav>
        <div class="p-3"></div>
    </div>
</div>
<!-- End Sidebar  -->
