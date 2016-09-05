<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Tuser.TABLE_ALIAS%> 维护</title>
	
	<link href="<c:url value="/widgets/simpletable/simpletable.css"/>" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/widgets/simpletable/simpletable.js"/>"></script>
	
	<script type="text/javascript" >
		$(document).ready(function() {
			// 分页需要依赖的初始化动作
			window.simpleTable = new SimpleTable('queryForm',${page.thisPageNumber},${page.pageSize},'${pageRequest.sortColumns}');
		});
	</script>
</rapid:override>

<rapid:override name="content">
	<form id="queryForm" name="queryForm" action="<c:url value="/pages/Tuser/list.do"/>" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=Tuser.ALIAS_NICK_NAME%></td>		
					<td>
						<input value="${query.nickName}" id="nickName" name="nickName" maxlength="50"  class=""/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_USERNAME%></td>		
					<td>
						<input value="${query.username}" id="username" name="username" maxlength="40"  class=""/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_PASSWORD%></td>		
					<td>
						<input value="${query.password}" id="password" name="password" maxlength="60"  class=""/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_PHONE%></td>		
					<td>
						<input value="${query.phone}" id="phone" name="phone" maxlength="20"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tuser.ALIAS_NAME%></td>		
					<td>
						<input value="${query.name}" id="name" name="name" maxlength="10"  class=""/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_GENDER%></td>		
					<td>
						<input value="${query.gender}" id="gender" name="gender" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_TYPE%></td>		
					<td>
						<input value="${query.type}" id="type" name="type" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_SCHOOL_ID%></td>		
					<td>
						<input value="${query.schoolId}" id="schoolId" name="schoolId" maxlength="19"  class="validate-integer "/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tuser.ALIAS_SCHOOL_NAME%></td>		
					<td>
						<input value="${query.schoolName}" id="schoolName" name="schoolName" maxlength="50"  class=""/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_SUBJECT%></td>		
					<td>
						<input value="${query.subject}" id="subject" name="subject" maxlength="50"  class=""/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_INDUSTRY%></td>		
					<td>
						<input value="${query.industry}" id="industry" name="industry" maxlength="50"  class=""/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_COMPANY%></td>		
					<td>
						<input value="${query.company}" id="company" name="company" maxlength="50"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tuser.ALIAS_POSITION%></td>		
					<td>
						<input value="${query.position}" id="position" name="position" maxlength="50"  class=""/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_BIRTHDAY%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.birthdayBegin}' pattern='<%=Tuser.FORMAT_BIRTHDAY%>'/>" onclick="WdatePicker({dateFmt:'<%=Tuser.FORMAT_BIRTHDAY%>'})" id="birthdayBegin" name="birthdayBegin"   />
						<input value="<fmt:formatDate value='${query.birthdayEnd}' pattern='<%=Tuser.FORMAT_BIRTHDAY%>'/>" onclick="WdatePicker({dateFmt:'<%=Tuser.FORMAT_BIRTHDAY%>'})" id="birthdayEnd" name="birthdayEnd"   />
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_AVATAR%></td>		
					<td>
						<input value="${query.avatar}" id="avatar" name="avatar" maxlength="150"  class=""/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_EMOTIONAL%></td>		
					<td>
						<input value="${query.emotional}" id="emotional" name="emotional" maxlength="20"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tuser.ALIAS_SIGNATURE%></td>		
					<td>
						<input value="${query.signature}" id="signature" name="signature" maxlength="200"  class=""/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_HOME_TOWN%></td>		
					<td>
						<input value="${query.homeTown}" id="homeTown" name="homeTown" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_INTEREST%></td>		
					<td>
						<input value="${query.interest}" id="interest" name="interest" maxlength="2000"  class=""/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_STAR%></td>		
					<td>
						<input value="${query.star}" id="star" name="star" maxlength="10"  class="validate-number "/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tuser.ALIAS_TRUTH_INFO_STAR%></td>		
					<td>
						<input value="${query.truthInfoStar}" id="truthInfoStar" name="truthInfoStar" maxlength="10"  class="validate-number "/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_FRIENDLY_STAR%></td>		
					<td>
						<input value="${query.friendlyStar}" id="friendlyStar" name="friendlyStar" maxlength="10"  class="validate-number "/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_APPEAR_STAR%></td>		
					<td>
						<input value="${query.appearStar}" id="appearStar" name="appearStar" maxlength="10"  class="validate-number "/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_CREATE_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.createTimeBegin}' pattern='<%=Tuser.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Tuser.FORMAT_CREATE_TIME%>'})" id="createTimeBegin" name="createTimeBegin"   />
						<input value="<fmt:formatDate value='${query.createTimeEnd}' pattern='<%=Tuser.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Tuser.FORMAT_CREATE_TIME%>'})" id="createTimeEnd" name="createTimeEnd"   />
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tuser.ALIAS_STATUS%></td>		
					<td>
						<input value="${query.status}" id="status" name="status" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=Tuser.ALIAS_LAST_LOGIN_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.lastLoginTimeBegin}' pattern='<%=Tuser.FORMAT_LAST_LOGIN_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Tuser.FORMAT_LAST_LOGIN_TIME%>'})" id="lastLoginTimeBegin" name="lastLoginTimeBegin"   />
						<input value="<fmt:formatDate value='${query.lastLoginTimeEnd}' pattern='<%=Tuser.FORMAT_LAST_LOGIN_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Tuser.FORMAT_LAST_LOGIN_TIME%>'})" id="lastLoginTimeEnd" name="lastLoginTimeEnd"   />
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/pages/Tuser/list.do'"/>
			<input type="submit" class="stdButton" style="width:80px" value="新增" onclick="getReferenceForm(this).action='${ctx}/pages/Tuser/create.do'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="batchDelete('${ctx}/pages/Tuser/delete.do','items',document.forms.queryForm)"/>
		<div>
	</div>
	
	<div class="gridTable">
	
		<simpletable:pageToolbar page="${page}">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
	
		<table width="100%"  border="0" cellspacing="0" class="gridBody">
		  <thead>
			  
			  <tr>
				<th style="width:1px;"> </th>
				<th style="width:1px;"><input type="checkbox" onclick="setAllCheckboxState('items',this.checked)"></th>
				
				<!-- 排序时为th增加sortColumn即可,new SimpleTable('sortColumns')会为tableHeader自动增加排序功能; -->
				<th sortColumn="nick_name" ><%=Tuser.ALIAS_NICK_NAME%></th>
				<th sortColumn="username" ><%=Tuser.ALIAS_USERNAME%></th>
				<th sortColumn="password" ><%=Tuser.ALIAS_PASSWORD%></th>
				<th sortColumn="phone" ><%=Tuser.ALIAS_PHONE%></th>
				<th sortColumn="name" ><%=Tuser.ALIAS_NAME%></th>
				<th sortColumn="gender" ><%=Tuser.ALIAS_GENDER%></th>
				<th sortColumn="type" ><%=Tuser.ALIAS_TYPE%></th>
				<th sortColumn="school_id" ><%=Tuser.ALIAS_SCHOOL_ID%></th>
				<th sortColumn="school_name" ><%=Tuser.ALIAS_SCHOOL_NAME%></th>
				<th sortColumn="subject" ><%=Tuser.ALIAS_SUBJECT%></th>
				<th sortColumn="industry" ><%=Tuser.ALIAS_INDUSTRY%></th>
				<th sortColumn="company" ><%=Tuser.ALIAS_COMPANY%></th>
				<th sortColumn="position" ><%=Tuser.ALIAS_POSITION%></th>
				<th sortColumn="birthday" ><%=Tuser.ALIAS_BIRTHDAY%></th>
				<th sortColumn="avatar" ><%=Tuser.ALIAS_AVATAR%></th>
				<th sortColumn="emotional" ><%=Tuser.ALIAS_EMOTIONAL%></th>
				<th sortColumn="signature" ><%=Tuser.ALIAS_SIGNATURE%></th>
				<th sortColumn="home_town" ><%=Tuser.ALIAS_HOME_TOWN%></th>
				<th sortColumn="interest" ><%=Tuser.ALIAS_INTEREST%></th>
				<th sortColumn="star" ><%=Tuser.ALIAS_STAR%></th>
				<th sortColumn="truth_info_star" ><%=Tuser.ALIAS_TRUTH_INFO_STAR%></th>
				<th sortColumn="friendly_star" ><%=Tuser.ALIAS_FRIENDLY_STAR%></th>
				<th sortColumn="appear_star" ><%=Tuser.ALIAS_APPEAR_STAR%></th>
				<th sortColumn="create_time" ><%=Tuser.ALIAS_CREATE_TIME%></th>
				<th sortColumn="status" ><%=Tuser.ALIAS_STATUS%></th>
				<th sortColumn="last_login_time" ><%=Tuser.ALIAS_LAST_LOGIN_TIME%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="id=${item.id}&"></td>
				
				<td><c:out value='${item.nickName}'/>&nbsp;</td>
				<td><c:out value='${item.username}'/>&nbsp;</td>
				<td><c:out value='${item.password}'/>&nbsp;</td>
				<td><c:out value='${item.phone}'/>&nbsp;</td>
				<td><c:out value='${item.name}'/>&nbsp;</td>
				<td><c:out value='${item.gender}'/>&nbsp;</td>
				<td><c:out value='${item.type}'/>&nbsp;</td>
				<td><c:out value='${item.schoolId}'/>&nbsp;</td>
				<td><c:out value='${item.schoolName}'/>&nbsp;</td>
				<td><c:out value='${item.subject}'/>&nbsp;</td>
				<td><c:out value='${item.industry}'/>&nbsp;</td>
				<td><c:out value='${item.company}'/>&nbsp;</td>
				<td><c:out value='${item.position}'/>&nbsp;</td>
				<td><c:out value='${item.birthdayString}'/>&nbsp;</td>
				<td><c:out value='${item.avatar}'/>&nbsp;</td>
				<td><c:out value='${item.emotional}'/>&nbsp;</td>
				<td><c:out value='${item.signature}'/>&nbsp;</td>
				<td><c:out value='${item.homeTown}'/>&nbsp;</td>
				<td><c:out value='${item.interest}'/>&nbsp;</td>
				<td><c:out value='${item.star}'/>&nbsp;</td>
				<td><c:out value='${item.truthInfoStar}'/>&nbsp;</td>
				<td><c:out value='${item.friendlyStar}'/>&nbsp;</td>
				<td><c:out value='${item.appearStar}'/>&nbsp;</td>
				<td><c:out value='${item.createTimeString}'/>&nbsp;</td>
				<td><c:out value='${item.status}'/>&nbsp;</td>
				<td><c:out value='${item.lastLoginTimeString}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/pages/Tuser/show.do?id=${item.id}&">查看</a>&nbsp;&nbsp;&nbsp;
					<a href="${ctx}/pages/Tuser/edit.do?id=${item.id}&">修改</a>
				</td>
			  </tr>
			  
		  	  </c:forEach>
		  </tbody>
		</table>
	
		<simpletable:pageToolbar page="${page}">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
	</div>
	</form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>

