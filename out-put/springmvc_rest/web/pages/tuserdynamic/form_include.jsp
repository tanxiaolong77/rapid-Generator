<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tuserDynamic.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TuserDynamic.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserDynamic.ALIAS_ACT%>:
		</td>		
		<td>
		<form:input path="act" id="act" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="act"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserDynamic.ALIAS_DATA_TYPE%>:
		</td>		
		<td>
		<form:input path="dataType" id="dataType" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="dataType"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TuserDynamic.ALIAS_CONTENT%>:
		</td>		
		<td>
		<form:input path="content" id="content" cssClass="required " maxlength="3000" />
		<font color='red'><form:errors path="content"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserDynamic.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tuserDynamic.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TuserDynamic.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserDynamic.ALIAS_ADDRESS%>:
		</td>		
		<td>
		<form:input path="address" id="address" cssClass="" maxlength="100" />
		<font color='red'><form:errors path="address"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserDynamic.ALIAS_LONGITUDE%>:
		</td>		
		<td>
		<form:input path="longitude" id="longitude" cssClass="validate-number " maxlength="12" />
		<font color='red'><form:errors path="longitude"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserDynamic.ALIAS_LATITUDE%>:
		</td>		
		<td>
		<form:input path="latitude" id="latitude" cssClass="validate-number " maxlength="12" />
		<font color='red'><form:errors path="latitude"/></font>
		</td>
	</tr>	
	
		