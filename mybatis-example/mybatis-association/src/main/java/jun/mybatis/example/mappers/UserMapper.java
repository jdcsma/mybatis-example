package jun.mybatis.example.mappers;

import jun.mybatis.example.domains.User;


public interface UserMapper {

    User queryByUserId1(int userId);

    User queryByUserId2(int userId);

    User queryByUserId3(int userId);
}
