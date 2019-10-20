package com.lti.training.projectgladiator.exceptions;

public class MultipleCartsFoundException extends RuntimeException {

	public MultipleCartsFoundException() {
		super();
	}

	public MultipleCartsFoundException(String message, Throwable cause) {
		super(message, cause);
	}

	public MultipleCartsFoundException(String message) {
		super(message);
	}

	public MultipleCartsFoundException(Throwable cause) {
		super(cause);
	}
}
