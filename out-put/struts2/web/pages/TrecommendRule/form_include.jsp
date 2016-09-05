<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.TrecommendRule@ALIAS_NAME}" key="name" value="%{model.name}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TrecommendRule@ALIAS_OPEN_NUM}" key="openNum" value="%{model.openNum}" cssClass="required validate-integer max-value-2147483647" required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TrecommendRule@ALIAS_CONDITION_NUM}" key="conditionNum" value="%{model.conditionNum}" cssClass="required validate-integer max-value-2147483647" required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TrecommendRule@ALIAS_BTN_EXPLAIN}" key="btnExplain" value="%{model.btnExplain}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TrecommendRule@ALIAS_TYPE}" key="type" value="%{model.type}" cssClass="validate-integer max-value-2147483647" required="false" />
	
