package cn.xh.ssm1.bean;

import javax.validation.constraints.NotBlank;

public class Admin {

    private Integer aid;
    @NotBlank
    private String anum;
    @NotBlank
    private String apwd;
    private String aname;
    private String agender;
    private String aidcard;
    private Integer aage;

    @Override
    public String toString() {
        return "Admin [aid=" + aid + ", anum=" + anum + ", apwd=" + apwd + ", aname=" + aname + ", agender=" + agender
                + ", aidcard=" + aidcard + ", aage=" + aage + "]";
    }

    public Admin(Integer aid, String anum, String apwd, String aname, String agender, String aidcard, Integer aage) {
        super();
        this.aid = aid;
        this.anum = anum;
        this.apwd = apwd;
        this.aname = aname;
        this.agender = agender;
        this.aidcard = aidcard;
        this.aage = aage;
    }

    public Admin() {
        super();
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getAnum() {
        return anum;
    }

    public void setAnum(String anum) {
        this.anum = anum;
    }

    public String getApwd() {
        return apwd;
    }

    public void setApwd(String apwd) {
        this.apwd = apwd;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getAgender() {
        return agender;
    }

    public void setAgender(String agender) {
        this.agender = agender;
    }

    public String getAidcard() {
        return aidcard;
    }

    public void setAidcard(String aidcard) {
        this.aidcard = aidcard;
    }

    public Integer getAage() {
        return aage;
    }

    public void setAage(Integer aage) {
        this.aage = aage;
    }

}
