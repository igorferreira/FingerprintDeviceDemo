package com.timmy.service;

import com.timmy.entity.EnrollInfo;
import com.timmy.entity.UserInfo;

import java.util.List;

public interface EnrollInfoService {

	
	int deleteByPrimaryKey(Integer id);
	
	int deleteByEnrollId(Long id);

	int insert(Long enrollid,int backupnum,String imagPath,String signature);

    int insertSelective(EnrollInfo record);

   

    EnrollInfo selectByPrimaryKey(Integer id);
    
   
    int updateByPrimaryKeySelective(EnrollInfo record);

    int updateByPrimaryKeyWithBLOBs(EnrollInfo record);
    
    EnrollInfo selectByBackupnum(Long enrollId,int backupnum);
    
    List<UserInfo> usersToSendDevice();
    
    List<EnrollInfo> selectAll();
    
    List<EnrollInfo> selectByEnrollId(Long enrollId);
    int updateByEnrollIdAndBackupNum(String signatures,Long enrollId,int backupnum);
}
