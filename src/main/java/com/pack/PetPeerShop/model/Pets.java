package com.pack.PetPeerShop.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="pets")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Pets {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer Pet_id;
	private String Pet_name;
	private Integer Pet_age;
	private String Pet_place;
	
	@ManyToOne
	@JoinColumn(name="id")
	private User user;
	
	
	public Pets() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getPet_id() {
		return Pet_id;
	}
	public void setPet_id(Integer pet_id) {
		Pet_id = pet_id;
	}
	public String getPet_name() {
		return Pet_name;
	}
	public void setPet_name(String pet_name) {
		Pet_name = pet_name;
	}
	public Integer getPet_age() {
		return Pet_age;
	}
	public void setPet_age(Integer pet_age) {
		Pet_age = pet_age;
	}
	public String getPet_place() {
		return Pet_place;
	}
	public void setPet_place(String pet_place) {
		Pet_place = pet_place;
	}
	
	
	
	
	
}
