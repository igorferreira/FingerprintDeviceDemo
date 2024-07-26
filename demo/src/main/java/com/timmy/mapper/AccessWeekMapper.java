package com.timmy.mapper;

import com.timmy.entity.AccessWeek;

import java.util.List;

public interface AccessWeekMapper {
   
    int deleteByPrimaryKey(Integer id);

    int insert(AccessWeek record);

    int insertSelective(AccessWeek record);

   
    AccessWeek selectByPrimaryKey(Integer id);


    int updateByPrimaryKeySelective(AccessWeek record);

    int updateByPrimaryKey(AccessWeek record);
    
    List<AccessWeek> selectAllAccessWeek();
}