/**
 * 
 */
package org.lenzi.sample.websocket.model;

import java.io.Serializable;

/**
 * @author slenzi
 *
 */
public class ReplyMessage implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8379398273750497788L;
	
	private String message = null;
	
	public ReplyMessage(){
		
	}
	
	public ReplyMessage(String message) {
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
