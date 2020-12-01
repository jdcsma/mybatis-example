package jun.mybatis.example;

import jun.mybatis.example.domains.Card;
import jun.mybatis.example.domains.User;
import jun.mybatis.example.mappers.UserMapper;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;


@SpringBootApplication
public class Application {

    private static final Logger logger = LogManager.getLogger();

    public static void main(String[] args) {
        ConfigurableApplicationContext context =
                SpringApplication.run(Application.class, args);

        UserMapper userMapper = context.getBean(UserMapper.class);

        logger.info("userMapper.queryByUserId1:" + userMapper.queryByUserId1(1));
        logger.info("userMapper.queryByUserId2:" + userMapper.queryByUserId2(1));
        logger.info("userMapper.queryByUserId3:" + userMapper.queryByUserId3(1));
    }
}
