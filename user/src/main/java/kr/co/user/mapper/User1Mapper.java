package kr.co.user.mapper;

import kr.co.user.dto.User1DTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface User1Mapper {

    void insertUser1(User1DTO user1DTO);
    User1DTO selectUser1(String id);
    List<User1DTO> selectUser1s();
    void updateUser1(User1DTO user1DTO);
    void deleteUser1(String id);

}
