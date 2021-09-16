package uteplitel36.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import uteplitel36.domain.User;
import uteplitel36.model.CartInfo;
import uteplitel36.service.UserSevice;
import uteplitel36.util.Utils;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.Map;

@Controller
public class RegistrationController {
    private final UserSevice userSevice;

    @Autowired
    public RegistrationController(UserSevice userSevice) {
        this.userSevice = userSevice;
    }

    @GetMapping("/registration")
    public String registration(HttpServletRequest request,
                               Model model) {
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(
            HttpServletRequest request,
            @RequestParam("password2") String passwordConfirm,
            @Valid User user,
            BindingResult bindingResult,
            Model model
    ) {
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        boolean isConfirmEmpty = StringUtils.isEmpty(passwordConfirm);

        if (isConfirmEmpty) {
            model.addAttribute("password2Error", "Подтверждение пароля не может быть пустым");
        }

        boolean isConfirmPassword = true;
        if (user.getPassword() != null && !user.getPassword().equals(passwordConfirm)) {
            model.addAttribute("passwordError", "Пароли разные!");
            isConfirmPassword = false;
        }

        boolean isPasswordNormLeng = true;
        if (user.getPassword() != null && user.getPassword().length() < 4) {
            model.addAttribute("passwordError", "Пароль не может быть меньше 4 символов!");
            isPasswordNormLeng = false;
        }

        if (isConfirmEmpty || !isConfirmPassword || !isPasswordNormLeng || bindingResult.hasErrors()) {
            Map<String, String> errors = ControllerUtils.getErrors(bindingResult);

            model.mergeAttributes(errors);

            return "registration";
        }

        if (!userSevice.addUser(user)) {
            model.addAttribute("emailError", "Пользователь с таким E-Mail уже существует!");
            return "registration";
        }

        return "redirect:/login";
    }
}
