<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.Tarea@ALIAS_CODE}" key="code" value="%{model.code}" cssClass="required validate-integer max-value-2147483647" required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tarea@ALIAS_NAME}" key="name" value="%{model.name}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tarea@ALIAS_LEVEL}" key="level" value="%{model.level}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tarea@ALIAS_PARENT_ID}" key="parentId" value="%{model.parentId}" cssClass="validate-integer max-value-2147483647" required="false" />
	
