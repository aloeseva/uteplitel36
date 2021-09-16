package uteplitel36.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import uteplitel36.dao.OrderDAO;
import uteplitel36.dao.ProductDAO;
import uteplitel36.domain.Item;
import uteplitel36.model.CartInfo;
import uteplitel36.model.CustomerInfo;
import uteplitel36.model.ProductInfo;
import uteplitel36.util.Utils;
import uteplitel36.validator.CustomerInfoValidator;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@Transactional
public class ShoppingCartController {

    private final OrderDAO orderDAO;

    private final ProductDAO productDAO;

    private final CustomerInfoValidator customerInfoValidator;

    @Autowired
    public ShoppingCartController(OrderDAO orderDAO, ProductDAO productDAO, CustomerInfoValidator customerInfoValidator) {
        this.orderDAO = orderDAO;
        this.productDAO = productDAO;
        this.customerInfoValidator = customerInfoValidator;
    }

    @InitBinder
    public void myInitBinder(WebDataBinder dataBinder) {
        Object target = dataBinder.getTarget();
        if (target == null) {
            return;
        }

        // For Cart Form.
        // (@ModelAttribute("cartForm") @Validated CartInfo cartForm)
        if (target.getClass() == CartInfo.class) {

        }
        // For Customer Form.
        // (@ModelAttribute("customerForm") @Validated CustomerInfo
        // customerForm)
        else if (target.getClass() == CustomerInfo.class) {
            dataBinder.setValidator(customerInfoValidator);
        }

    }

    @RequestMapping({"/buyProduct"})
    public String listProductHandler(
            HttpServletRequest request,
            @RequestParam(value = "code", defaultValue = "") String code
    ) {

        Item product = null;
        if (code != null && code.length() > 0) {
            product = productDAO.findProduct(code);
        }
        if (product != null) {

            // Cart info stored in Session.
            CartInfo cartInfo = Utils.getCartInSession(request);

            ProductInfo productInfo = new ProductInfo(product);

            cartInfo.addProduct(productInfo, 1);
        }
        // Redirect to shoppingCart page.
        return "redirect:/shoppingCart";
    }

    @RequestMapping({"/shoppingCartRemoveProduct"})
    public String removeProductHandler(
            HttpServletRequest request,  //
            @RequestParam(value = "code", defaultValue = "") String code) {
        Item product = null;
        if (code != null && code.length() > 0) {
            product = productDAO.findProduct(code);
        }
        if (product != null) {

            // Cart Info stored in Session.
            CartInfo cartInfo = Utils.getCartInSession(request);

            ProductInfo productInfo = new ProductInfo(product);

            cartInfo.removeProduct(productInfo);

        }
        // Redirect to shoppingCart page.
        return "redirect:/shoppingCart";
    }

    // POST: Update quantity of products in cart.
    @RequestMapping(value = {"/shoppingCart"}, method = RequestMethod.POST)
    public String shoppingCartUpdateQty(
            HttpServletRequest request,
            @RequestParam("quantity") String quantity
    ) {

        CartInfo cartInfo = Utils.getCartInSession(request);

        String[] qnt = quantity.split(String.valueOf(','));
        for (int i = 0; i < qnt.length; i++) {
            cartInfo.getCartLines().get(i).setQuantity(Integer.parseInt(qnt[i]));
        }
        cartInfo.updateQuantity(cartInfo);

        // Redirect to shoppingCart page.
        return "redirect:/shoppingCart";
    }

    // GET: Show Cart
    @RequestMapping(value = {"/shoppingCart"}, method = RequestMethod.GET)
    public String shoppingCartHandler(HttpServletRequest request, Model model) {
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        model.addAttribute("cartForm", myCart);
        return "shoppingCart";
    }

    // GET: Enter customer information.
    @RequestMapping(value = {"/shoppingCartCustomer"}, method = RequestMethod.GET)
    public String shoppingCartCustomerForm(HttpServletRequest request, Model model) {
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        CartInfo cartInfo = Utils.getCartInSession(request);

        // Cart is empty.
        if (cartInfo.isEmpty()) {

            // Redirect to shoppingCart page.
            return "redirect:/shoppingCart";
        }

        CustomerInfo customerInfo = cartInfo.getCustomerInfo();
        if (customerInfo == null) {
            customerInfo = new CustomerInfo();
        }

        model.addAttribute("customerForm", customerInfo);

        return "shoppingCartCustomer";
    }

    // POST: Save customer information.
    @RequestMapping(value = {"/shoppingCartCustomer"}, method = RequestMethod.POST)
    public String shoppingCartCustomerSave(HttpServletRequest request, //
                                           @ModelAttribute("customerForm") @Validated CustomerInfo customerForm,
                                           BindingResult result, //
                                           Model model//
    ) {
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        // If has Errors.
        if (result.hasErrors()) {
            customerForm.setValid(false);
            Map<String, String> errors = ControllerUtils.getErrors(result);

            model.mergeAttributes(errors);
            // Forward to reenter customer info.
            return "shoppingCartCustomer";
        }

        customerForm.setValid(true);
        CartInfo cartInfo = Utils.getCartInSession(request);

        cartInfo.setCustomerInfo(customerForm);

        // Redirect to Confirmation page.
        return "redirect:/shoppingCartConfirmation";
    }

    // GET: Review Cart to confirm.
    @RequestMapping(value = {"/shoppingCartConfirmation"}, method = RequestMethod.GET)
    public String shoppingCartConfirmationReview(HttpServletRequest request, Model model) {
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        CartInfo cartInfo = Utils.getCartInSession(request);

        // Cart have no products.
        if (cartInfo.isEmpty()) {
            // Redirect to shoppingCart page.
            return "redirect:/shoppingCart";
        } else if (!cartInfo.isValidCustomer()) {
            // Enter customer info.
            return "redirect:/shoppingCartCustomer";
        }
        model.addAttribute("myCart", cartInfo);

        return "shoppingCartConfirmation";
    }

    // POST: Send Cart (Save).
    @RequestMapping(value = {"/shoppingCartConfirmation"}, method = RequestMethod.POST)
    // Avoid UnexpectedRollbackException (See more explanations)
    @Transactional(propagation = Propagation.NEVER)
    public String shoppingCartConfirmationSave(HttpServletRequest request,
                                               Model model) {
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        CartInfo cartInfo = Utils.getCartInSession(request);

        // Cart have no products.
        if (cartInfo.isEmpty()) {
            // Redirect to shoppingCart page.
            return "redirect:/shoppingCart";
        } else if (!cartInfo.isValidCustomer()) {
            // Enter customer info.
            return "redirect:/shoppingCartCustomer";
        }
        try {
            orderDAO.saveOrder(cartInfo);
        } catch (Exception e) {
            // Need: Propagation.NEVER?
            return "redirect:/shoppingCartCustomer";
        }

        // Remove Cart In Session.
        Utils.removeCartInSession(request);

        // Store Last ordered cart to Session.
        Utils.storeLastOrderedCartInSession(request, cartInfo);

        // Redirect to successful page.
        return "redirect:/shoppingCartFinalize";
    }

    @RequestMapping(value = {"/shoppingCartFinalize"}, method = RequestMethod.GET)
    public String shoppingCartFinalize(HttpServletRequest request, Model model) {
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        CartInfo lastOrderedCart = Utils.getLastOrderedCartInSession(request);

        if (lastOrderedCart == null) {
            return "redirect:/shoppingCart";
        }

        return "shoppingCartFinalize";
    }
}
