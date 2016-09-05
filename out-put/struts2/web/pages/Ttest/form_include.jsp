<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.Ttest@ALIAS_LOCATION}" key="location" value="%{model.location}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Ttest@ALIAS_TITLE}" key="title" value="%{model.title}" cssClass="" required="false" />
	
