package com.pack.PetPeerShop.model;


import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.data.annotation.Transient;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="Users")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="user_id")
	private Long id;
    private String username;
    private String password;
    @Transient
    private String confirmpassword;
    
    @OneToMany(targetEntity=Pets.class,mappedBy="user",cascade=CascadeType.ALL)
    private List<Pets>pets;
    
	public List<Pets> getPets() {
		return pets;
	}
	public void setPets(List<Pets> pets) {
		this.pets = pets;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	public User(Long id, String username, String password, String confirmpassword, List<Pets> pets) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.confirmpassword = confirmpassword;
		this.pets = pets;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
	