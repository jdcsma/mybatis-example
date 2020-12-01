package jun.mybatis.example.mappers;

import jun.mybatis.example.domains.Card;


public interface CardMapper {

    Card queryByCardId(int cardId);
}
