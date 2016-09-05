<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TuserDynamic.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tuserdynamic"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tuserdynamic'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tuserDynamic.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_USER_ID%></td>	
				<td><c:out value='${tuserDynamic.userId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_ACT%></td>	
				<td><c:out value='${tuserDynamic.act}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_DATA_TYPE%></td>	
				<td><c:out value='${tuserDynamic.dataType}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_CONTENT%></td>	
				<td><c:out value='${tuserDynamic.content}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tuserDynamic.createTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_ADDRESS%></td>	
				<td><c:out value='${tuserDynamic.address}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_LONGITUDE%></td>	
				<td><c:out value='${tuserDynamic.longitude}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_LATITUDE%></td>	
				<td><c:out value='${tuserDynamic.latitude}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>