package uteplitel36.validator;

import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import uteplitel36.model.CustomerInfo;

// @Component: As a Bean.
@Component
public class CustomerInfoValidator implements Validator {

    private final EmailValidator emailValidator = EmailValidator.getInstance();

    // This Validator support CustomerInfo class.
    @Override
    public boolean supports(Class<?> clazz) {
        return clazz == CustomerInfo.class;
    }

    @Override
    public void validate(Object target, Errors errors) {
        CustomerInfo custInfo = (CustomerInfo) target;

        // Check the fields of CustomerInfo class.
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstname", "Поле 'Имя' не может быть пустым!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "secondname", "Поле 'Фамилия' не может быть пустым!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "Поле 'E-Mail' не может быть пустым!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "Поле 'Адрес' не может быть пустым!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "Поле 'Телефон' не может быть пустым!");

//        if (!emailValidator.isValid(custInfo.getEmail())) {
//            errors.rejectValue("email", "Pattern.customerForm.email");
//        }
    }

}
