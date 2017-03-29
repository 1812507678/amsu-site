package com.amsu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.amsu.pojo.Information;
import com.amsu.pojo.InformationQuery;
import com.amsu.pojo.InformationWithBLOBs;
import com.amsu.pojo.Page;

public interface InformationDao {
    int countByExample(InformationQuery example);

    int deleteByExample(InformationQuery example);

    int deleteByPrimaryKey(Integer id);

    int insert(InformationWithBLOBs record);

    int insertSelective(InformationWithBLOBs record);

    List<InformationWithBLOBs> selectByExampleWithBLOBs(InformationQuery example);

    List<Information> selectByExample(InformationQuery example);

    InformationWithBLOBs selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") InformationWithBLOBs record, @Param("example") InformationQuery example);

    int updateByExampleWithBLOBs(@Param("record") InformationWithBLOBs record, @Param("example") InformationQuery example);

    int updateByExample(@Param("record") Information record, @Param("example") InformationQuery example);

    int updateByPrimaryKeySelective(InformationWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(InformationWithBLOBs record);

    int updateByPrimaryKey(Information record);
    //查询置顶的新闻
    Information selectTopInformation();
    //查询其他新闻
    List<Information> selectInformationsByPage(Page page);
}