<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_CREATOR_ID}" key="creatorId" value="%{model.creatorId}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_USER_ID}" key="userId" value="%{model.userId}" cssClass="validate-integer " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_TEAM_ID}" key="teamId" value="%{model.teamId}" cssClass="validate-integer " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_TYPE}" key="type" value="%{model.type}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_TITLE}" key="title" value="%{model.title}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_INTRODUCE}" key="introduce" value="%{model.introduce}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_LINK}" key="link" value="%{model.link}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_CITY_ID}" key="cityId" value="%{model.cityId}" cssClass="validate-integer " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_ADDRESS}" key="address" value="%{model.address}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_REQUIRE}" key="require" value="%{model.require}" cssClass="" required="false" />
	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_START_TIME%>:
		</td>	
		<td>
		<input value="${model.startTimeString}" onclick="WdatePicker({dateFmt:'<%=Tactivity.FORMAT_START_TIME%>'})" id="startTimeString" name="startTimeString"  maxlength="0" class="" />
		</td>
	</tr>
	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Tactivity.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		</td>
	</tr>
	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_END_TIME%>:
		</td>	
		<td>
		<input value="${model.endTimeString}" onclick="WdatePicker({dateFmt:'<%=Tactivity.FORMAT_END_TIME%>'})" id="endTimeString" name="endTimeString"  maxlength="0" class="" />
		</td>
	</tr>
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_FEE}" key="fee" value="%{model.fee}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_VIEW_COUNT}" key="viewCount" value="%{model.viewCount}" cssClass="validate-integer " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_STATUS}" key="status" value="%{model.status}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_LNG}" key="lng" value="%{model.lng}" cssClass="validate-number " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_LAT}" key="lat" value="%{model.lat}" cssClass="validate-number " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_PAY_TYPE}" key="payType" value="%{model.payType}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tactivity@ALIAS_GENDER}" key="gender" value="%{model.gender}" cssClass="validate-integer max-value-2147483647" required="false" />
	
