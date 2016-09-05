<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TuserEvaluation.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/TuserEvaluation/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/TuserEvaluation/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="id" id="id" value="%{model.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_USER_ID%></td>	
				<td><s:property value="%{model.userId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_EVALUATED_USER_ID%></td>	
				<td><s:property value="%{model.evaluatedUserId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_CREATE_TIME%></td>	
				<td><s:property value="%{model.createTimeString}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_TYPE%></td>	
				<td><s:property value="%{model.type}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_STATUS%></td>	
				<td><s:property value="%{model.status}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_ACTIVITY_ID%></td>	
				<td><s:property value="%{model.activityId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_OFFER_ID%></td>	
				<td><s:property value="%{model.offerId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_STAR%></td>	
				<td><s:property value="%{model.star}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_TRUTH_INFO_STAR%></td>	
				<td><s:property value="%{model.truthInfoStar}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_FRIENDLY_STAR%></td>	
				<td><s:property value="%{model.friendlyStar}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_APPEAR_STAR%></td>	
				<td><s:property value="%{model.appearStar}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserEvaluation.ALIAS_EVALUATION%></td>	
				<td><s:property value="%{model.evaluation}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>