<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.inc" %>
<%@ include file="/WEB-INF/views/job/submenu.inc" %>

<h1>Load Job Scheduling Data</h1>
<p class="info">Paste your xml content in the form and submit. 
See <a href="http://www.quartz-scheduler.org/xml/job_scheduling_data_1_8.xsd">job_scheduling_data schema</a> for detail.
</p>

<div class="form">
<form method="post" action="${ mainPath }/job/load-xml-action">
<textarea name="xml" cols="78" rows="10">${ data.xml }</textarea>
<br/>
<input type="submit" value="Load"></input>
</form>
</div>

<%@ include file="/WEB-INF/views/footer.inc" %>