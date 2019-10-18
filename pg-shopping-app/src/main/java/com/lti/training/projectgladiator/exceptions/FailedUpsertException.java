package com.lti.training.projectgladiator.exceptions;

public class FailedUpsertException extends Exception {

	public FailedUpsertException() {
		super();
	}

	public FailedUpsertException(String message, Throwable cause) {
		super(message, cause);
	}

	public FailedUpsertException(String message) {
		super(message);
	}

	public FailedUpsertException(Throwable cause) {
		super(cause);
	}
}
