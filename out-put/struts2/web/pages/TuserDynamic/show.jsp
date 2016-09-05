<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TuserDynamic.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/TuserDynamic/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/TuserDynamic/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="id" id="id" value="%{model.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_USER_ID%></td>	
				<td><s:property value="%{model.userId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_ACT%></td>	
				<td><s:property value="%{model.act}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_DATA_TYPE%></td>	
				<td><s:property value="%{model.dataType}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_CONTENT%></td>	
				<td><s:property value="%{model.content}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_CREATE_TIME%></td>	
				<td><s:property value="%{model.createTimeString}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_ADDRESS%></td>	
				<td><s:property value="%{model.address}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_LONGITUDE%></td>	
				<td><s:property value="%{model.longitude}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TuserDynamic.ALIAS_LATITUDE%></td>	
				<td><s:property value="%{model.latitude}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>