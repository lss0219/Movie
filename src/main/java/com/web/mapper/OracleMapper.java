package com.web.mapper;

import com.web.model.UserInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created by conan on 2020/2/7.
 */
@Mapper
public interface OracleMapper {
    List<UserInfo> getUserInfo();
}
