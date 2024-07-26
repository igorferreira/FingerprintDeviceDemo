package com.timmy.mapper;

import com.timmy.entity.MachineCommand;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface MachineCommandMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MachineCommand record);

    int insertSelective(MachineCommand record);

    MachineCommand selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MachineCommand record);

    int updateByPrimaryKey(MachineCommand record);
    
    List<MachineCommand> findPendingCommand(@Param("sendStatus")int sendStatus,@Param("serial")String serial);
    
    int updateCommandStatus(@Param("status")int status,@Param("sendStatus")int sendStatus,@Param("runTime")Date runTime,@Param("id")int id);
}