<%@page import="com.quanjing.yd.model.*" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Tactivity.TABLE_ALIAS%> 维护</title>
	
	<script src="${ctx}/scripts/rest.js" ></script>
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
	<form id="queryForm" name="queryForm" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=Tactivity.ALIAS_CREATOR_ID%></td>		
					<td>
						<input value="${query.creatorId}" id="creatorId" name="creatorId" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_USER_ID%></td>		
					<td>
						<input value="${query.userId}" id="userId" name="userId" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_TEAM_ID%></td>		
					<td>
						<input value="${query.teamId}" id="teamId" name="teamId" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_TYPE%></td>		
					<td>
						<input value="${query.type}" id="type" name="type" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tactivity.ALIAS_TITLE%></td>		
					<td>
						<input value="${query.title}" id="title" name="title" maxlength="50"  class=""/>
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_INTRODUCE%></td>		
					<td>
						<input value="${query.introduce}" id="introduce" name="introduce" maxlength="300"  class=""/>
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_LINK%></td>		
					<td>
						<input value="${query.link}" id="link" name="link" maxlength="200"  class=""/>
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_CITY_ID%></td>		
					<td>
						<input value="${query.cityId}" id="cityId" name="cityId" maxlength="19"  class="validate-integer "/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tactivity.ALIAS_ADDRESS%></td>		
					<td>
						<input value="${query.address}" id="address" name="address" maxlength="100"  class=""/>
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_REQUIRE%></td>		
					<td>
						<input value="${query.require}" id="require" name="require" maxlength="400"  class=""/>
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_START_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.startTimeBegin}' pattern='<%=Tactivity.FORMAT_START_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Tactivity.FORMAT_START_TIME%>'})" id="startTimeBegin" name="startTimeBegin"   />
						<input value="<fmt:formatDate value='${query.startTimeEnd}' pattern='<%=Tactivity.FORMAT_START_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Tactivity.FORMAT_START_TIME%>'})" id="startTimeEnd" name="startTimeEnd"   />
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_CREATE_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.createTimeBegin}' pattern='<%=Tactivity.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Tactivity.FORMAT_CREATE_TIME%>'})" id="createTimeBegin" name="createTimeBegin"   />
						<input value="<fmt:formatDate value='${query.createTimeEnd}' pattern='<%=Tactivity.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Tactivity.FORMAT_CREATE_TIME%>'})" id="createTimeEnd" name="createTimeEnd"   />
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tactivity.ALIAS_END_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.endTimeBegin}' pattern='<%=Tactivity.FORMAT_END_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Tactivity.FORMAT_END_TIME%>'})" id="endTimeBegin" name="endTimeBegin"   />
						<input value="<fmt:formatDate value='${query.endTimeEnd}' pattern='<%=Tactivity.FORMAT_END_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Tactivity.FORMAT_END_TIME%>'})" id="endTimeEnd" name="endTimeEnd"   />
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_FEE%></td>		
					<td>
						<input value="${query.fee}" id="fee" name="fee" maxlength="100"  class=""/>
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_VIEW_COUNT%></td>		
					<td>
						<input value="${query.viewCount}" id="viewCount" name="viewCount" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_STATUS%></td>		
					<td>
						<input value="${query.status}" id="status" name="status" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tactivity.ALIAS_LNG%></td>		
					<td>
						<input value="${query.lng}" id="lng" name="lng" maxlength="20"  class="validate-number "/>
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_LAT%></td>		
					<td>
						<input value="${query.lat}" id="lat" name="lat" maxlength="20"  class="validate-number "/>
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_PAY_TYPE%></td>		
					<td>
						<input value="${query.payType}" id="payType" name="payType" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=Tactivity.ALIAS_GENDER%></td>		
					<td>
						<input value="${query.gender}" id="gender" name="gender" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/tactivity'"/>
			<input type="button" class="stdButton" style="width:80px" value="新增" onclick="window.location = '${ctx}/tactivity/new'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="doRestBatchDelete('${ctx}/tactivity','items',document.forms.queryForm)"/>
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
				<th sortColumn="creator_id" ><%=Tactivity.ALIAS_CREATOR_ID%></th>
				<th sortColumn="user_id" ><%=Tactivity.ALIAS_USER_ID%></th>
				<th sortColumn="team_id" ><%=Tactivity.ALIAS_TEAM_ID%></th>
				<th sortColumn="type" ><%=Tactivity.ALIAS_TYPE%></th>
				<th sortColumn="title" ><%=Tactivity.ALIAS_TITLE%></th>
				<th sortColumn="introduce" ><%=Tactivity.ALIAS_INTRODUCE%></th>
				<th sortColumn="link" ><%=Tactivity.ALIAS_LINK%></th>
				<th sortColumn="city_id" ><%=Tactivity.ALIAS_CITY_ID%></th>
				<th sortColumn="address" ><%=Tactivity.ALIAS_ADDRESS%></th>
				<th sortColumn="require" ><%=Tactivity.ALIAS_REQUIRE%></th>
				<th sortColumn="start_time" ><%=Tactivity.ALIAS_START_TIME%></th>
				<th sortColumn="create_time" ><%=Tactivity.ALIAS_CREATE_TIME%></th>
				<th sortColumn="end_time" ><%=Tactivity.ALIAS_END_TIME%></th>
				<th sortColumn="fee" ><%=Tactivity.ALIAS_FEE%></th>
				<th sortColumn="view_count" ><%=Tactivity.ALIAS_VIEW_COUNT%></th>
				<th sortColumn="status" ><%=Tactivity.ALIAS_STATUS%></th>
				<th sortColumn="lng" ><%=Tactivity.ALIAS_LNG%></th>
				<th sortColumn="lat" ><%=Tactivity.ALIAS_LAT%></th>
				<th sortColumn="pay_type" ><%=Tactivity.ALIAS_PAY_TYPE%></th>
				<th sortColumn="gender" ><%=Tactivity.ALIAS_GENDER%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="${item.id}"></td>
				
				<td><c:out value='${item.creatorId}'/>&nbsp;</td>
				<td><c:out value='${item.userId}'/>&nbsp;</td>
				<td><c:out value='${item.teamId}'/>&nbsp;</td>
				<td><c:out value='${item.type}'/>&nbsp;</td>
				<td><c:out value='${item.title}'/>&nbsp;</td>
				<td><c:out value='${item.introduce}'/>&nbsp;</td>
				<td><c:out value='${item.link}'/>&nbsp;</td>
				<td><c:out value='${item.cityId}'/>&nbsp;</td>
				<td><c:out value='${item.address}'/>&nbsp;</td>
				<td><c:out value='${item.require}'/>&nbsp;</td>
				<td><c:out value='${item.startTimeString}'/>&nbsp;</td>
				<td><c:out value='${item.createTimeString}'/>&nbsp;</td>
				<td><c:out value='${item.endTimeString}'/>&nbsp;</td>
				<td><c:out value='${item.fee}'/>&nbsp;</td>
				<td><c:out value='${item.viewCount}'/>&nbsp;</td>
				<td><c:out value='${item.status}'/>&nbsp;</td>
				<td><c:out value='${item.lng}'/>&nbsp;</td>
				<td><c:out value='${item.lat}'/>&nbsp;</td>
				<td><c:out value='${item.payType}'/>&nbsp;</td>
				<td><c:out value='${item.gender}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/tactivity/${item.id}">查看</a>&nbsp;&nbsp;
					<a href="${ctx}/tactivity/${item.id}/edit">修改</a>&nbsp;&nbsp;
					<a href="${ctx}/tactivity/${item.id}" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
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
<jsp:include page="base.jsp"/>
