package com.zz.pojo;

import java.util.Date;

public class Order {
    private Integer id;

    private Integer uid;
    //照片
    private String picture;

    private String oname;

    private Double oprice;
    //时间
    private Date otime;
    //状态
    private Byte ostatus;
    //评论
    private String odiscuss;

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

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture == null ? null : picture.trim();
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname == null ? null : oname.trim();
    }

    public Double getOprice() {
        return oprice;
    }

    public void setOprice(Double oprice) {
        this.oprice = oprice;
    }

    public Date getOtime() {
        return otime;
    }

    public void setOtime(Date otime) {
        this.otime = otime;
    }

    public Byte getOstatus() {
        return ostatus;
    }

    public void setOstatus(Byte ostatus) {
        this.ostatus = ostatus;
    }

    public String getOdiscuss() {
        return odiscuss;
    }

    public void setOdiscuss(String odiscuss) {
        this.odiscuss = odiscuss == null ? null : odiscuss.trim();
    }
}