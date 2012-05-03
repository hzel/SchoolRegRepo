
<%@ page import="com.onb.registrationsystem.Timeslot" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'timeslot.label', default: 'Timeslot')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-timeslot" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-timeslot" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="days" title="${message(code: 'timeslot.days.label', default: 'Days')}" />
					
						<g:sortableColumn property="start" title="${message(code: 'timeslot.start.label', default: 'Start')}" />
					
						<g:sortableColumn property="end" title="${message(code: 'timeslot.end.label', default: 'End')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${timeslotInstanceList}" status="i" var="timeslotInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${timeslotInstance.id}">${fieldValue(bean: timeslotInstance, field: "days")}</g:link></td>
					
						<td>${fieldValue(bean: timeslotInstance, field: "start")}</td>
					
						<td>${fieldValue(bean: timeslotInstance, field: "end")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${timeslotInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
