<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserLikeType@ALIAS_USER_ID}" key="userId" value="%{model.userId}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserLikeType@ALIAS_TYPE}" key="type" value="%{model.type}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserLikeType@ALIAS_TYPE_TEXT}" key="typeText" value="%{model.typeText}" cssClass="" required="false" />
	
