<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.TdynamicComment@ALIAS_DYNAMIC_ID}" key="dynamicId" value="%{model.dynamicId}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TdynamicComment@ALIAS_USER_ID}" key="userId" value="%{model.userId}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TdynamicComment@ALIAS_COMMENT}" key="comment" value="%{model.comment}" cssClass="" required="false" />
	
	
	<tr>	
		<td class="tdLabel">
			<%=TdynamicComment.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TdynamicComment.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		</td>
	</tr>
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TdynamicComment@ALIAS_IP}" key="ip" value="%{model.ip}" cssClass="" required="false" />
	
