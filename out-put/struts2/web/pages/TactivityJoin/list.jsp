<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TactivityJoin.TABLE_ALIAS%> 维护</title>
	
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
	<form id="queryForm" name="queryForm" action="<c:url value="/pages/TactivityJoin/list.do"/>" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=TactivityJoin.ALIAS_ACTIVITY_ID%></td>		
					<td>
						<input value="${query.activityId}" id="activityId" name="activityId" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=TactivityJoin.ALIAS_TEAM_ID%></td>		
					<td>
						<input value="${query.teamId}" id="teamId" name="teamId" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=TactivityJoin.ALIAS_CREATE_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.createTimeBegin}' pattern='<%=TactivityJoin.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=TactivityJoin.FORMAT_CREATE_TIME%>'})" id="createTimeBegin" name="createTimeBegin"   />
						<input value="<fmt:formatDate value='${query.createTimeEnd}' pattern='<%=TactivityJoin.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=TactivityJoin.FORMAT_CREATE_TIME%>'})" id="createTimeEnd" name="createTimeEnd"   />
					</td>
					<td class="tdLabel"><%=TactivityJoin.ALIAS_END_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.endTimeBegin}' pattern='<%=TactivityJoin.FORMAT_END_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=TactivityJoin.FORMAT_END_TIME%>'})" id="endTimeBegin" name="endTimeBegin"   />
						<input value="<fmt:formatDate value='${query.endTimeEnd}' pattern='<%=TactivityJoin.FORMAT_END_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=TactivityJoin.FORMAT_END_TIME%>'})" id="endTimeEnd" name="endTimeEnd"   />
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=TactivityJoin.ALIAS_CREATOR_ID%></td>		
					<td>
						<input value="${query.creatorId}" id="creatorId" name="creatorId" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=TactivityJoin.ALIAS_USER_ID%></td>		
					<td>
						<input value="${query.userId}" id="userId" name="userId" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=TactivityJoin.ALIAS_STATUS%></td>		
					<td>
						<input value="${query.status}" id="status" name="status" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/pages/TactivityJoin/list.do'"/>
			<input type="submit" class="stdButton" style="width:80px" value="新增" onclick="getReferenceForm(this).action='${ctx}/pages/TactivityJoin/create.do'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="batchDelete('${ctx}/pages/TactivityJoin/delete.do','items',document.forms.queryForm)"/>
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
				<th sortColumn="activity_id" ><%=TactivityJoin.ALIAS_ACTIVITY_ID%></th>
				<th sortColumn="team_id" ><%=TactivityJoin.ALIAS_TEAM_ID%></th>
				<th sortColumn="create_time" ><%=TactivityJoin.ALIAS_CREATE_TIME%></th>
				<th sortColumn="end_time" ><%=TactivityJoin.ALIAS_END_TIME%></th>
				<th sortColumn="creator_id" ><%=TactivityJoin.ALIAS_CREATOR_ID%></th>
				<th sortColumn="user_id" ><%=TactivityJoin.ALIAS_USER_ID%></th>
				<th sortColumn="status" ><%=TactivityJoin.ALIAS_STATUS%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="id=${item.id}&"></td>
				
				<td><c:out value='${item.activityId}'/>&nbsp;</td>
				<td><c:out value='${item.teamId}'/>&nbsp;</td>
				<td><c:out value='${item.createTimeString}'/>&nbsp;</td>
				<td><c:out value='${item.endTimeString}'/>&nbsp;</td>
				<td><c:out value='${item.creatorId}'/>&nbsp;</td>
				<td><c:out value='${item.userId}'/>&nbsp;</td>
				<td><c:out value='${item.status}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/pages/TactivityJoin/show.do?id=${item.id}&">查看</a>&nbsp;&nbsp;&nbsp;
					<a href="${ctx}/pages/TactivityJoin/edit.do?id=${item.id}&">修改</a>
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

