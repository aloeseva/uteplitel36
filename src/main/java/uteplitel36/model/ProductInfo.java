package uteplitel36.model;

import org.springframework.web.multipart.commons.CommonsMultipartFile;
import uteplitel36.domain.Item;

public class ProductInfo {
    private String code;
    private String name;
    private Float price;

    private boolean newProduct=false;

    // Upload file.
//    private CommonsMultipartFile fileData;
    private String image;

    public ProductInfo() {
    }

    public ProductInfo(Item product) {
        this.code = product.getCode();
        this.name = product.getName();
        this.price = product.getPrice();
        this.image = product.getImage();
    }

    // Không thay đổi Constructor này,
    // nó được sử dụng trong Hibernate query.
    public ProductInfo(String code, String name, Float price, String image) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.image = image;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

//    public CommonsMultipartFile getFileData() {
//        return fileData;
//    }
//
//    public void setFileData(CommonsMultipartFile fileData) {
//        this.fileData = fileData;
//    }

    public boolean isNewProduct() {
        return newProduct;
    }

    public void setNewProduct(boolean newProduct) {
        this.newProduct = newProduct;
    }

}
