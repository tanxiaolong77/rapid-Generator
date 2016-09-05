<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tuserTag.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TuserTag.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TuserTag.ALIAS_TAG%>:
		</td>		
		<td>
		<form:input path="tag" id="tag" cssClass="required " maxlength="20" />
		<font color='red'><form:errors path="tag"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TuserTag.ALIAS_COUNT%>:
		</td>		
		<td>
		<form:input path="count" id="count" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="count"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserTag.ALIAS_UPDATE_TIME%>:
		</td>		
		<td>
		<input value="${tuserTag.updateTimeString}" onclick="WdatePicker({dateFmt:'<%=TuserTag.FORMAT_UPDATE_TIME%>'})" id="updateTimeString" name="updateTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="updateTime"/></font>
		</td>
	</tr>	
	
		