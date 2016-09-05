<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_NICK_NAME}" key="nickName" value="%{model.nickName}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_USERNAME}" key="username" value="%{model.username}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_PASSWORD}" key="password" value="%{model.password}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_PHONE}" key="phone" value="%{model.phone}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_NAME}" key="name" value="%{model.name}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_GENDER}" key="gender" value="%{model.gender}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_TYPE}" key="type" value="%{model.type}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_SCHOOL_ID}" key="schoolId" value="%{model.schoolId}" cssClass="validate-integer " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_SCHOOL_NAME}" key="schoolName" value="%{model.schoolName}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_SUBJECT}" key="subject" value="%{model.subject}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_INDUSTRY}" key="industry" value="%{model.industry}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_COMPANY}" key="company" value="%{model.company}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_POSITION}" key="position" value="%{model.position}" cssClass="" required="false" />
	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_BIRTHDAY%>:
		</td>	
		<td>
		<input value="${model.birthdayString}" onclick="WdatePicker({dateFmt:'<%=Tuser.FORMAT_BIRTHDAY%>'})" id="birthdayString" name="birthdayString"  maxlength="0" class="" />
		</td>
	</tr>
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_AVATAR}" key="avatar" value="%{model.avatar}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_EMOTIONAL}" key="emotional" value="%{model.emotional}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_SIGNATURE}" key="signature" value="%{model.signature}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_HOME_TOWN}" key="homeTown" value="%{model.homeTown}" cssClass="validate-integer " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_INTEREST}" key="interest" value="%{model.interest}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_STAR}" key="star" value="%{model.star}" cssClass="validate-number " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_TRUTH_INFO_STAR}" key="truthInfoStar" value="%{model.truthInfoStar}" cssClass="validate-number " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_FRIENDLY_STAR}" key="friendlyStar" value="%{model.friendlyStar}" cssClass="validate-number " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_APPEAR_STAR}" key="appearStar" value="%{model.appearStar}" cssClass="validate-number " required="false" />
	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tuser.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Tuser.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		</td>
	</tr>
	
	
	<s:textfield label="%{@com.quanjing.yd.model.Tuser@ALIAS_STATUS}" key="status" value="%{model.status}" cssClass="validate-integer max-value-2147483647" required="false" />
	
	
	<tr>	
		<td class="tdLabel">
			<%=Tuser.ALIAS_LAST_LOGIN_TIME%>:
		</td>	
		<td>
		<input value="${model.lastLoginTimeString}" onclick="WdatePicker({dateFmt:'<%=Tuser.FORMAT_LAST_LOGIN_TIME%>'})" id="lastLoginTimeString" name="lastLoginTimeString"  maxlength="0" class="" />
		</td>
	</tr>
	
