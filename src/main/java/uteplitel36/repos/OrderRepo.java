package uteplitel36.repos;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import uteplitel36.domain.Order;
import uteplitel36.model.OrderInfo;

public interface OrderRepo extends CrudRepository<Order, Long> {

    Order findById(String orderId);

    @Query("select new uteplitel36.model.OrderInfo( " +
            "ord.id, " +
            "ord.orderDate, " +
            "ord.orderNum, " +
            "ord.amount, " +
            "ord.customerFirstname, " +
            "ord.customerSecondname, " +
            "ord.customerAddress, " +
            "ord.customerEmail, " +
            "ord.customerPhone" +
            ") " +
            "from " +
            "Order ord " +
            "order by ord.orderNum desc"
    )
    Page<OrderInfo> findAll(Pageable pageable);

    @Query("select max(o.orderNum) " +
            "from Order o"
    )
    Integer getMaxOrderNum();
}
