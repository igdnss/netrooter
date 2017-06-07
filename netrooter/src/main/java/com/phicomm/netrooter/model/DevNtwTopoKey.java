package com.phicomm.netrooter.model;

public class DevNtwTopoKey {
    private String deviceid;

    private String topogroupid;

    public String getDeviceid() {
        return deviceid;
    }

    public void setDeviceid(String deviceid) {
        this.deviceid = deviceid == null ? null : deviceid.trim();
    }

    public String getTopogroupid() {
        return topogroupid;
    }

    public void setTopogroupid(String topogroupid) {
        this.topogroupid = topogroupid == null ? null : topogroupid.trim();
    }
}