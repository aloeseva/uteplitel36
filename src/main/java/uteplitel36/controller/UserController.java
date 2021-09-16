package uteplitel36.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import uteplitel36.domain.Role;
import uteplitel36.domain.User;
import uteplitel36.service.UserSevice;

import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    private final UserSevice userSevice;

    @Autowired
    public UserController(UserSevice userSevice) {
        this.userSevice = userSevice;
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping
    public String userList(Model model) {
        model.addAttribute("users", userSevice.findAll());

        return "userList";
    }

    @GetMapping("list")
    public String users(
            @RequestParam(required = false, defaultValue = "") String filter,
            Model model
    ) {
        model.addAttribute("users", userSevice.findByEmail(filter));
        model.addAttribute("filter", filter);

        return "users";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("{user}")
    public String userEditForm(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());

        return "userEdit";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping
    public String userSave(
            @RequestParam String firstname,
            @RequestParam String secondname,
            @RequestParam Map<String, String> form,
            @RequestParam("userId") User user
    ) {
        userSevice.saveUser(user, firstname, secondname, form);

        return "redirect:/user";
    }

    @GetMapping("profile")
    public String getProfile(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("username", user.getUsername());
        model.addAttribute("email", user.getEmail());

        return "profile";
    }

    @PostMapping("profile")
    public String updateProfile(
            @AuthenticationPrincipal User user,
            @RequestParam String password,
            @RequestParam String email
    ) {
        userSevice.updateProfile(user, password, email);

        return "redirect:/user/profile";
    }
}
