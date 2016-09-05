<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_USER1_ID}" key="user1Id" value="%{model.user1Id}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_USER2_ID}" key="user2Id" value="%{model.user2Id}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_TYPE}" key="type" value="%{model.type}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_CITY_ID}" key="cityId" value="%{model.cityId}" cssClass="validate-integer " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_ADDRESS}" key="address" value="%{model.address}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_PAY_TYPE}" key="payType" value="%{model.payType}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_FREE_TIME}" key="freeTime" value="%{model.freeTime}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_HAUNT}" key="haunt" value="%{model.haunt}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_STATUS}" key="status" value="%{model.status}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Tteam.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		</td>
	</tr>
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_STAR}" key="star" value="%{model.star}" cssClass="validate-number " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_TEMP}" key="temp" value="%{model.temp}" cssClass="required validate-integer max-value-2147483647" required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_SIGNATURE}" key="signature" value="%{model.signature}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_FREE_DAY}" key="freeDay" value="%{model.freeDay}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_FOOD}" key="food" value="%{model.food}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_ALCOHOL}" key="alcohol" value="%{model.alcohol}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_TEAM_GENDER}" key="teamGender" value="%{model.teamGender}" cssClass="required validate-integer max-value-2147483647" required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_PARTY_TIME}" key="partyTime" value="%{model.partyTime}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_FEE}" key="fee" value="%{model.fee}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tteam@ALIAS_PAL_PURPOSE}" key="palPurpose" value="%{model.palPurpose}" cssClass="" required="false" />
	
