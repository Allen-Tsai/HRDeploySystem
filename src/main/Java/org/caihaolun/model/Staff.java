package org.caihaolun.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

/**
 * Created by Administrator on 2017/3/9.
 */
@Entity
public class Staff {
    private String id;
    private String name;
    private String sex;
    private Timestamp birth;
    private String nation;
    private String locate;
    private String iDnum;
    private String tel;

    @Id
    @Column(name = "id")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "sex")
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "birth")
    public Timestamp getBirth() {
        return birth;
    }

    public void setBirth(Timestamp birth) {
        this.birth = birth;
    }

    @Basic
    @Column(name = "nation")
    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    @Basic
    @Column(name = "locate")
    public String getLocate() {
        return locate;
    }

    public void setLocate(String locate) {
        this.locate = locate;
    }

    @Basic
    @Column(name = "IDnum")
    public String getiDnum() {
        return iDnum;
    }

    public void setiDnum(String iDnum) {
        this.iDnum = iDnum;
    }

    @Basic
    @Column(name = "Tel")
    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Staff staff = (Staff) o;

        if (id != null ? !id.equals(staff.id) : staff.id != null) return false;
        if (name != null ? !name.equals(staff.name) : staff.name != null) return false;
        if (sex != null ? !sex.equals(staff.sex) : staff.sex != null) return false;
        if (birth != null ? !birth.equals(staff.birth) : staff.birth != null) return false;
        if (nation != null ? !nation.equals(staff.nation) : staff.nation != null) return false;
        if (locate != null ? !locate.equals(staff.locate) : staff.locate != null) return false;
        if (iDnum != null ? !iDnum.equals(staff.iDnum) : staff.iDnum != null) return false;
        if (tel != null ? !tel.equals(staff.tel) : staff.tel != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (sex != null ? sex.hashCode() : 0);
        result = 31 * result + (birth != null ? birth.hashCode() : 0);
        result = 31 * result + (nation != null ? nation.hashCode() : 0);
        result = 31 * result + (locate != null ? locate.hashCode() : 0);
        result = 31 * result + (iDnum != null ? iDnum.hashCode() : 0);
        result = 31 * result + (tel != null ? tel.hashCode() : 0);
        return result;
    }
}
