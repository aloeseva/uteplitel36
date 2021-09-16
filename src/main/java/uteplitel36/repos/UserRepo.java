package uteplitel36.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import uteplitel36.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
//    User findByUsername(String username);

    User findByEmail(String email);

//    User findByActivationCode(String code);
}
