package com.timmy.service;

import com.timmy.entity.Records;

import java.util.List;

public interface RecordsService {
	 int deleteByPrimaryKey(Integer id);

	    int insert(Records record);

	    int insertSelective(Records record);

	  

	    Records selectByPrimaryKey(Integer id);

	 

	    int updateByPrimaryKeySelective(Records record);

	    int updateByPrimaryKey(Records record);
	    
	    List<Records> selectAllRecords();
}
