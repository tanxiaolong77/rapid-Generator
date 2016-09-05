<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TuserTag.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tusertag"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tusertag'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tuserTag.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TuserTag.ALIAS_USER_ID%></td>	
				<td><c:out value='${tuserTag.userId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserTag.ALIAS_TAG%></td>	
				<td><c:out value='${tuserTag.tag}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserTag.ALIAS_COUNT%></td>	
				<td><c:out value='${tuserTag.count}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserTag.ALIAS_UPDATE_TIME%></td>	
				<td><c:out value='${tuserTag.updateTimeString}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>