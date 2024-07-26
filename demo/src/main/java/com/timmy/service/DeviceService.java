package com.timmy.service;

import com.timmy.entity.Device;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DeviceService {


    List<Device> findAllDevice();
	
    int deleteByPrimaryKey(Integer id);

    int insert(@Param("serialNum")String serialNum,@Param("status")int status);

    int insertSelective(Device record);

    Device selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Device record);

    int updateByPrimaryKey(Device record);
    
    int updateStatusByPrimaryKey(int id,int status);
    
    Device selectDeviceBySerialNum(String serialNum);
    
    List<Device> selectAllDevice();
}
