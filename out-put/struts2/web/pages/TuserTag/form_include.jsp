<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserTag@ALIAS_USER_ID}" key="userId" value="%{model.userId}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserTag@ALIAS_TAG}" key="tag" value="%{model.tag}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserTag@ALIAS_COUNT}" key="count" value="%{model.count}" cssClass="required validate-integer " required="true" />
	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserTag.ALIAS_UPDATE_TIME%>:
		</td>	
		<td>
		<input value="${model.updateTimeString}" onclick="WdatePicker({dateFmt:'<%=TuserTag.FORMAT_UPDATE_TIME%>'})" id="updateTimeString" name="updateTimeString"  maxlength="0" class="" />
		</td>
	</tr>
	
