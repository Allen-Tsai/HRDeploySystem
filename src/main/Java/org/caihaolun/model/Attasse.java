package org.caihaolun.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by Administrator on 2017/3/9.
 */
@Entity
public class Attasse {
    private String id;
    private Integer g;
    private Integer h;
    private Double i;
    private Integer f;
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
    @Column(name = "g")
    public Integer getG() {
        return g;
    }

    public void setG(Integer g) {
        this.g = g;
    }

    @Basic
    @Column(name = "h")
    public Integer getH() {
        return h;
    }

    public void setH(Integer h) {
        this.h = h;
    }

    @Basic
    @Column(name = "i")
    public Double getI() {
        return i;
    }

    public void setI(Double i) {
        this.i = i;
    }

    @Basic
    @Column(name = "f")
    public Integer getF() {
        return f;
    }

    public void setF(Integer f) {
        this.f = f;
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

        Attasse attasse = (Attasse) o;

        if (id != null ? !id.equals(attasse.id) : attasse.id != null) return false;
        if (g != null ? !g.equals(attasse.g) : attasse.g != null) return false;
        if (h != null ? !h.equals(attasse.h) : attasse.h != null) return false;
        if (i != null ? !i.equals(attasse.i) : attasse.i != null) return false;
        if (f != null ? !f.equals(attasse.f) : attasse.f != null) return false;
        if (weight != null ? !weight.equals(attasse.weight) : attasse.weight != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (g != null ? g.hashCode() : 0);
        result = 31 * result + (h != null ? h.hashCode() : 0);
        result = 31 * result + (i != null ? i.hashCode() : 0);
        result = 31 * result + (f != null ? f.hashCode() : 0);
        result = 31 * result + (weight != null ? weight.hashCode() : 0);
        return result;
    }
}
