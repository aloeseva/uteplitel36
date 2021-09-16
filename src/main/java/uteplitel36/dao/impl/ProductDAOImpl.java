package uteplitel36.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.transaction.annotation.Transactional;
import uteplitel36.dao.ProductDAO;
import uteplitel36.domain.Item;
import uteplitel36.model.ProductInfo;
import uteplitel36.repos.CatalogRepo;


import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

// Transactional for Hibernate
@Transactional
public class ProductDAOImpl implements ProductDAO {

    @Autowired
    private CatalogRepo catalogRepo;

    @Override
    public Item findProduct(String code) {
        return catalogRepo.findByCode(code);
    }

    @Override
    public ProductInfo findProductInfo(String code) {
        Item product = this.findProduct(code);
        if (product == null) {
            return null;
        }
        return new ProductInfo(product.getCode(), product.getName(), product.getPrice(), product.getImage());
    }

    @Override
    public void save(ProductInfo productInfo) {
        String code = productInfo.getCode();

        Item product = null;

        boolean isNew = false;
        if (code != null) {
            product = this.findProduct(code);
        }
        if (product == null) {
            isNew = true;
            product = new Item();
        }
        product.setCode(code);
        product.setName(productInfo.getName());
        product.setPrice(productInfo.getPrice());

//        if (productInfo.getFileData() != null) {
//            byte[] image = productInfo.getFileData().getBytes();
//            if (image != null && image.length > 0) {
//                product.setImage(image);
//            }
//        }
        if (isNew) {
            catalogRepo.save(product);
//            this.sessionFactory.getCurrentSession().persist(product);
        }
        // If error in DB, Exceptions will be thrown out immediately
        // Nếu có lỗi tại DB, ngoại lệ sẽ ném ra ngay lập tức
//        this.sessionFactory.getCurrentSession().flush();
    }

    @Override
    public Page<ProductInfo> queryProducts(String likeName, Pageable pageable) {
        Page<ProductInfo> page1;
        if (likeName != null && likeName.length() > 0) {
            page1 = catalogRepo.findByName(pageable, likeName);
        } else {
            page1 = catalogRepo.findAll(pageable);
        }

//        Session session = sessionFactory.getCurrentSession();

        return page1;
    }

//    @Override
//    public PaginationResult<ProductInfo> queryProducts(int page, int maxResult, int maxNavigationPage) {
//        return queryProducts(page, maxResult, maxNavigationPage, null);
//    }
}
