<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserDynamic@ALIAS_USER_ID}" key="userId" value="%{model.userId}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserDynamic@ALIAS_ACT}" key="act" value="%{model.act}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserDynamic@ALIAS_DATA_TYPE}" key="dataType" value="%{model.dataType}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserDynamic@ALIAS_CONTENT}" key="content" value="%{model.content}" cssClass="required " required="true" />
	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserDynamic.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TuserDynamic.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		</td>
	</tr>
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserDynamic@ALIAS_ADDRESS}" key="address" value="%{model.address}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserDynamic@ALIAS_LONGITUDE}" key="longitude" value="%{model.longitude}" cssClass="validate-number " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserDynamic@ALIAS_LATITUDE}" key="latitude" value="%{model.latitude}" cssClass="validate-number " required="false" />
	
