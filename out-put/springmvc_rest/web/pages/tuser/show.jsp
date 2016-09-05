<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Tuser.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tuser"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tuser'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tuser.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_NICK_NAME%></td>	
				<td><c:out value='${tuser.nickName}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_USERNAME%></td>	
				<td><c:out value='${tuser.username}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_PASSWORD%></td>	
				<td><c:out value='${tuser.password}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_PHONE%></td>	
				<td><c:out value='${tuser.phone}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_NAME%></td>	
				<td><c:out value='${tuser.name}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_GENDER%></td>	
				<td><c:out value='${tuser.gender}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_TYPE%></td>	
				<td><c:out value='${tuser.type}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_SCHOOL_ID%></td>	
				<td><c:out value='${tuser.schoolId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_SCHOOL_NAME%></td>	
				<td><c:out value='${tuser.schoolName}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_SUBJECT%></td>	
				<td><c:out value='${tuser.subject}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_INDUSTRY%></td>	
				<td><c:out value='${tuser.industry}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_COMPANY%></td>	
				<td><c:out value='${tuser.company}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_POSITION%></td>	
				<td><c:out value='${tuser.position}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_BIRTHDAY%></td>	
				<td><c:out value='${tuser.birthdayString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_AVATAR%></td>	
				<td><c:out value='${tuser.avatar}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_EMOTIONAL%></td>	
				<td><c:out value='${tuser.emotional}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_SIGNATURE%></td>	
				<td><c:out value='${tuser.signature}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_HOME_TOWN%></td>	
				<td><c:out value='${tuser.homeTown}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_INTEREST%></td>	
				<td><c:out value='${tuser.interest}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_STAR%></td>	
				<td><c:out value='${tuser.star}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_TRUTH_INFO_STAR%></td>	
				<td><c:out value='${tuser.truthInfoStar}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_FRIENDLY_STAR%></td>	
				<td><c:out value='${tuser.friendlyStar}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_APPEAR_STAR%></td>	
				<td><c:out value='${tuser.appearStar}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tuser.createTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_STATUS%></td>	
				<td><c:out value='${tuser.status}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tuser.ALIAS_LAST_LOGIN_TIME%></td>	
				<td><c:out value='${tuser.lastLoginTimeString}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>