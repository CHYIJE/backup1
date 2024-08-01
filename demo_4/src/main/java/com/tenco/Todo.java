package com.tenco;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter

public class Todo {
	private int id;
	private String title;
	private boolean comppleted;

	@Override
	public String toString() {
		return "{ \"id\" : " + id +"}";
	}
	
}
