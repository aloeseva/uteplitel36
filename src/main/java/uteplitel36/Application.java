package uteplitel36;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import uteplitel36.dao.OrderDAO;
import uteplitel36.dao.ProductDAO;
import uteplitel36.dao.impl.OrderDAOImpl;
import uteplitel36.dao.impl.ProductDAOImpl;

@SpringBootApplication
public class Application {

    @Bean(name = "productDAO")
    public ProductDAO getProductDAO() {
        return new ProductDAOImpl();
    }

    @Bean(name = "orderDAO")
    public OrderDAO getOrderDAO() {
        return new OrderDAOImpl();
    }

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
