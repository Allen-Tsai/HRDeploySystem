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
public class Performance {
    private String id;
    private Timestamp starttime;
    private Timestamp endtime;
    private Double atTweight;
    private Double abIweight;
    private Double prOweight;
    private Double stUweight;

    @Id
    @Column(name = "id")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "starttime")
    public Timestamp getStarttime() {
        return starttime;
    }

    public void setStarttime(Timestamp starttime) {
        this.starttime = starttime;
    }

    @Basic
    @Column(name = "endtime")
    public Timestamp getEndtime() {
        return endtime;
    }

    public void setEndtime(Timestamp endtime) {
        this.endtime = endtime;
    }

    @Basic
    @Column(name = "ATTweight")
    public Double getAtTweight() {
        return atTweight;
    }

    public void setAtTweight(Double atTweight) {
        this.atTweight = atTweight;
    }

    @Basic
    @Column(name = "ABIweight")
    public Double getAbIweight() {
        return abIweight;
    }

    public void setAbIweight(Double abIweight) {
        this.abIweight = abIweight;
    }

    @Basic
    @Column(name = "PROweight")
    public Double getPrOweight() {
        return prOweight;
    }

    public void setPrOweight(Double prOweight) {
        this.prOweight = prOweight;
    }

    @Basic
    @Column(name = "STUweight")
    public Double getStUweight() {
        return stUweight;
    }

    public void setStUweight(Double stUweight) {
        this.stUweight = stUweight;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Performance that = (Performance) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (starttime != null ? !starttime.equals(that.starttime) : that.starttime != null) return false;
        if (endtime != null ? !endtime.equals(that.endtime) : that.endtime != null) return false;
        if (atTweight != null ? !atTweight.equals(that.atTweight) : that.atTweight != null) return false;
        if (abIweight != null ? !abIweight.equals(that.abIweight) : that.abIweight != null) return false;
        if (prOweight != null ? !prOweight.equals(that.prOweight) : that.prOweight != null) return false;
        if (stUweight != null ? !stUweight.equals(that.stUweight) : that.stUweight != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (starttime != null ? starttime.hashCode() : 0);
        result = 31 * result + (endtime != null ? endtime.hashCode() : 0);
        result = 31 * result + (atTweight != null ? atTweight.hashCode() : 0);
        result = 31 * result + (abIweight != null ? abIweight.hashCode() : 0);
        result = 31 * result + (prOweight != null ? prOweight.hashCode() : 0);
        result = 31 * result + (stUweight != null ? stUweight.hashCode() : 0);
        return result;
    }
}
