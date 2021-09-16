package uteplitel36.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import uteplitel36.dao.OrderDAO;
import uteplitel36.dao.ProductDAO;
import uteplitel36.domain.Item;
import uteplitel36.domain.Order;
import uteplitel36.domain.OrderDetail;
import uteplitel36.model.*;
import uteplitel36.repos.OrderDetailRepo;
import uteplitel36.repos.OrderRepo;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Transactional
public class OrderDAOImpl implements OrderDAO {
    @Autowired
    private OrderRepo orderRepo;

    @Autowired
    private OrderDetailRepo orderDetailRepo;

    @Autowired
    private ProductDAO productDAO;

    private int getMaxOrderNum() {
        Integer value = orderRepo.getMaxOrderNum();
        if (value == null) {
            return 0;
        }
        return value;
    }

    @Override
    public void saveOrder(CartInfo cartInfo) {
        int orderNum = this.getMaxOrderNum() + 1;
        Order order = new Order();

        order.setId(UUID.randomUUID().toString());
        order.setOrderNum(orderNum);
        order.setOrderDate(new Date());
        order.setAmount(cartInfo.getAmountTotal());

        CustomerInfo customerInfo = cartInfo.getCustomerInfo();
        order.setCustomerFirstname(customerInfo.getFirstname());
        order.setCustomerSecondname(customerInfo.getSecondname());
        order.setCustomerEmail(customerInfo.getEmail());
        order.setCustomerPhone(customerInfo.getPhone());
        order.setCustomerAddress(customerInfo.getAddress());

        orderRepo.save(order);
        List<CartLineInfo> lines = cartInfo.getCartLines();

        for (CartLineInfo line : lines) {
            OrderDetail detail = new OrderDetail();
            detail.setId(UUID.randomUUID().toString());
            detail.setOrder(order);
            detail.setAmount(line.getAmount());
            detail.setPrice(line.getProductInfo().getPrice());
            detail.setQuanity(line.getQuantity());

            String code = line.getProductInfo().getCode();
            Item product = this.productDAO.findProduct(code);
            detail.setProduct(product);

            orderDetailRepo.save(detail);
        }

        cartInfo.setOrderNum(orderNum);
    }

    @Override
    public Page<OrderInfo> listOrderInfo(Pageable pageable) {
        return orderRepo.findAll(pageable);
    }

    public Order findOrder(String orderId) {
        return orderRepo.findById(orderId);
    }

    @Override
    public OrderInfo getOrderInfo(String orderId) {
        Order order = this.findOrder(orderId);
        if (order == null) {
            return null;
        }
        return new OrderInfo(order.getId(), order.getOrderDate(), //
                order.getOrderNum(), order.getAmount(), order.getCustomerFirstname(), order.getCustomerSecondname(), //
                order.getCustomerAddress(), order.getCustomerEmail(), order.getCustomerPhone());
    }

    @Override
    public List<OrderDetailInfo> listOrderDetailInfos(String orderId) {

        return orderDetailRepo.findByOrder(orderId);
    }
}
