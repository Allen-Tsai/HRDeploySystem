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
public class Staffedu {
    private String id;
    private String category;
    private String qual;
    private String major;
    private String graduate;
    private Timestamp time;

    @Id
    @Column(name = "id")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "category")
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Basic
    @Column(name = "qual")
    public String getQual() {
        return qual;
    }

    public void setQual(String qual) {
        this.qual = qual;
    }

    @Basic
    @Column(name = "major")
    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    @Basic
    @Column(name = "graduate")
    public String getGraduate() {
        return graduate;
    }

    public void setGraduate(String graduate) {
        this.graduate = graduate;
    }

    @Basic
    @Column(name = "time")
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Staffedu staffedu = (Staffedu) o;

        if (id != null ? !id.equals(staffedu.id) : staffedu.id != null) return false;
        if (category != null ? !category.equals(staffedu.category) : staffedu.category != null) return false;
        if (qual != null ? !qual.equals(staffedu.qual) : staffedu.qual != null) return false;
        if (major != null ? !major.equals(staffedu.major) : staffedu.major != null) return false;
        if (graduate != null ? !graduate.equals(staffedu.graduate) : staffedu.graduate != null) return false;
        if (time != null ? !time.equals(staffedu.time) : staffedu.time != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (category != null ? category.hashCode() : 0);
        result = 31 * result + (qual != null ? qual.hashCode() : 0);
        result = 31 * result + (major != null ? major.hashCode() : 0);
        result = 31 * result + (graduate != null ? graduate.hashCode() : 0);
        result = 31 * result + (time != null ? time.hashCode() : 0);
        return result;
    }
}
