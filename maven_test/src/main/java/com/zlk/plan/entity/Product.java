package com.zlk.plan.entity;

public class Product {
    private Integer pid;
    private String pname;
    private String ptype;
    private String pstate;
    private String pimg;

    public Product(Integer pid) {
        this.pid = pid;
    }

    public Product(Integer pid, String pname, String ptype, String pstate, String pimg) {
        this.pid = pid;
        this.pname = pname;
        this.ptype = ptype;
        this.pstate = pstate;
        this.pimg = pimg;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPtype() {
        return ptype;
    }

    public void setPtype(String ptype) {
        this.ptype = ptype;
    }

    public String getPstate() {
        return pstate;
    }

    public void setPstate(String pstate) {
        this.pstate = pstate;
    }

    public String getPimg() {
        return pimg;
    }

    public void setPimg(String pimg) {
        this.pimg = pimg;
    }
}
