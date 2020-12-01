package jun.mybatis.example.domains;

import lombok.Data;


@Data
public class User {

    private int userId;
    private String username;
    private int age;
    private Card card;
}
