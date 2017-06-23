package com.smart.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smart.pojo.Yuangongxinxi;

@Mapper
public interface YuangongxinxiDao {

	List<Yuangongxinxi> queryAllTeacher(Yuangongxinxi yuangongxinxi);

}
