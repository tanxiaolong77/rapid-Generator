<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tcommunication.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tcommunication.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tcommunication.ALIAS_COMMUNICATION_PHONE%>:
		</td>		
		<td>
		<form:input path="communicationPhone" id="communicationPhone" cssClass="" maxlength="20" />
		<font color='red'><form:errors path="communicationPhone"/></font>
		</td>
	</tr>	
	
		