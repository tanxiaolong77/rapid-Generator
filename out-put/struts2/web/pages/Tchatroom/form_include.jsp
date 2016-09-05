<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.Tchatroom@ALIAS_NAME}" key="name" value="%{model.name}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tchatroom@ALIAS_SOURCE_TYPE}" key="sourceType" value="%{model.sourceType}" cssClass="required validate-integer max-value-2147483647" required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tchatroom@ALIAS_SOURCE_ID}" key="sourceId" value="%{model.sourceId}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tchatroom@ALIAS_STATUS}" key="status" value="%{model.status}" cssClass="required validate-integer max-value-2147483647" required="true" />
	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tchatroom.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Tchatroom.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		</td>
	</tr>
	
