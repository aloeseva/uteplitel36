package uteplitel36.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import uteplitel36.domain.Category;
import uteplitel36.domain.Item;
import uteplitel36.domain.SubCategory;
import uteplitel36.model.CartInfo;
import uteplitel36.repos.CatalogRepo;
import uteplitel36.repos.CategoryRepo;
import uteplitel36.repos.SubCategoryRepo;
import uteplitel36.util.Utils;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

@Controller
public class CatalogController {
    private final CatalogRepo catalogRepo;
    private final CategoryRepo categoryRepo;
    private final SubCategoryRepo subCategoryRepo;

    @Autowired
    public CatalogController(CatalogRepo catalogRepo, CategoryRepo categoryRepo, SubCategoryRepo subCategoryRepo) {
        this.catalogRepo = catalogRepo;
        this.categoryRepo = categoryRepo;
        this.subCategoryRepo = subCategoryRepo;
    }

    @GetMapping("/")
    public String home(
            HttpServletRequest request,
            Model model
    ){
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        return "home";
    }

    @GetMapping("brands/{brand}")
    public String brads(
            HttpServletRequest request,
            @PathVariable String brand,
            Model model,
            @PageableDefault(sort = {"id"}, direction = Sort.Direction.DESC) Pageable pageable
            ){
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        Page<Item> page = catalogRepo.findByBrand(pageable, brand);
        model.addAttribute("page", page);
        model.addAttribute("categoryName", page.getContent().get(0).getCategory());
        model.addAttribute("brand", brand.toUpperCase(Locale.ROOT));
        model.addAttribute("url", "brands/" + brand);

        return "brand";
    }

    @GetMapping("/categories/{categoryName}")
    public String category(
            HttpServletRequest request,
            @PathVariable String categoryName,
            Model model,
            @PageableDefault(sort = {"id"}, direction = Sort.Direction.DESC) Pageable pageable
            ){
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        Category category = categoryRepo.findByName(categoryName);
        Page<Item> page = catalogRepo.findByCategory(pageable, category.getName());
        model.addAttribute("page", page);
        model.addAttribute("category", category);
        model.addAttribute("categoryName", category.getName());
        model.addAttribute("url", "/categories/" + categoryName);

        return "category";
    }

    @GetMapping("/categories/{category}/{subCategoryName}")
    public String subCategory(
            HttpServletRequest request,
            @PathVariable String category,
            @PathVariable String subCategoryName,
            Model model,
            @PageableDefault(sort = {"id"}, direction = Sort.Direction.DESC) Pageable pageable
    ){
        CartInfo myCart = Utils.getCartInSession(request);

        model.addAttribute("cartSize", myCart.getCartLines().size());
        SubCategory subCategory = subCategoryRepo.findByName(subCategoryName);
        Page<Item> page = catalogRepo.findBySubCategory(pageable, category, subCategory.getName());
        model.addAttribute("page", page);
        model.addAttribute("subCategory", subCategory);
        model.addAttribute("categoryName", category);
        model.addAttribute("url", "/categories/"+ category +"/" + subCategoryName);

        return "subcategory";
    }
}
