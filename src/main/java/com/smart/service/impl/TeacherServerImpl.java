package com.smart.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.smart.dao.YuangongxinxiDao;
import com.smart.pojo.Yuangongxinxi;
import com.smart.service.ITeacherServer;

@Service
public class TeacherServerImpl implements ITeacherServer {
	
	@Autowired
	private YuangongxinxiDao yuangongxinxiDao;
	@Override
	public List<Yuangongxinxi> queryAllTeacher(Yuangongxinxi yuangongxinxi) {
		return yuangongxinxiDao.queryAllTeacher(yuangongxinxi);
	}

}
