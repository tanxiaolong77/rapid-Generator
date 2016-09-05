<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tuserLikeType.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TuserLikeType.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserLikeType.ALIAS_TYPE%>:
		</td>		
		<td>
		<form:input path="type" id="type" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="type"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserLikeType.ALIAS_TYPE_TEXT%>:
		</td>		
		<td>
		<form:input path="typeText" id="typeText" cssClass="" maxlength="30" />
		<font color='red'><form:errors path="typeText"/></font>
		</td>
	</tr>	
	
		