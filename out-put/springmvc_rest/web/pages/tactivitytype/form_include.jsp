<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tactivityType.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TactivityType.ALIAS_NAME%>:
		</td>		
		<td>
		<form:input path="name" id="name" cssClass="required " maxlength="20" />
		<font color='red'><form:errors path="name"/></font>
		</td>
	</tr>	
	
		