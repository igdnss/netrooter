package com.phicomm.netrooter.dao;

import com.phicomm.netrooter.model.LiveInfo;

public interface LiveInfoMapper {
    int deleteByPrimaryKey(String resourceid);

    int insert(LiveInfo record);

    int insertSelective(LiveInfo record);

    LiveInfo selectByPrimaryKey(String resourceid);

    int updateByPrimaryKeySelective(LiveInfo record);

    int updateByPrimaryKey(LiveInfo record);
}