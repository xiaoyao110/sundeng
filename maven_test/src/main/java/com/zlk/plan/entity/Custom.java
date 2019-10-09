package com.zlk.plan.entity;

public class Custom {
    private Integer cid;
    private String cname;
    private String crealname;
    private String caddress;
    private String cfax;
    private String cemail;
    private String cadmin;
    private String cphone;
    private String cstate;
    private String cps;

    public Custom(Integer cid, String cname, String crealname, String caddress, String cfax, String cemail, String cadmin, String cphone, String cstate, String cps) {
        this.cid = cid;
        this.cname = cname;
        this.crealname = crealname;
        this.caddress = caddress;
        this.cfax = cfax;
        this.cemail = cemail;
        this.cadmin = cadmin;
        this.cphone = cphone;
        this.cstate = cstate;
        this.cps = cps;
    }
    public Custom(){

    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCrealname() {
        return crealname;
    }

    public void setCrealname(String crealname) {
        this.crealname = crealname;
    }

    public String getCaddress() {
        return caddress;
    }

    public void setCaddress(String caddress) {
        this.caddress = caddress;
    }

    public String getCfax() {
        return cfax;
    }

    public void setCfax(String cfax) {
        this.cfax = cfax;
    }

    public String getCemail() {
        return cemail;
    }

    public void setCemail(String cemail) {
        this.cemail = cemail;
    }

    public String getCadmin() {
        return cadmin;
    }

    public void setCadmin(String cadmin) {
        this.cadmin = cadmin;
    }

    public String getCphone() {
        return cphone;
    }

    public void setCphone(String cphone) {
        this.cphone = cphone;
    }

    public String getCstate() {
        return cstate;
    }

    public void setCstate(String cstate) {
        this.cstate = cstate;
    }

    public String getCps() {
        return cps;
    }

    public void setCps(String cps) {
        this.cps = cps;
    }
}
