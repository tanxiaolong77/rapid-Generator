<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.TopenAppLog@ALIAS_USER_ID}" key="userId" value="%{model.userId}" cssClass="required validate-integer " required="true" />
	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TopenAppLog.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TopenAppLog.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		</td>
	</tr>
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TopenAppLog@ALIAS_DATE}" key="date" value="%{model.date}" cssClass="required " required="true" />
	
