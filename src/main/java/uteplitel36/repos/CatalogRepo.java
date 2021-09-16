package uteplitel36.repos;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import uteplitel36.domain.Item;
import uteplitel36.model.ProductInfo;

public interface CatalogRepo extends CrudRepository<Item, Long> {

    Item findByCode(String code);

    @Query("select new  uteplitel36.model.ProductInfo( " +
            "p.code, " +
            "p.name, " +
            "p.price, " +
            "p.image" +
            ") " +
            "from Item p " +
            "where lower(p.name) like :likeName"
    )
    Page<ProductInfo> findByName(Pageable pageable, @Param("likeName") String likeName);

    @Query("select new  uteplitel36.model.ProductInfo( " +
            "p.code, " +
            "p.name, " +
            "p.price, " +
            "p.image" +
            ") " +
            "from Item p"
    )
    Page<ProductInfo> findAll(Pageable pageable);

    @Query("select  " +
            "   i " +
            "from Item i " +
            "where i.brand = :brand " +
            "group by i " +
            "order by i.id "
    )
    Page<Item> findByBrand(Pageable pageable, @Param("brand") String brand);

    @Query("select  " +
            "   i " +
            "from Item i " +
            "where i.category = :category " +
            "group by i " +
            "order by i.id "
    )
    Page<Item> findByCategory(Pageable pageable, @Param("category") String category);

    @Query("select  " +
            "   i " +
            "from Item i " +
            "where i.category = :category and " +
            "      i.subCategory = :subCategory " +
            "group by i " +
            "order by i.id "
    )
    Page<Item> findBySubCategory(Pageable pageable, @Param("category") String category, @Param("subCategory") String subCategory);
}
