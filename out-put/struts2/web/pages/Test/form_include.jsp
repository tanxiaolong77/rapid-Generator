<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.Test@ALIAS_NAME}" key="name" value="%{model.name}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Test@ALIAS_PNT}" key="pnt" value="%{model.pnt}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Test@ALIAS_LINE}" key="line" value="%{model.line}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Test@ALIAS_PGN}" key="pgn" value="%{model.pgn}" cssClass="" required="false" />
	
