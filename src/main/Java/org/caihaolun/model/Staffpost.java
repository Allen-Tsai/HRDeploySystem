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
public class Staffpost {
    private String id;
    private String post;
    private String rank;
    private String payroll;
    private Timestamp entrytime;
    private Double salary;

    @Id
    @Column(name = "id")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "post")
    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    @Basic
    @Column(name = "rank")
    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    @Basic
    @Column(name = "payroll")
    public String getPayroll() {
        return payroll;
    }

    public void setPayroll(String payroll) {
        this.payroll = payroll;
    }

    @Basic
    @Column(name = "entrytime")
    public Timestamp getEntrytime() {
        return entrytime;
    }

    public void setEntrytime(Timestamp entrytime) {
        this.entrytime = entrytime;
    }

    @Basic
    @Column(name = "salary")
    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Staffpost staffpost = (Staffpost) o;

        if (id != null ? !id.equals(staffpost.id) : staffpost.id != null) return false;
        if (post != null ? !post.equals(staffpost.post) : staffpost.post != null) return false;
        if (rank != null ? !rank.equals(staffpost.rank) : staffpost.rank != null) return false;
        if (payroll != null ? !payroll.equals(staffpost.payroll) : staffpost.payroll != null) return false;
        if (entrytime != null ? !entrytime.equals(staffpost.entrytime) : staffpost.entrytime != null) return false;
        if (salary != null ? !salary.equals(staffpost.salary) : staffpost.salary != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (post != null ? post.hashCode() : 0);
        result = 31 * result + (rank != null ? rank.hashCode() : 0);
        result = 31 * result + (payroll != null ? payroll.hashCode() : 0);
        result = 31 * result + (entrytime != null ? entrytime.hashCode() : 0);
        result = 31 * result + (salary != null ? salary.hashCode() : 0);
        return result;
    }
}
