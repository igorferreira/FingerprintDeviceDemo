package com.timmy.util;

import com.timmy.service.*;
import org.springframework.beans.factory.annotation.Autowired;

public class ControllerBase {

	@Autowired
	protected  AccessDayService accessaDayService;
	
    @Autowired
    protected  AccessWeekService accessWeekService;
    
    @Autowired
    protected   LockGroupService lockGroupService;
    
    @Autowired
    protected  UserLockService userLockService;
    
    @Autowired
    protected  EnrollInfoService enrollInfoService;
    
    @Autowired
    protected  PersonService personService;
    
    @Autowired
    protected  RecordsService recordService;
    
    @Autowired
    protected  DeviceService deviceService;
    
    @Autowired
    protected MachineCommandService machineComandService;
}
