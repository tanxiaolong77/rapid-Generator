<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserEvaluation@ALIAS_USER_ID}" key="userId" value="%{model.userId}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserEvaluation@ALIAS_EVALUATED_USER_ID}" key="evaluatedUserId" value="%{model.evaluatedUserId}" cssClass="required validate-integer " required="true" />
	
	
	<tr>	
		<td class="tdLabel">
			<%=TuserEvaluation.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TuserEvaluation.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		</td>
	</tr>
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserEvaluation@ALIAS_TYPE}" key="type" value="%{model.type}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserEvaluation@ALIAS_STATUS}" key="status" value="%{model.status}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserEvaluation@ALIAS_ACTIVITY_ID}" key="activityId" value="%{model.activityId}" cssClass="validate-integer " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserEvaluation@ALIAS_OFFER_ID}" key="offerId" value="%{model.offerId}" cssClass="validate-integer " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserEvaluation@ALIAS_STAR}" key="star" value="%{model.star}" cssClass="validate-number " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserEvaluation@ALIAS_TRUTH_INFO_STAR}" key="truthInfoStar" value="%{model.truthInfoStar}" cssClass="validate-number " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserEvaluation@ALIAS_FRIENDLY_STAR}" key="friendlyStar" value="%{model.friendlyStar}" cssClass="validate-number " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserEvaluation@ALIAS_APPEAR_STAR}" key="appearStar" value="%{model.appearStar}" cssClass="validate-number " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TuserEvaluation@ALIAS_EVALUATION}" key="evaluation" value="%{model.evaluation}" cssClass="" required="false" />
	
