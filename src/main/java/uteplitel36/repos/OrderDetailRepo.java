package uteplitel36.repos;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import uteplitel36.domain.OrderDetail;
import uteplitel36.model.OrderDetailInfo;

import java.util.List;

public interface OrderDetailRepo extends CrudRepository<OrderDetail, Long> {
    @Query("select new uteplitel36.model.OrderDetailInfo(" +
            "d.id, " +
            "d.product.code, " +
            "d.product.name, " +
            "d.quanity, " +
            "d.price, " +
            "d.amount" +
            ") " +
            "from OrderDetail d " +
            "where d.order.id = :orderId"
    )
    List<OrderDetailInfo> findByOrder(@Param("orderId") String orderId);
}
