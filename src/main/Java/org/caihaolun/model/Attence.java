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
public class Attence {
    private String id;
    private String deptid;
    private Timestamp come;
    private Timestamp off;

    @Id
    @Column(name = "id")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "deptid")
    public String getDeptid() {
        return deptid;
    }

    public void setDeptid(String deptid) {
        this.deptid = deptid;
    }

    @Basic
    @Column(name = "come")
    public Timestamp getCome() {
        return come;
    }

    public void setCome(Timestamp come) {
        this.come = come;
    }

    @Basic
    @Column(name = "off")
    public Timestamp getOff() {
        return off;
    }

    public void setOff(Timestamp off) {
        this.off = off;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Attence attence = (Attence) o;

        if (id != null ? !id.equals(attence.id) : attence.id != null) return false;
        if (deptid != null ? !deptid.equals(attence.deptid) : attence.deptid != null) return false;
        if (come != null ? !come.equals(attence.come) : attence.come != null) return false;
        if (off != null ? !off.equals(attence.off) : attence.off != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (deptid != null ? deptid.hashCode() : 0);
        result = 31 * result + (come != null ? come.hashCode() : 0);
        result = 31 * result + (off != null ? off.hashCode() : 0);
        return result;
    }
}
