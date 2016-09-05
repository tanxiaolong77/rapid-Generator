<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tdynamicLike.id}"/>

	<tr>	
		<td class="tdLabel">
			<%=TdynamicLike.ALIAS_DYNAMIC_ID%>:
		</td>		
		<td>
		<form:input path="dynamicId" id="dynamicId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="dynamicId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TdynamicLike.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TdynamicLike.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tdynamicLike.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TdynamicLike.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
		