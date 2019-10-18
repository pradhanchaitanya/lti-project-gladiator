package com.lti.training.projectgladiator.exceptions;

public class NoUserFoundException extends Exception {

	public NoUserFoundException() {
		super();
	}

	public NoUserFoundException(String message, Throwable cause) {
		super(message, cause);
	}

	public NoUserFoundException(String message) {
		super(message);
	}

	public NoUserFoundException(Throwable cause) {
		super(cause);
	}	
}
