package org.caihaolun.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by Administrator on 2017/3/9.
 */
@Entity
public class Abilityasse {
    private String id;
    private Integer times;
    private Integer a;
    private Double b;
    private Double c;
    private Double d;
    private Double weight;

    @Id
    @Column(name = "id")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "times")
    public Integer getTimes() {
        return times;
    }

    public void setTimes(Integer times) {
        this.times = times;
    }

    @Basic
    @Column(name = "a")
    public Integer getA() {
        return a;
    }

    public void setA(Integer a) {
        this.a = a;
    }

    @Basic
    @Column(name = "b")
    public Double getB() {
        return b;
    }

    public void setB(Double b) {
        this.b = b;
    }

    @Basic
    @Column(name = "c")
    public Double getC() {
        return c;
    }

    public void setC(Double c) {
        this.c = c;
    }

    @Basic
    @Column(name = "d")
    public Double getD() {
        return d;
    }

    public void setD(Double d) {
        this.d = d;
    }

    @Basic
    @Column(name = "weight")
    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Abilityasse that = (Abilityasse) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (times != null ? !times.equals(that.times) : that.times != null) return false;
        if (a != null ? !a.equals(that.a) : that.a != null) return false;
        if (b != null ? !b.equals(that.b) : that.b != null) return false;
        if (c != null ? !c.equals(that.c) : that.c != null) return false;
        if (d != null ? !d.equals(that.d) : that.d != null) return false;
        if (weight != null ? !weight.equals(that.weight) : that.weight != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (times != null ? times.hashCode() : 0);
        result = 31 * result + (a != null ? a.hashCode() : 0);
        result = 31 * result + (b != null ? b.hashCode() : 0);
        result = 31 * result + (c != null ? c.hashCode() : 0);
        result = 31 * result + (d != null ? d.hashCode() : 0);
        result = 31 * result + (weight != null ? weight.hashCode() : 0);
        return result;
    }
}
