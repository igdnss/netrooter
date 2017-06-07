package com.phicomm.netrooter.dao;

import com.phicomm.netrooter.model.NrDevice;

public interface NrDeviceMapper {
    int deleteByPrimaryKey(String deviceid);

    int insert(NrDevice record);

    int insertSelective(NrDevice record);

    NrDevice selectByPrimaryKey(String deviceid);

    int updateByPrimaryKeySelective(NrDevice record);

    int updateByPrimaryKey(NrDevice record);
}