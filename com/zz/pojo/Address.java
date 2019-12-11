package com.zz.pojo;

public class Address {
    private Integer id;
    //用户id
    private Integer uid;
    //收件人名字
    private String gainname;
    //省份
    private String provice;
    //城市
    private String city;
    //电话
    private String tel;
    //县
    private String county;
    //详细地址
    private String desadd;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getGainname() {
        return gainname;
    }

    public void setGainname(String gainname) {
        this.gainname = gainname == null ? null : gainname.trim();
    }

    public String getProvice() {
        return provice;
    }

    public void setProvice(String provice) {
        this.provice = provice == null ? null : provice.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county == null ? null : county.trim();
    }

    public String getDesadd() {
        return desadd;
    }

    public void setDesadd(String desadd) {
        this.desadd = desadd == null ? null : desadd.trim();
    }
}