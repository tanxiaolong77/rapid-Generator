<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tuserEvaluation.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TuserEvaluation.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TuserEvaluation.ALIAS_EVALUATED_USER_ID%>:
		</td>		
		<td>
		<form:input path="evaluatedUserId" id="evaluatedUserId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="evaluatedUserId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserEvaluation.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tuserEvaluation.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TuserEvaluation.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserEvaluation.ALIAS_TYPE%>:
		</td>		
		<td>
		<form:input path="type" id="type" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="type"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserEvaluation.ALIAS_STATUS%>:
		</td>		
		<td>
		<form:input path="status" id="status" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="status"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserEvaluation.ALIAS_ACTIVITY_ID%>:
		</td>		
		<td>
		<form:input path="activityId" id="activityId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="activityId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserEvaluation.ALIAS_OFFER_ID%>:
		</td>		
		<td>
		<form:input path="offerId" id="offerId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="offerId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserEvaluation.ALIAS_STAR%>:
		</td>		
		<td>
		<form:input path="star" id="star" cssClass="validate-number " maxlength="10" />
		<font color='red'><form:errors path="star"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserEvaluation.ALIAS_TRUTH_INFO_STAR%>:
		</td>		
		<td>
		<form:input path="truthInfoStar" id="truthInfoStar" cssClass="validate-number " maxlength="10" />
		<font color='red'><form:errors path="truthInfoStar"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserEvaluation.ALIAS_FRIENDLY_STAR%>:
		</td>		
		<td>
		<form:input path="friendlyStar" id="friendlyStar" cssClass="validate-number " maxlength="10" />
		<font color='red'><form:errors path="friendlyStar"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserEvaluation.ALIAS_APPEAR_STAR%>:
		</td>		
		<td>
		<form:input path="appearStar" id="appearStar" cssClass="validate-number " maxlength="10" />
		<font color='red'><form:errors path="appearStar"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserEvaluation.ALIAS_EVALUATION%>:
		</td>		
		<td>
		<form:input path="evaluation" id="evaluation" cssClass="" maxlength="255" />
		<font color='red'><form:errors path="evaluation"/></font>
		</td>
	</tr>	
	
		