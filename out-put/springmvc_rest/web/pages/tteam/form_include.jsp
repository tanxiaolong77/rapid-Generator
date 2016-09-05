<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tteam.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tteam.ALIAS_USER1_ID%>:
		</td>		
		<td>
		<form:input path="user1Id" id="user1Id" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="user1Id"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tteam.ALIAS_USER2_ID%>:
		</td>		
		<td>
		<form:input path="user2Id" id="user2Id" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="user2Id"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_TYPE%>:
		</td>		
		<td>
		<form:input path="type" id="type" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="type"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_CITY_ID%>:
		</td>		
		<td>
		<form:input path="cityId" id="cityId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="cityId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_ADDRESS%>:
		</td>		
		<td>
		<form:input path="address" id="address" cssClass="" maxlength="100" />
		<font color='red'><form:errors path="address"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_PAY_TYPE%>:
		</td>		
		<td>
		<form:input path="payType" id="payType" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="payType"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_FREE_TIME%>:
		</td>		
		<td>
		<form:input path="freeTime" id="freeTime" cssClass="" maxlength="100" />
		<font color='red'><form:errors path="freeTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_HAUNT%>:
		</td>		
		<td>
		<form:input path="haunt" id="haunt" cssClass="" maxlength="200" />
		<font color='red'><form:errors path="haunt"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_STATUS%>:
		</td>		
		<td>
		<form:input path="status" id="status" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="status"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tteam.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Tteam.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_STAR%>:
		</td>		
		<td>
		<form:input path="star" id="star" cssClass="validate-number " maxlength="12" />
		<font color='red'><form:errors path="star"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tteam.ALIAS_TEMP%>:
		</td>		
		<td>
		<form:input path="temp" id="temp" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="temp"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_SIGNATURE%>:
		</td>		
		<td>
		<form:input path="signature" id="signature" cssClass="" maxlength="200" />
		<font color='red'><form:errors path="signature"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_FREE_DAY%>:
		</td>		
		<td>
		<form:input path="freeDay" id="freeDay" cssClass="" maxlength="200" />
		<font color='red'><form:errors path="freeDay"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_FOOD%>:
		</td>		
		<td>
		<form:input path="food" id="food" cssClass="" maxlength="200" />
		<font color='red'><form:errors path="food"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_ALCOHOL%>:
		</td>		
		<td>
		<form:input path="alcohol" id="alcohol" cssClass="" maxlength="200" />
		<font color='red'><form:errors path="alcohol"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tteam.ALIAS_TEAM_GENDER%>:
		</td>		
		<td>
		<form:input path="teamGender" id="teamGender" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="teamGender"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_PARTY_TIME%>:
		</td>		
		<td>
		<form:input path="partyTime" id="partyTime" cssClass="" maxlength="200" />
		<font color='red'><form:errors path="partyTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_FEE%>:
		</td>		
		<td>
		<form:input path="fee" id="fee" cssClass="" maxlength="200" />
		<font color='red'><form:errors path="fee"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tteam.ALIAS_PAL_PURPOSE%>:
		</td>		
		<td>
		<form:input path="palPurpose" id="palPurpose" cssClass="" maxlength="200" />
		<font color='red'><form:errors path="palPurpose"/></font>
		</td>
	</tr>	
	
		