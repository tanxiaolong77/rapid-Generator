<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.TopenUser@ALIAS_OPEN_ID}" key="openId" value="%{model.openId}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TopenUser@ALIAS_UNION_ID}" key="unionId" value="%{model.unionId}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TopenUser@ALIAS_PLATFORM}" key="platform" value="%{model.platform}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TopenUser@ALIAS_USER_ID}" key="userId" value="%{model.userId}" cssClass="required validate-integer " required="true" />
	
