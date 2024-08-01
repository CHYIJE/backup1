package com.tenco.models;

import lombok.Data;

@Data
public class User {
	private int id;
	private String password;
	private String username;
	private String email;
}
