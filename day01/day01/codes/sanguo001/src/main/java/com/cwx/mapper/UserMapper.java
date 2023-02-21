package com.cwx.mapper;

import java.util.List;

public interface UserMapper {
	

	    List<User> selectAll();

	    User selectById(int id);
}
