
<%@ page import="com.onb.registrationsystem.Student" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-student" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list student">
			
				<g:if test="${studentInstance?.studentNumber}">
				<li class="fieldcontain">
					<span id="studentNumber-label" class="property-label"><g:message code="student.studentNumber.label" default="Student Number" /></span>
					
						<span class="property-value" aria-labelledby="studentNumber-label"><g:fieldValue bean="${studentInstance}" field="studentNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="student.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${studentInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="student.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${studentInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.level}">
				<li class="fieldcontain">
					<span id="level-label" class="property-label"><g:message code="student.level.label" default="Level" /></span>
					
						<span class="property-value" aria-labelledby="level-label"><g:fieldValue bean="${studentInstance}" field="level"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.registrationDate}">
				<li class="fieldcontain">
					<span id="registrationDate-label" class="property-label"><g:message code="student.registrationDate.label" default="Registration Date" /></span>
					
						<span class="property-value" aria-labelledby="registrationDate-label"><g:formatDate date="${studentInstance?.registrationDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${studentInstance?.id}" />
					<g:link class="edit" action="edit" id="${studentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
