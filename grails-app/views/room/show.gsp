
<%@ page import="com.onb.registrationsystem.Room" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'room.label', default: 'Room')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-room" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-room" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list room">
			
				<g:if test="${roomInstance?.roomNbr}">
				<li class="fieldcontain">
					<span id="roomNbr-label" class="property-label"><g:message code="room.roomNbr.label" default="Room Nbr" /></span>
					
						<span class="property-value" aria-labelledby="roomNbr-label"><g:fieldValue bean="${roomInstance}" field="roomNbr"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roomInstance?.building}">
				<li class="fieldcontain">
					<span id="building-label" class="property-label"><g:message code="room.building.label" default="Building" /></span>
					
						<span class="property-value" aria-labelledby="building-label"><g:fieldValue bean="${roomInstance}" field="building"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roomInstance?.section}">
				<li class="fieldcontain">
					<span id="section-label" class="property-label"><g:message code="room.section.label" default="Section" /></span>
					
						<g:each in="${roomInstance.section}" var="s">
						<span class="property-value" aria-labelledby="section-label"><g:link controller="section" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${roomInstance?.id}" />
					<g:link class="edit" action="edit" id="${roomInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
