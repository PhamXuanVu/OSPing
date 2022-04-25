package com.www.Util;

import java.text.DecimalFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

@Component
public class UtilClass {
    public String formatVND(double money) {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(money)+" VND";
    }
    
    
    public static String getBaseURL(HttpServletRequest request) {
	    String scheme = request.getScheme();
	    String serverName = request.getServerName();
	    int serverPort = request.getServerPort();
	    String contextPath = request.getContextPath();
	    StringBuffer url =  new StringBuffer();
	    url.append(scheme).append("://").append(serverName);
	    if ((serverPort != 80) && (serverPort != 443)) {
	        url.append(":").append(serverPort);
	    }
	    url.append(contextPath);
	    if(url.toString().endsWith("/")){
	    	url.append("/");
	    }
	    return url.toString();
	}
}
