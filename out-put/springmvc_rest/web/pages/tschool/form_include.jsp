<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tschool.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tschool.ALIAS_PID%>:
		</td>		
		<td>
		<form:input path="pid" id="pid" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="pid"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tschool.ALIAS_NAME%>:
		</td>		
		<td>
		<form:input path="name" id="name" cssClass="required " maxlength="255" />
		<font color='red'><form:errors path="name"/></font>
		</td>
	</tr>	
	
		