package uteplitel36.repos;

import org.springframework.data.repository.CrudRepository;
import uteplitel36.domain.SubCategory;

public interface SubCategoryRepo extends CrudRepository<SubCategory, Long> {
    SubCategory findByName(String name);
}
