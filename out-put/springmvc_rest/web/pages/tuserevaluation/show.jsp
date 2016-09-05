<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TuserEvaluation.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tuserevaluation"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tuserevaluation'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tuserEvaluation.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_USER_ID%></td>	
				<td><c:out value='${tuserEvaluation.userId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_EVALUATED_USER_ID%></td>	
				<td><c:out value='${tuserEvaluation.evaluatedUserId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tuserEvaluation.createTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_TYPE%></td>	
				<td><c:out value='${tuserEvaluation.type}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_STATUS%></td>	
				<td><c:out value='${tuserEvaluation.status}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_ACTIVITY_ID%></td>	
				<td><c:out value='${tuserEvaluation.activityId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_OFFER_ID%></td>	
				<td><c:out value='${tuserEvaluation.offerId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_STAR%></td>	
				<td><c:out value='${tuserEvaluation.star}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_TRUTH_INFO_STAR%></td>	
				<td><c:out value='${tuserEvaluation.truthInfoStar}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_FRIENDLY_STAR%></td>	
				<td><c:out value='${tuserEvaluation.friendlyStar}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_APPEAR_STAR%></td>	
				<td><c:out value='${tuserEvaluation.appearStar}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_EVALUATION%></td>	
				<td><c:out value='${tuserEvaluation.evaluation}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>