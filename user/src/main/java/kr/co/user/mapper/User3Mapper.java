package kr.co.user.mapper;

import kr.co.user.dto.User3DTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface User3Mapper {

    void insertUser3(User3DTO user3DTO);
    User3DTO selectUser3(String id);
    List<User3DTO> selectUser3s();
    void updateUser3(User3DTO user3DTO);
    void deleteUser3(String id);
}
