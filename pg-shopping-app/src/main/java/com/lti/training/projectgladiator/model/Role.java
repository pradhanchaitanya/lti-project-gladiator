package com.lti.training.projectgladiator.model;

public enum Role {

	USER("User"), RETAILER("Retailer"), ADMIN("Admin");
	
	private String value;
	
	private Role(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
}
