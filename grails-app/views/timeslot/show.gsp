
<%@ page import="com.onb.registrationsystem.Timeslot" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'timeslot.label', default: 'Timeslot')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-timeslot" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-timeslot" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list timeslot">
			
				<g:if test="${timeslotInstance?.days}">
				<li class="fieldcontain">
					<span id="days-label" class="property-label"><g:message code="timeslot.days.label" default="Days" /></span>
					
						<span class="property-value" aria-labelledby="days-label"><g:fieldValue bean="${timeslotInstance}" field="days"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeslotInstance?.start}">
				<li class="fieldcontain">
					<span id="start-label" class="property-label"><g:message code="timeslot.start.label" default="Start" /></span>
					
						<span class="property-value" aria-labelledby="start-label"><g:fieldValue bean="${timeslotInstance}" field="start"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeslotInstance?.end}">
				<li class="fieldcontain">
					<span id="end-label" class="property-label"><g:message code="timeslot.end.label" default="End" /></span>
					
						<span class="property-value" aria-labelledby="end-label"><g:fieldValue bean="${timeslotInstance}" field="end"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeslotInstance?.section}">
				<li class="fieldcontain">
					<span id="section-label" class="property-label"><g:message code="timeslot.section.label" default="Section" /></span>
					
						<g:each in="${timeslotInstance.section}" var="s">
						<span class="property-value" aria-labelledby="section-label"><g:link controller="section" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${timeslotInstance?.id}" />
					<g:link class="edit" action="edit" id="${timeslotInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
