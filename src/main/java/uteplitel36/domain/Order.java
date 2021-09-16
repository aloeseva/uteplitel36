package uteplitel36.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "Orders", //
        uniqueConstraints = { @UniqueConstraint(columnNames = "Order_Num") })
public class Order implements Serializable {

    private static final long serialVersionUID = -2576670215015463100L;

    private String id;
    private Date orderDate;
    private int orderNum;
    private double amount;
//    @Column(name = "Customer_Firstname")
    private String customerFirstname;
//    @Column(name = "Customer_Secondname")
    private String customerSecondname;
    private String customerAddress;
    private String customerEmail;
    private String customerPhone;

    @Id
    @Column(name = "ID", length = 50)
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Column(name = "Order_Date", nullable = false)
    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    @Column(name = "Order_Num", nullable = false)
    public int getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(int orderNum) {
        this.orderNum = orderNum;
    }

    @Column(name = "Amount", nullable = false)
    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    @Column(name = "Customer_Firstname", length = 255, nullable = false)
    public String getCustomerFirstname() {
        return customerFirstname;
    }

    public void setCustomerFirstname(String customerFirstname) {
        this.customerFirstname = customerFirstname;
    }

    @Column(name = "Customer_Secondname", length = 255, nullable = false)
    public String getCustomerSecondname() {
        return customerSecondname;
    }

    public void setCustomerSecondname(String customerSecondname) {
        this.customerSecondname = customerSecondname;
    }

    @Column(name = "Customer_Address", length = 255, nullable = false)
    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    @Column(name = "Customer_Email", length = 128, nullable = false)
    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    @Column(name = "Customer_Phone", length = 128, nullable = false)
    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

}
