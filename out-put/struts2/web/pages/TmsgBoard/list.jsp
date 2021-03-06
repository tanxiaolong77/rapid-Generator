<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TmsgBoard.TABLE_ALIAS%> 维护</title>
	
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
	<form id="queryForm" name="queryForm" action="<c:url value="/pages/TmsgBoard/list.do"/>" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=TmsgBoard.ALIAS_TEAM1_ID%></td>		
					<td>
						<input value="${query.team1Id}" id="team1Id" name="team1Id" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=TmsgBoard.ALIAS_TEAM2_ID%></td>		
					<td>
						<input value="${query.team2Id}" id="team2Id" name="team2Id" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=TmsgBoard.ALIAS_CONTENT%></td>		
					<td>
						<input value="${query.content}" id="content" name="content" maxlength="3000"  class=""/>
					</td>
					<td class="tdLabel"><%=TmsgBoard.ALIAS_CREATE_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.createTimeBegin}' pattern='<%=TmsgBoard.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=TmsgBoard.FORMAT_CREATE_TIME%>'})" id="createTimeBegin" name="createTimeBegin"   />
						<input value="<fmt:formatDate value='${query.createTimeEnd}' pattern='<%=TmsgBoard.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=TmsgBoard.FORMAT_CREATE_TIME%>'})" id="createTimeEnd" name="createTimeEnd"   />
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=TmsgBoard.ALIAS_CREATOR%></td>		
					<td>
						<input value="${query.creator}" id="creator" name="creator" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=TmsgBoard.ALIAS_OFFER_ID%></td>		
					<td>
						<input value="${query.offerId}" id="offerId" name="offerId" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=TmsgBoard.ALIAS_ACTIVITY_JOIN_ID%></td>		
					<td>
						<input value="${query.activityJoinId}" id="activityJoinId" name="activityJoinId" maxlength="19"  class="validate-integer "/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/pages/TmsgBoard/list.do'"/>
			<input type="submit" class="stdButton" style="width:80px" value="新增" onclick="getReferenceForm(this).action='${ctx}/pages/TmsgBoard/create.do'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="batchDelete('${ctx}/pages/TmsgBoard/delete.do','items',document.forms.queryForm)"/>
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
				<th sortColumn="team1_id" ><%=TmsgBoard.ALIAS_TEAM1_ID%></th>
				<th sortColumn="team2_id" ><%=TmsgBoard.ALIAS_TEAM2_ID%></th>
				<th sortColumn="content" ><%=TmsgBoard.ALIAS_CONTENT%></th>
				<th sortColumn="create_time" ><%=TmsgBoard.ALIAS_CREATE_TIME%></th>
				<th sortColumn="creator" ><%=TmsgBoard.ALIAS_CREATOR%></th>
				<th sortColumn="offer_id" ><%=TmsgBoard.ALIAS_OFFER_ID%></th>
				<th sortColumn="activity_join_id" ><%=TmsgBoard.ALIAS_ACTIVITY_JOIN_ID%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="id=${item.id}&"></td>
				
				<td><c:out value='${item.team1Id}'/>&nbsp;</td>
				<td><c:out value='${item.team2Id}'/>&nbsp;</td>
				<td><c:out value='${item.content}'/>&nbsp;</td>
				<td><c:out value='${item.createTimeString}'/>&nbsp;</td>
				<td><c:out value='${item.creator}'/>&nbsp;</td>
				<td><c:out value='${item.offerId}'/>&nbsp;</td>
				<td><c:out value='${item.activityJoinId}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/pages/TmsgBoard/show.do?id=${item.id}&">查看</a>&nbsp;&nbsp;&nbsp;
					<a href="${ctx}/pages/TmsgBoard/edit.do?id=${item.id}&">修改</a>
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

