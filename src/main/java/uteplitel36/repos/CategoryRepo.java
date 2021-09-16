package uteplitel36.repos;

import org.springframework.data.repository.CrudRepository;
import uteplitel36.domain.Category;

public interface CategoryRepo extends CrudRepository<Category, Long> {
    Category findByName(String name);
}
