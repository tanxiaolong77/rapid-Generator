<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tarea.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tarea.ALIAS_CODE%>:
		</td>		
		<td>
		<form:input path="code" id="code" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="code"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tarea.ALIAS_NAME%>:
		</td>		
		<td>
		<form:input path="name" id="name" cssClass="required " maxlength="40" />
		<font color='red'><form:errors path="name"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tarea.ALIAS_LEVEL%>:
		</td>		
		<td>
		<form:input path="level" id="level" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="level"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tarea.ALIAS_PARENT_ID%>:
		</td>		
		<td>
		<form:input path="parentId" id="parentId" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="parentId"/></font>
		</td>
	</tr>	
	
		