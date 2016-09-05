<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.TdynamicLike@ALIAS_DYNAMIC_ID}" key="dynamicId" value="%{model.dynamicId}" cssClass="validate-integer " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TdynamicLike@ALIAS_USER_ID}" key="userId" value="%{model.userId}" cssClass="validate-integer " required="false" />
	
	
	<tr>	
		<td class="tdLabel">
			<%=TdynamicLike.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TdynamicLike.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		</td>
	</tr>
	
