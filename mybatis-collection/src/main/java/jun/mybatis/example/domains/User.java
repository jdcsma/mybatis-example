package jun.mybatis.example.domains;

import lombok.Data;

import java.util.List;


@Data
public class User {

    private int userId;
    private String username;
    private int age;
    private List<Phone> phones;

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", username='" + username + '\'' +
                ", age=" + age +
                '}';
    }
}
