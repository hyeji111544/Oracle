package kr.co.user.mapper;

import kr.co.user.dto.User4DTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface User4Mapper {
    void insertUser4(User4DTO user4DTO);
    User4DTO selectUser4(String name);
    List<User4DTO> selectUser4s();
    void updateUser4(User4DTO user4DTO);
    void deleteUser4(String name);
}
