<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tuser.id}"/>

	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_NICK_NAME%>:
		</td>		
		<td>
		<form:input path="nickName" id="nickName" cssClass="" maxlength="50" />
		<font color='red'><form:errors path="nickName"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tuser.ALIAS_USERNAME%>:
		</td>		
		<td>
		<form:input path="username" id="username" cssClass="required " maxlength="40" />
		<font color='red'><form:errors path="username"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tuser.ALIAS_PASSWORD%>:
		</td>		
		<td>
		<form:input path="password" id="password" cssClass="required " maxlength="60" />
		<font color='red'><form:errors path="password"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tuser.ALIAS_PHONE%>:
		</td>		
		<td>
		<form:input path="phone" id="phone" cssClass="required " maxlength="20" />
		<font color='red'><form:errors path="phone"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_NAME%>:
		</td>		
		<td>
		<form:input path="name" id="name" cssClass="" maxlength="10" />
		<font color='red'><form:errors path="name"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_GENDER%>:
		</td>		
		<td>
		<form:input path="gender" id="gender" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="gender"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_TYPE%>:
		</td>		
		<td>
		<form:input path="type" id="type" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="type"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_SCHOOL_ID%>:
		</td>		
		<td>
		<form:input path="schoolId" id="schoolId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="schoolId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_SCHOOL_NAME%>:
		</td>		
		<td>
		<form:input path="schoolName" id="schoolName" cssClass="" maxlength="50" />
		<font color='red'><form:errors path="schoolName"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_SUBJECT%>:
		</td>		
		<td>
		<form:input path="subject" id="subject" cssClass="" maxlength="50" />
		<font color='red'><form:errors path="subject"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_INDUSTRY%>:
		</td>		
		<td>
		<form:input path="industry" id="industry" cssClass="" maxlength="50" />
		<font color='red'><form:errors path="industry"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_COMPANY%>:
		</td>		
		<td>
		<form:input path="company" id="company" cssClass="" maxlength="50" />
		<font color='red'><form:errors path="company"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_POSITION%>:
		</td>		
		<td>
		<form:input path="position" id="position" cssClass="" maxlength="50" />
		<font color='red'><form:errors path="position"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_BIRTHDAY%>:
		</td>		
		<td>
		<input value="${tuser.birthdayString}" onclick="WdatePicker({dateFmt:'<%=Tuser.FORMAT_BIRTHDAY%>'})" id="birthdayString" name="birthdayString"  maxlength="0" class="" />
		<font color='red'><form:errors path="birthday"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_AVATAR%>:
		</td>		
		<td>
		<form:input path="avatar" id="avatar" cssClass="" maxlength="150" />
		<font color='red'><form:errors path="avatar"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_EMOTIONAL%>:
		</td>		
		<td>
		<form:input path="emotional" id="emotional" cssClass="" maxlength="20" />
		<font color='red'><form:errors path="emotional"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_SIGNATURE%>:
		</td>		
		<td>
		<form:input path="signature" id="signature" cssClass="" maxlength="200" />
		<font color='red'><form:errors path="signature"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_HOME_TOWN%>:
		</td>		
		<td>
		<form:input path="homeTown" id="homeTown" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="homeTown"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_INTEREST%>:
		</td>		
		<td>
		<form:input path="interest" id="interest" cssClass="" maxlength="2000" />
		<font color='red'><form:errors path="interest"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_STAR%>:
		</td>		
		<td>
		<form:input path="star" id="star" cssClass="validate-number " maxlength="10" />
		<font color='red'><form:errors path="star"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_TRUTH_INFO_STAR%>:
		</td>		
		<td>
		<form:input path="truthInfoStar" id="truthInfoStar" cssClass="validate-number " maxlength="10" />
		<font color='red'><form:errors path="truthInfoStar"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_FRIENDLY_STAR%>:
		</td>		
		<td>
		<form:input path="friendlyStar" id="friendlyStar" cssClass="validate-number " maxlength="10" />
		<font color='red'><form:errors path="friendlyStar"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_APPEAR_STAR%>:
		</td>		
		<td>
		<form:input path="appearStar" id="appearStar" cssClass="validate-number " maxlength="10" />
		<font color='red'><form:errors path="appearStar"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tuser.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tuser.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Tuser.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_STATUS%>:
		</td>		
		<td>
		<form:input path="status" id="status" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="status"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_LAST_LOGIN_TIME%>:
		</td>		
		<td>
		<input value="${tuser.lastLoginTimeString}" onclick="WdatePicker({dateFmt:'<%=Tuser.FORMAT_LAST_LOGIN_TIME%>'})" id="lastLoginTimeString" name="lastLoginTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="lastLoginTime"/></font>
		</td>
	</tr>	
	
		