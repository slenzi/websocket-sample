/**
 * 
 */
package org.lenzi.sample.websocket.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.AbstractWebSocketMessageBrokerConfigurer;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;

/**
 * @author slenzi
 *
 */
@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig extends AbstractWebSocketMessageBrokerConfigurer {

	private Logger logger = LoggerFactory.getLogger(WebSocketConfig.class);
	
	/**
	 * 
	 */
	public WebSocketConfig() {

	}

	/**
	 * Enable a simple broker with destination prefix /simplebroker
	 */
	@Override
	public void configureMessageBroker(MessageBrokerRegistry registry) {
		logger.info("configureMessageBroker called");
		//super.configureMessageBroker(registry);
		registry.enableSimpleBroker("/simplebroker");
		logger.info(registry.toString());
	}

	/**
	 * Register a STOMP endpoint at /hello.
	 */
	/* (non-Javadoc)
	 * @see org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer#registerStompEndpoints(org.springframework.web.socket.config.annotation.StompEndpointRegistry)
	 */
	public void registerStompEndpoints(StompEndpointRegistry registry) {
		logger.info("registerStompEndpoints called");
		registry.addEndpoint("/hello").withSockJS();
		logger.info(registry.toString());
	}


}
