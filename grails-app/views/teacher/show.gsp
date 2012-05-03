
<%@ page import="com.onb.registrationsystem.Teacher" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-teacher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-teacher" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list teacher">
			
				<g:if test="${teacherInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="teacher.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${teacherInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="teacher.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${teacherInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.teacherID}">
				<li class="fieldcontain">
					<span id="teacherID-label" class="property-label"><g:message code="teacher.teacherID.label" default="Teacher ID" /></span>
					
						<span class="property-value" aria-labelledby="teacherID-label"><g:fieldValue bean="${teacherInstance}" field="teacherID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="teacher.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${teacherInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="teacher.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${teacherInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="teacher.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${teacherInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="teacher.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${teacherInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="teacher.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${teacherInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="teacher.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${teacherInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.sections}">
				<li class="fieldcontain">
					<span id="sections-label" class="property-label"><g:message code="teacher.sections.label" default="Sections" /></span>
					
						<g:each in="${teacherInstance.sections}" var="s">
						<span class="property-value" aria-labelledby="sections-label"><g:link controller="section" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${teacherInstance?.id}" />
					<g:link class="edit" action="edit" id="${teacherInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
