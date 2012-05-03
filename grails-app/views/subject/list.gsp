
<%@ page import="com.onb.registrationsystem.Subject" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subject.label', default: 'Subject')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-subject" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-subject" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="subjectID" title="${message(code: 'subject.subjectID.label', default: 'Subject ID')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'subject.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="fee" title="${message(code: 'subject.fee.label', default: 'Fee')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${subjectInstanceList}" status="i" var="subjectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${subjectInstance.id}">${fieldValue(bean: subjectInstance, field: "subjectID")}</g:link></td>
					
						<td>${fieldValue(bean: subjectInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: subjectInstance, field: "fee")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${subjectInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
