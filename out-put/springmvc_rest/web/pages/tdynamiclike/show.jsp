<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TdynamicLike.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tdynamiclike"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tdynamiclike'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tdynamicLike.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TdynamicLike.ALIAS_DYNAMIC_ID%></td>	
				<td><c:out value='${tdynamicLike.dynamicId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TdynamicLike.ALIAS_USER_ID%></td>	
				<td><c:out value='${tdynamicLike.userId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TdynamicLike.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tdynamicLike.createTimeString}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>