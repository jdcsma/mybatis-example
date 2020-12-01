package jun.mybatis.example.mappers;

import jun.mybatis.example.domains.Phone;

import java.util.List;


public interface PhoneMapper {

    List<Phone> queryByUserId1(int userId);
}
