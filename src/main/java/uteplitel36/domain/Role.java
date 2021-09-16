package uteplitel36.domain;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    USER, ADMIN, ROLE_MANAGER, EMPLOYEE;

    @Override
    public String getAuthority() {
        return name();
    }
}
