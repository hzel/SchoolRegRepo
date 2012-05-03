
<%@ page import="com.onb.registrationsystem.Section" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'section.label', default: 'Section')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-section" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-section" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="sectionID" title="${message(code: 'section.sectionID.label', default: 'Section ID')}" />
					
						<th><g:message code="section.timeslot.label" default="Timeslot" /></th>
					
						<th><g:message code="section.room.label" default="Room" /></th>
					
						<g:sortableColumn property="schoolYear" title="${message(code: 'section.schoolYear.label', default: 'School Year')}" />
					
						<g:sortableColumn property="semester" title="${message(code: 'section.semester.label', default: 'Semester')}" />
					
						<th><g:message code="section.teacher.label" default="Teacher" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sectionInstanceList}" status="i" var="sectionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sectionInstance.id}">${fieldValue(bean: sectionInstance, field: "sectionID")}</g:link></td>
					
						<td>${fieldValue(bean: sectionInstance, field: "timeslot")}</td>
					
						<td>${fieldValue(bean: sectionInstance, field: "room")}</td>
					
						<td>${fieldValue(bean: sectionInstance, field: "schoolYear")}</td>
					
						<td>${fieldValue(bean: sectionInstance, field: "semester")}</td>
					
						<td>${fieldValue(bean: sectionInstance, field: "teacher")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sectionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
