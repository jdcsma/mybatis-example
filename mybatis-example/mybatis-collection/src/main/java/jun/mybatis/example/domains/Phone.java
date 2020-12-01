package jun.mybatis.example.domains;

import lombok.Data;


@Data
public class Phone {

    private int phoneId;
    private String brand;
    private double price;
    private User user;

    @Override
    public String toString() {
        return "Phone{" +
                "phoneId=" + phoneId +
                ", brand='" + brand + '\'' +
                ", price=" + price +
                ", user=" + user.getUsername() +
                '}';
    }
}
