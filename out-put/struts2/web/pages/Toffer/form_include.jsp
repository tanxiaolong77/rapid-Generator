<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.Toffer@ALIAS_CREATOR_ID}" key="creatorId" value="%{model.creatorId}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Toffer@ALIAS_TEAM1_ID}" key="team1Id" value="%{model.team1Id}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Toffer@ALIAS_TEAM2_ID}" key="team2Id" value="%{model.team2Id}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Toffer@ALIAS_STATUS}" key="status" value="%{model.status}" cssClass="required validate-integer max-value-2147483647" required="true" />
	
	
	<tr>	
		<td class="tdLabel">
			<%=Toffer.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Toffer.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		</td>
	</tr>
	
