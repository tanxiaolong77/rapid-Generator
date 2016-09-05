<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.TquickMatchMsgBoard@ALIAS_TEAM1_ID}" key="team1Id" value="%{model.team1Id}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TquickMatchMsgBoard@ALIAS_TEAM2_ID}" key="team2Id" value="%{model.team2Id}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TquickMatchMsgBoard@ALIAS_CONTENT}" key="content" value="%{model.content}" cssClass="" required="false" />
	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TquickMatchMsgBoard.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TquickMatchMsgBoard.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		</td>
	</tr>
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TquickMatchMsgBoard@ALIAS_CREATOR}" key="creator" value="%{model.creator}" cssClass="required validate-integer " required="true" />
	
