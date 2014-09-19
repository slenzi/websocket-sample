/**
 * 
 */
package org.lenzi.sample.websocket.controller;

import org.lenzi.sample.websocket.model.HelloMessage;
import org.lenzi.sample.websocket.model.ReplyMessage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

/**
 * @author slenzi
 *
 */
@Controller
public class HelloController {

	private Logger logger = LoggerFactory.getLogger(HelloController.class);
	
	/**
	 * 
	 */
	public HelloController() {

	}
	
	/**
	 * Process incoming STOMP endpoint messages mapped to /hello and output
	 * replies to our broker mapped at /simplebroker.
	 * 
	 * @param message
	 * @return
	 * @throws Exception
	 */
    @MessageMapping("/hello")
	@SendTo("/simplebroker/replies")	
	public ReplyMessage processHello(HelloMessage message) throws Exception {
		
    	logger.info("processHello called");
		
		Thread.sleep(1000); // simulate delay
		
		return new ReplyMessage("Reply From Server. Original message = " + message);
	}

}
