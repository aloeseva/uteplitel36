package uteplitel36.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import uteplitel36.domain.Role;
import uteplitel36.domain.User;
import uteplitel36.repos.UserRepo;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class UserSevice implements UserDetailsService {
    @Autowired
    private UserRepo userRepo;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Value("${hostname}")
    private String hostname;

    public UserDetails loadUserByEmail(String email) throws UsernameNotFoundException {
        User user = userRepo.findByEmail(email);

        if (user == null) {
            throw new UsernameNotFoundException("Пользователь не найден");
        }

        return user;
    }

    public boolean addUser(User user) {
        User userFromDb = userRepo.findByEmail(user.getEmail());

        if (userFromDb != null) {
            return false;
        }

        user.setActive(true);
        user.setTelephone("8" + user.getTelephone());
        user.setRoles(Collections.singleton(Role.USER));
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userRepo.save(user);

        return true;
    }

    public List<User> findAll() {
        return userRepo.findAll();
    }

    public List<User> findByEmail(String filter) {
        if (filter != null && !filter.isEmpty()) {
            return Collections.singletonList(userRepo.findByEmail(filter));
        } else {
            return userRepo.findAll();
        }
    }

//    public void deleteUser(User user) {
//        user.getRoles().clear();
//        for (User tmpUser :
//                user.getSubscribers()) {
//            tmpUser.getSubscriptions().remove(user);
//            userRepo.save(tmpUser);
//        }
//        user.getSubscribers().clear();
//        for (User tmpUser :
//                user.getSubscriptions()) {
//            tmpUser.getSubscribers().remove(user);
//            userRepo.save(tmpUser);
//        }
//        user.getSubscriptions().clear();
//        for (Message message : user.getMessages()) {
//            for (Comment comment : message.getComments()) {
//                comment.getDislikes().clear();
//                comment.getLikes().clear();
//            }
//            message.getLikes().clear();
//            message.getDislikes().clear();
//        }
//        for (Comment comment :
//                user.getComments()) {
//            comment.getDislikes().clear();
//            comment.getLikes().clear();
//        }
//        for (Message m :
//                messageRepo.findAll()) {
//            m.getDislikes().remove(user);
//            m.getLikes().remove(user);
//            messageRepo.save(m);
//        }
//        for (Comment comment :
//                commentRepo.findAll()) {
//            comment.getDislikes().remove(user);
//            comment.getLikes().remove(user);
//            commentRepo.save(comment);
//        }
//        userRepo.delete(user);
//    }

    public void saveUser(User user, String firstname, String secondname, Map<String, String> form) {
        user.setFirstname(firstname);
        user.setSecondname(secondname);

        Set<String> roles = Arrays.stream(Role.values())
                .map(Role::name)
                .collect(Collectors.toSet());

        user.getRoles().clear();

        for (String key : form.keySet()) {
            if (roles.contains(key)) {
                user.getRoles().add(Role.valueOf(key));
            }
        }

        userRepo.save(user);
    }

    public void updateProfile(User user, String password, String email) {
        String userEmail = user.getEmail();

        boolean isEmailChanged = (email != null && !email.equals(userEmail)) ||
                (userEmail != null && !userEmail.equals(email));

        if (isEmailChanged) {
            user.setEmail(email);

//            if (!StringUtils.isEmpty(email)) {
//                user.setActivationCode(UUID.randomUUID().toString());
//            }
        }

        if (!StringUtils.isEmpty(password)) {
            user.setPassword(password);
        }

        userRepo.save(user);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepo.findByEmail(username);

        if (user == null) {
            throw new UsernameNotFoundException("Пользователь не найден");
        }

        return user;
    }
}
