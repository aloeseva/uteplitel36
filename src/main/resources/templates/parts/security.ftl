<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    isAdmin = user.isAdmin()
    currentUserId = user.getId()
    >
    <#if user.getFirstname()??>
        <#assign
        name = user.getFirstname()
        >
    <#else>
        <#assign
        name = "пользователь"
        >
    </#if>
<#else>
    <#assign
    name = "unknown"
    isAdmin = false
    currentUserId = -1
    >
</#if>
