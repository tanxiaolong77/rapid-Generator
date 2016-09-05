<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tactivity.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tactivity.ALIAS_CREATOR_ID%>:
		</td>		
		<td>
		<form:input path="creatorId" id="creatorId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="creatorId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_TEAM_ID%>:
		</td>		
		<td>
		<form:input path="teamId" id="teamId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="teamId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_TYPE%>:
		</td>		
		<td>
		<form:input path="type" id="type" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="type"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_TITLE%>:
		</td>		
		<td>
		<form:input path="title" id="title" cssClass="" maxlength="50" />
		<font color='red'><form:errors path="title"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_INTRODUCE%>:
		</td>		
		<td>
		<form:input path="introduce" id="introduce" cssClass="" maxlength="300" />
		<font color='red'><form:errors path="introduce"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_LINK%>:
		</td>		
		<td>
		<form:input path="link" id="link" cssClass="" maxlength="200" />
		<font color='red'><form:errors path="link"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_CITY_ID%>:
		</td>		
		<td>
		<form:input path="cityId" id="cityId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="cityId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_ADDRESS%>:
		</td>		
		<td>
		<form:input path="address" id="address" cssClass="" maxlength="100" />
		<font color='red'><form:errors path="address"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_REQUIRE%>:
		</td>		
		<td>
		<form:input path="require" id="require" cssClass="" maxlength="400" />
		<font color='red'><form:errors path="require"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_START_TIME%>:
		</td>		
		<td>
		<input value="${tactivity.startTimeString}" onclick="WdatePicker({dateFmt:'<%=Tactivity.FORMAT_START_TIME%>'})" id="startTimeString" name="startTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="startTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tactivity.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Tactivity.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_END_TIME%>:
		</td>		
		<td>
		<input value="${tactivity.endTimeString}" onclick="WdatePicker({dateFmt:'<%=Tactivity.FORMAT_END_TIME%>'})" id="endTimeString" name="endTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="endTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_FEE%>:
		</td>		
		<td>
		<form:input path="fee" id="fee" cssClass="" maxlength="100" />
		<font color='red'><form:errors path="fee"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_VIEW_COUNT%>:
		</td>		
		<td>
		<form:input path="viewCount" id="viewCount" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="viewCount"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_STATUS%>:
		</td>		
		<td>
		<form:input path="status" id="status" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="status"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_LNG%>:
		</td>		
		<td>
		<form:input path="lng" id="lng" cssClass="validate-number " maxlength="20" />
		<font color='red'><form:errors path="lng"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_LAT%>:
		</td>		
		<td>
		<form:input path="lat" id="lat" cssClass="validate-number " maxlength="20" />
		<font color='red'><form:errors path="lat"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_PAY_TYPE%>:
		</td>		
		<td>
		<form:input path="payType" id="payType" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="payType"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tactivity.ALIAS_GENDER%>:
		</td>		
		<td>
		<form:input path="gender" id="gender" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="gender"/></font>
		</td>
	</tr>	
	
		