<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${ttest.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Ttest.ALIAS_LOCATION%>:
		</td>		
		<td>
		<form:input path="location" id="location" cssClass="required " maxlength="0" />
		<font color='red'><form:errors path="location"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Ttest.ALIAS_TITLE%>:
		</td>		
		<td>
		<form:input path="title" id="title" cssClass="" maxlength="200" />
		<font color='red'><form:errors path="title"/></font>
		</td>
	</tr>	
	
		