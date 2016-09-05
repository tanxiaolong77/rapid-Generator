<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tuserRecommendComplete.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TuserRecommendComplete.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TuserRecommendComplete.ALIAS_RECOMMEND_RULE_ID%>:
		</td>		
		<td>
		<form:input path="recommendRuleId" id="recommendRuleId" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="recommendRuleId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TuserRecommendComplete.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tuserRecommendComplete.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TuserRecommendComplete.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
		