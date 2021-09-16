package uteplitel36.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import uteplitel36.dao.OrderDAO;
import uteplitel36.model.CartInfo;
import uteplitel36.model.OrderDetailInfo;
import uteplitel36.model.OrderInfo;
import uteplitel36.model.ProductInfo;
import uteplitel36.util.Utils;
import uteplitel36.validator.ProductInfoValidator;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@Transactional
@EnableWebMvc
public class OrderController {

    private final OrderDAO orderDAO;

    private final ProductInfoValidator productInfoValidator;

    @Autowired
    public OrderController(OrderDAO orderDAO, ProductInfoValidator productInfoValidator) {
        this.orderDAO = orderDAO;
        this.productInfoValidator = productInfoValidator;
    }

    @InitBinder
    public void myInitBinder(WebDataBinder dataBinder) {
        Object target = dataBinder.getTarget();
        if (target == null) {
            return;
        }

        if (target.getClass() == ProductInfo.class) {
            dataBinder.setValidator(productInfoValidator);
            // For upload Image.
            dataBinder.registerCustomEditor(byte[].class, new ByteArrayMultipartFileEditor());
        }
    }

    @RequestMapping(value = { "/login" }, method = RequestMethod.GET)
    public String login(
            HttpServletRequest request,
            Model model) {
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        return "login";
    }

    @RequestMapping(value = { "/orderList" }, method = RequestMethod.GET)
    public String orderList(
            HttpServletRequest request,
            Model model,
            Pageable pageable) {
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        Page<OrderInfo> paginationResult = orderDAO.listOrderInfo(pageable);

        model.addAttribute("paginationResult", paginationResult);
        model.addAttribute("totalRecords", paginationResult.getContent().size());
        model.addAttribute("url", "/orderList");
        return "orderList";
    }

    @RequestMapping(value = { "/order" }, method = RequestMethod.GET)
    public String orderView(HttpServletRequest request,
                            Model model,
                            @RequestParam("orderId") String orderId,
                            Pageable pageable) {
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        OrderInfo orderInfo = null;
        if (orderId != null) {
            orderInfo = this.orderDAO.getOrderInfo(orderId);
        }
        if (orderInfo == null) {
            return "redirect:/orderList";
        }
        List<OrderDetailInfo> details = this.orderDAO.listOrderDetailInfos(orderId);
        orderInfo.setDetails(details);

        model.addAttribute("orderInfo", orderInfo);

        Page<OrderInfo> paginationResult //
                = orderDAO.listOrderInfo(pageable);

        model.addAttribute("paginationResult", paginationResult);

        return "order";
    }

}
