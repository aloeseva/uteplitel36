package uteplitel36.dao;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import uteplitel36.model.CartInfo;
import uteplitel36.model.OrderDetailInfo;
import uteplitel36.model.OrderInfo;

import java.util.List;

public interface OrderDAO {

    public void saveOrder(CartInfo cartInfo);

    public Page<OrderInfo> listOrderInfo(Pageable pageable);

    public OrderInfo getOrderInfo(String orderId);

    public List<OrderDetailInfo> listOrderDetailInfos(String orderId);

}
