package com.lti.training.projectgladiator.exceptions;

public class MultipleUsersFoundException extends RuntimeException {

	public MultipleUsersFoundException() {
		super();
	}

	public MultipleUsersFoundException(String message, Throwable cause) {
		super(message, cause);
	}

	public MultipleUsersFoundException(String message) {
		super(message);
	}

	public MultipleUsersFoundException(Throwable cause) {
		super(cause);
	}
}
