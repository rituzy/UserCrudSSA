package com.izutov.ssa.model;

import java.util.Date;
import javax.persistence.*;

/**
 * Created by user on 15.02.2017.
 */
@Entity
@Table(name = "user")
public class User
{
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "age")
    private int age;

    @Column(name = "isAdmin")
    private boolean admin;

    @Column(name = "createdDate")
    private Date createdDate = new Date();

    @PrePersist
    protected void onCreate() {
        createdDate = new Date();
    }

    public int getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public int getAge()
    {
        return age;
    }

    public boolean isAdmin()
    {
        return admin;
    }

    public Date getCreatedDate()
    {
        return createdDate;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public void setAge(int age)
    {
        this.age = age;
    }

    public void setAdmin(boolean admin) {this.admin = admin; }

    public void setCreatedDate(Date createdDate)
    {
        this.createdDate = createdDate;
    }

    @Override
    public String toString()
    {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", isAdmin=" + admin +
                ", createdDate=" + createdDate +
                '}';
    }
}
