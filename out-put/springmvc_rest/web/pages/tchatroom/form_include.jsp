<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tchatroom.id}"/>

	<tr>	
		<td class="tdLabel">
			<%=Tchatroom.ALIAS_NAME%>:
		</td>		
		<td>
		<form:input path="name" id="name" cssClass="" maxlength="30" />
		<font color='red'><form:errors path="name"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tchatroom.ALIAS_SOURCE_TYPE%>:
		</td>		
		<td>
		<form:input path="sourceType" id="sourceType" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="sourceType"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tchatroom.ALIAS_SOURCE_ID%>:
		</td>		
		<td>
		<form:input path="sourceId" id="sourceId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="sourceId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tchatroom.ALIAS_STATUS%>:
		</td>		
		<td>
		<form:input path="status" id="status" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="status"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tchatroom.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tchatroom.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Tchatroom.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
		