package model;

import java.util.Objects;

public class Cargo {
    private Integer id;
    private String name;
    private String unit;
    private String phone;
    private String addr;
    private Integer method;
    private Integer status;

    public Cargo() {
    }

    public Cargo(Integer id, String name, String unit, String phone, String addr, Integer method, Integer status) {
        this.id = id;
        this.name = name;
        this.unit = unit;
        this.phone = phone;
        this.addr = addr;
        this.method = method;
        this.status = status;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUnit() {
        return this.unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddr() {
        return this.addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public Integer getMethod() {
        return this.method;
    }

    public void setMethod(Integer method) {
        this.method = method;
    }

    public Integer getStatus() {
        return this.status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Cargo id(Integer id) {
        setId(id);
        return this;
    }

    public Cargo name(String name) {
        setName(name);
        return this;
    }

    public Cargo unit(String unit) {
        setUnit(unit);
        return this;
    }

    public Cargo phone(String phone) {
        setPhone(phone);
        return this;
    }

    public Cargo addr(String addr) {
        setAddr(addr);
        return this;
    }

    public Cargo method(Integer method) {
        setMethod(method);
        return this;
    }

    public Cargo status(Integer status) {
        setStatus(status);
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Cargo)) {
            return false;
        }
        Cargo cargo = (Cargo) o;
        return Objects.equals(id, cargo.id) && Objects.equals(name, cargo.name) && Objects.equals(unit, cargo.unit) && Objects.equals(phone, cargo.phone) && Objects.equals(addr, cargo.addr) && Objects.equals(method, cargo.method) && Objects.equals(status, cargo.status);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, unit, phone, addr, method, status);
    }

    @Override
    public String toString() {
        return "{" +
            " id='" + getId() + "'" +
            ", name='" + getName() + "'" +
            ", unit='" + getUnit() + "'" +
            ", phone='" + getPhone() + "'" +
            ", addr='" + getAddr() + "'" +
            ", method='" + getMethod() + "'" +
            ", status='" + getStatus() + "'" +
            "}";
    }

}
