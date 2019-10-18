package com.lti.training.projectgladiator.exceptions;

public class NoCartFoundException extends Exception {

	public NoCartFoundException() {
		super();
	}

	public NoCartFoundException(String message, Throwable cause) {
		super(message, cause);
	}

	public NoCartFoundException(String message) {
		super(message);
	}

	public NoCartFoundException(Throwable cause) {
		super(cause);
	}
}
