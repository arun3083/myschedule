<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.inc" %>
<%@ include file="/WEB-INF/views/scheduler/submenu.inc" %>

<h1>Scheduler : ${ data.schedulerName }</h1>

<c:choose>
<c:when test="${ data.schedulerInStandbyMode }">
<p class="warning">
Scheduler has not yet started!
</p>
</c:when>
<c:otherwise>
<table class="simple datalist">
	<c:forEach items="${ data.schedulerDetail }" var="item" varStatus="status">
	<tr>
		<td> ${ item.key }</td>
		<td> ${ item.value }</td>
	</tr>
	</c:forEach>
</table>
</c:otherwise>
</c:choose>

<%@ include file="/WEB-INF/views/footer.inc" %>