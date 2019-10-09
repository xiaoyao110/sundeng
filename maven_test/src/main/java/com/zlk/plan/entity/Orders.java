package com.zlk.plan.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.regex.Pattern;

public class Orders {
    private Integer oid;
    private String o_cname;
    private String o_pname;
    private Integer onum;
    private Double oprice;
    private String ounice;
    private String ostate;
    @DateTimeFormat(pattern ="yyyy-MM-dd HH:mm:ss")
    private Date ocreatetime;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date ofinishtime;
    private String ops;
    private String oimg;
    private String oacr;

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public String getO_cname() {
        return o_cname;
    }

    public void setO_cname(String o_cname) {
        this.o_cname = o_cname;
    }

    public String getO_pname() {
        return o_pname;
    }

    public void setO_pname(String o_pname) {
        this.o_pname = o_pname;
    }

    public Integer getOnum() {
        return onum;
    }

    public void setOnum(Integer onum) {
        this.onum = onum;
    }

    public Double getOprice() {
        return oprice;
    }

    public void setOprice(Double oprice) {
        this.oprice = oprice;
    }

    public String getOunice() {
        return ounice;
    }

    public void setOunice(String ounice) {
        this.ounice = ounice;
    }

    public String getOstate() {
        return ostate;
    }

    public void setOstate(String ostate) {
        this.ostate = ostate;
    }

    public Date getOcreatetime() {
        return ocreatetime;
    }

    public void setOcreatetime(Date ocreatetime) {
        this.ocreatetime = ocreatetime;
    }

    public Date getOfinishtime() {
        return ofinishtime;
    }

    public void setofinishtime(Date ofinishtime) {
        this.ofinishtime = ofinishtime;
    }

    public String getOps() {
        return ops;
    }

    public void setOps(String ops) {
        this.ops = ops;
    }

    public String getOimg() {
        return oimg;
    }

    public void setOimg(String oimg) {
        this.oimg = oimg;
    }

    public String getOacr() {
        return oacr;
    }

    public void setOacr(String oacr) {
        this.oacr = oacr;
    }

    public Orders() {
    }

    public Orders(Integer oid, String o_cname, String o_pname, Integer onum, Double oprice, String ounice, String ostate, Date ocreatetime, Date ofinishime, String ops, String oimg, String oacr) {
        this.oid = oid;
        this.o_cname = o_cname;
        this.o_pname = o_pname;
        this.onum = onum;
        this.oprice = oprice;
        this.ounice = ounice;
        this.ostate = ostate;
        this.ocreatetime = ocreatetime;
        this.ofinishtime = ofinishtime;
        this.ops = ops;
        this.oimg = oimg;
        this.oacr = oacr;
    }
}
