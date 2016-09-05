<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Tteam.TABLE_ALIAS%> 维护</title>
	
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
	<form id="queryForm" name="queryForm" action="<c:url value="/pages/Tteam/list.do"/>" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=Tteam.ALIAS_USER1_ID%></td>		
					<td>
						<input value="${query.user1Id}" id="user1Id" name="user1Id" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_USER2_ID%></td>		
					<td>
						<input value="${query.user2Id}" id="user2Id" name="user2Id" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_TYPE%></td>		
					<td>
						<input value="${query.type}" id="type" name="type" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_CITY_ID%></td>		
					<td>
						<input value="${query.cityId}" id="cityId" name="cityId" maxlength="19"  class="validate-integer "/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tteam.ALIAS_ADDRESS%></td>		
					<td>
						<input value="${query.address}" id="address" name="address" maxlength="100"  class=""/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_PAY_TYPE%></td>		
					<td>
						<input value="${query.payType}" id="payType" name="payType" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_FREE_TIME%></td>		
					<td>
						<input value="${query.freeTime}" id="freeTime" name="freeTime" maxlength="100"  class=""/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_HAUNT%></td>		
					<td>
						<input value="${query.haunt}" id="haunt" name="haunt" maxlength="200"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tteam.ALIAS_STATUS%></td>		
					<td>
						<input value="${query.status}" id="status" name="status" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_CREATE_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.createTimeBegin}' pattern='<%=Tteam.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Tteam.FORMAT_CREATE_TIME%>'})" id="createTimeBegin" name="createTimeBegin"   />
						<input value="<fmt:formatDate value='${query.createTimeEnd}' pattern='<%=Tteam.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=Tteam.FORMAT_CREATE_TIME%>'})" id="createTimeEnd" name="createTimeEnd"   />
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_STAR%></td>		
					<td>
						<input value="${query.star}" id="star" name="star" maxlength="12"  class="validate-number "/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_TEMP%></td>		
					<td>
						<input value="${query.temp}" id="temp" name="temp" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tteam.ALIAS_SIGNATURE%></td>		
					<td>
						<input value="${query.signature}" id="signature" name="signature" maxlength="200"  class=""/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_FREE_DAY%></td>		
					<td>
						<input value="${query.freeDay}" id="freeDay" name="freeDay" maxlength="200"  class=""/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_FOOD%></td>		
					<td>
						<input value="${query.food}" id="food" name="food" maxlength="200"  class=""/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_ALCOHOL%></td>		
					<td>
						<input value="${query.alcohol}" id="alcohol" name="alcohol" maxlength="200"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Tteam.ALIAS_TEAM_GENDER%></td>		
					<td>
						<input value="${query.teamGender}" id="teamGender" name="teamGender" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_PARTY_TIME%></td>		
					<td>
						<input value="${query.partyTime}" id="partyTime" name="partyTime" maxlength="200"  class=""/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_FEE%></td>		
					<td>
						<input value="${query.fee}" id="fee" name="fee" maxlength="200"  class=""/>
					</td>
					<td class="tdLabel"><%=Tteam.ALIAS_PAL_PURPOSE%></td>		
					<td>
						<input value="${query.palPurpose}" id="palPurpose" name="palPurpose" maxlength="200"  class=""/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/pages/Tteam/list.do'"/>
			<input type="submit" class="stdButton" style="width:80px" value="新增" onclick="getReferenceForm(this).action='${ctx}/pages/Tteam/create.do'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="batchDelete('${ctx}/pages/Tteam/delete.do','items',document.forms.queryForm)"/>
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
				<th sortColumn="user1_id" ><%=Tteam.ALIAS_USER1_ID%></th>
				<th sortColumn="user2_id" ><%=Tteam.ALIAS_USER2_ID%></th>
				<th sortColumn="type" ><%=Tteam.ALIAS_TYPE%></th>
				<th sortColumn="city_id" ><%=Tteam.ALIAS_CITY_ID%></th>
				<th sortColumn="address" ><%=Tteam.ALIAS_ADDRESS%></th>
				<th sortColumn="pay_type" ><%=Tteam.ALIAS_PAY_TYPE%></th>
				<th sortColumn="free_time" ><%=Tteam.ALIAS_FREE_TIME%></th>
				<th sortColumn="haunt" ><%=Tteam.ALIAS_HAUNT%></th>
				<th sortColumn="status" ><%=Tteam.ALIAS_STATUS%></th>
				<th sortColumn="create_time" ><%=Tteam.ALIAS_CREATE_TIME%></th>
				<th sortColumn="star" ><%=Tteam.ALIAS_STAR%></th>
				<th sortColumn="temp" ><%=Tteam.ALIAS_TEMP%></th>
				<th sortColumn="signature" ><%=Tteam.ALIAS_SIGNATURE%></th>
				<th sortColumn="free_day" ><%=Tteam.ALIAS_FREE_DAY%></th>
				<th sortColumn="food" ><%=Tteam.ALIAS_FOOD%></th>
				<th sortColumn="alcohol" ><%=Tteam.ALIAS_ALCOHOL%></th>
				<th sortColumn="team_gender" ><%=Tteam.ALIAS_TEAM_GENDER%></th>
				<th sortColumn="party_time" ><%=Tteam.ALIAS_PARTY_TIME%></th>
				<th sortColumn="fee" ><%=Tteam.ALIAS_FEE%></th>
				<th sortColumn="pal_purpose" ><%=Tteam.ALIAS_PAL_PURPOSE%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="id=${item.id}&"></td>
				
				<td><c:out value='${item.user1Id}'/>&nbsp;</td>
				<td><c:out value='${item.user2Id}'/>&nbsp;</td>
				<td><c:out value='${item.type}'/>&nbsp;</td>
				<td><c:out value='${item.cityId}'/>&nbsp;</td>
				<td><c:out value='${item.address}'/>&nbsp;</td>
				<td><c:out value='${item.payType}'/>&nbsp;</td>
				<td><c:out value='${item.freeTime}'/>&nbsp;</td>
				<td><c:out value='${item.haunt}'/>&nbsp;</td>
				<td><c:out value='${item.status}'/>&nbsp;</td>
				<td><c:out value='${item.createTimeString}'/>&nbsp;</td>
				<td><c:out value='${item.star}'/>&nbsp;</td>
				<td><c:out value='${item.temp}'/>&nbsp;</td>
				<td><c:out value='${item.signature}'/>&nbsp;</td>
				<td><c:out value='${item.freeDay}'/>&nbsp;</td>
				<td><c:out value='${item.food}'/>&nbsp;</td>
				<td><c:out value='${item.alcohol}'/>&nbsp;</td>
				<td><c:out value='${item.teamGender}'/>&nbsp;</td>
				<td><c:out value='${item.partyTime}'/>&nbsp;</td>
				<td><c:out value='${item.fee}'/>&nbsp;</td>
				<td><c:out value='${item.palPurpose}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/pages/Tteam/show.do?id=${item.id}&">查看</a>&nbsp;&nbsp;&nbsp;
					<a href="${ctx}/pages/Tteam/edit.do?id=${item.id}&">修改</a>
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

