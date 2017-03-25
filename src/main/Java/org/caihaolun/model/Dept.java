package org.caihaolun.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by Administrator on 2017/3/9.
 */
@Entity
public class Dept {
    private String id;
    private String deptname;
    private String deptid;

    @Id
    @Column(name = "id")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "deptname")
    public String getDeptname() {
        return deptname;
    }

    public void setDeptname(String deptname) {
        this.deptname = deptname;
    }

    @Basic
    @Column(name = "deptid")
    public String getDeptid() {
        return deptid;
    }

    public void setDeptid(String deptid) {
        this.deptid = deptid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Dept dept = (Dept) o;

        if (id != null ? !id.equals(dept.id) : dept.id != null) return false;
        if (deptname != null ? !deptname.equals(dept.deptname) : dept.deptname != null) return false;
        if (deptid != null ? !deptid.equals(dept.deptid) : dept.deptid != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (deptname != null ? deptname.hashCode() : 0);
        result = 31 * result + (deptid != null ? deptid.hashCode() : 0);
        return result;
    }
}
