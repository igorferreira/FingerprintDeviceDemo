package com.timmy.websocket;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import javax.servlet.*;
import java.io.IOException;


public class StartFilter implements Filter {

    public void destroy() {

    }

    public void doFilter(ServletRequest arg0, ServletResponse arg1,
            FilterChain arg2) throws IOException, ServletException {

    }

    public void init(FilterConfig arg0) throws ServletException {
        this.startWebsocketInstantMsg();
    }

    /**
     * 启动即时聊天服务
     */
    public void startWebsocketInstantMsg() {
    	ApplicationContext ac = new FileSystemXmlApplicationContext("classpath:spring-mybatis.xml"); 
    	WSServer ws=(WSServer) ac.getBean("webSocket");
		ws.start();
	//	ws.onMessage( , message);
	//	String  message="{\"cmd\":\"getuserlist\",\"stn\":true}";
    }
}