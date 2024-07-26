package com.timmy.entity;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;

public class Person {
	@JsonSerialize(using=ToStringSerializer.class)
    private Long id;

    private String name;

    private Integer rollId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id ;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getRollId() {
        return rollId;
    }

    public void setRollId(Integer rollId) {
        this.rollId = rollId;
    }

	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", rollId=" + rollId
				+ "]";
	}
    
    
}