<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.TmsgBoardV2@ALIAS_USER_ID}" key="userId" value="%{model.userId}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TmsgBoardV2@ALIAS_CHATROOM_ID}" key="chatroomId" value="%{model.chatroomId}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TmsgBoardV2@ALIAS_CONTENT}" key="content" value="%{model.content}" cssClass="" required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TmsgBoardV2@ALIAS_TYPE}" key="type" value="%{model.type}" cssClass="required validate-integer max-value-2147483647" required="true" />
	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TmsgBoardV2.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TmsgBoardV2.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		</td>
	</tr>
	
