<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Tuser.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/Tuser/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/Tuser/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="id" id="id" value="%{model.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_NICK_NAME%></td>	
				<td><s:property value="%{model.nickName}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_USERNAME%></td>	
				<td><s:property value="%{model.username}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_PASSWORD%></td>	
				<td><s:property value="%{model.password}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_PHONE%></td>	
				<td><s:property value="%{model.phone}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_NAME%></td>	
				<td><s:property value="%{model.name}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_GENDER%></td>	
				<td><s:property value="%{model.gender}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_TYPE%></td>	
				<td><s:property value="%{model.type}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_SCHOOL_ID%></td>	
				<td><s:property value="%{model.schoolId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_SCHOOL_NAME%></td>	
				<td><s:property value="%{model.schoolName}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_SUBJECT%></td>	
				<td><s:property value="%{model.subject}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_INDUSTRY%></td>	
				<td><s:property value="%{model.industry}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_COMPANY%></td>	
				<td><s:property value="%{model.company}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_POSITION%></td>	
				<td><s:property value="%{model.position}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_BIRTHDAY%></td>	
				<td><s:property value="%{model.birthdayString}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_AVATAR%></td>	
				<td><s:property value="%{model.avatar}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_EMOTIONAL%></td>	
				<td><s:property value="%{model.emotional}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_SIGNATURE%></td>	
				<td><s:property value="%{model.signature}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_HOME_TOWN%></td>	
				<td><s:property value="%{model.homeTown}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_INTEREST%></td>	
				<td><s:property value="%{model.interest}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_STAR%></td>	
				<td><s:property value="%{model.star}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_TRUTH_INFO_STAR%></td>	
				<td><s:property value="%{model.truthInfoStar}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_FRIENDLY_STAR%></td>	
				<td><s:property value="%{model.friendlyStar}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_APPEAR_STAR%></td>	
				<td><s:property value="%{model.appearStar}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_CREATE_TIME%></td>	
				<td><s:property value="%{model.createTimeString}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_STATUS%></td>	
				<td><s:property value="%{model.status}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_LAST_LOGIN_TIME%></td>	
				<td><s:property value="%{model.lastLoginTimeString}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>