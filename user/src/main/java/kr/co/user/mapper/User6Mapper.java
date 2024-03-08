package kr.co.user.mapper;

import kr.co.user.dto.User6DTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface User6Mapper {
    void insertUser6(User6DTO user6DTO);
    User6DTO selectUser6(int seq);
    List<User6DTO> selectUser6s();
    void updateUser6(User6DTO user6DTO);
    void deleteUser6(int seq);

}
