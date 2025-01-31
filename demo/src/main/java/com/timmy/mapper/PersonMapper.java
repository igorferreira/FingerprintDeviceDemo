package com.timmy.mapper;

import com.timmy.entity.Person;

import java.util.List;

public interface PersonMapper {
   
    int deleteByPrimaryKey(Long id);

    int insert(Person record);

    int insertSelective(Person record);


    Person selectByPrimaryKey(Long id);

   
    int updateByPrimaryKeySelective(Person record);

    int updateByPrimaryKey(Person record);
    
    List<Person> selectAll();
} 