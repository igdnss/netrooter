package com.phicomm.netrooter.model;

public class TopoGroup {
    private String topogroupid;

    private Integer avgdelay;

    private String isp;

    public String getTopogroupid() {
        return topogroupid;
    }

    public void setTopogroupid(String topogroupid) {
        this.topogroupid = topogroupid == null ? null : topogroupid.trim();
    }

    public Integer getAvgdelay() {
        return avgdelay;
    }

    public void setAvgdelay(Integer avgdelay) {
        this.avgdelay = avgdelay;
    }

    public String getIsp() {
        return isp;
    }

    public void setIsp(String isp) {
        this.isp = isp == null ? null : isp.trim();
    }
}