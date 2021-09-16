package uteplitel36.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import uteplitel36.domain.Item;
import uteplitel36.model.ProductInfo;

public interface ProductDAO {


    public Item findProduct(String code);

    public ProductInfo findProductInfo(String code);


    public Page<ProductInfo> queryProducts(String likeName, Pageable pageable);

//    public Page<ProductInfo> queryProducts(int page, int maxResult,
//                                                       int maxNavigationPage, String likeName);

    public void save(ProductInfo productInfo);

}
