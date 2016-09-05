<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TuserRecommend.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tuserrecommend"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tuserrecommend'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tuserRecommend.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TuserRecommend.ALIAS_USER_ID%></td>	
				<td><c:out value='${tuserRecommend.userId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserRecommend.ALIAS_RECOMMEND_COUNT%></td>	
				<td><c:out value='${tuserRecommend.recommendCount}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>