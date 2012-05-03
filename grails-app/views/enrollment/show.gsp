
<%@ page import="com.onb.registrationsystem.Enrollment" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'enrollment.label', default: 'Enrollment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-enrollment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-enrollment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list enrollment">
			
				<g:if test="${enrollmentInstance?.enrollmentID}">
				<li class="fieldcontain">
					<span id="enrollmentID-label" class="property-label"><g:message code="enrollment.enrollmentID.label" default="Enrollment ID" /></span>
					
						<span class="property-value" aria-labelledby="enrollmentID-label"><g:fieldValue bean="${enrollmentInstance}" field="enrollmentID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.schoolYear}">
				<li class="fieldcontain">
					<span id="schoolYear-label" class="property-label"><g:message code="enrollment.schoolYear.label" default="School Year" /></span>
					
						<span class="property-value" aria-labelledby="schoolYear-label"><g:fieldValue bean="${enrollmentInstance}" field="schoolYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.semester}">
				<li class="fieldcontain">
					<span id="semester-label" class="property-label"><g:message code="enrollment.semester.label" default="Semester" /></span>
					
						<span class="property-value" aria-labelledby="semester-label"><g:fieldValue bean="${enrollmentInstance}" field="semester"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.enrollmentDate}">
				<li class="fieldcontain">
					<span id="enrollmentDate-label" class="property-label"><g:message code="enrollment.enrollmentDate.label" default="Enrollment Date" /></span>
					
						<span class="property-value" aria-labelledby="enrollmentDate-label"><g:formatDate date="${enrollmentInstance?.enrollmentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.sections}">
				<li class="fieldcontain">
					<span id="sections-label" class="property-label"><g:message code="enrollment.sections.label" default="Sections" /></span>
					
						<g:each in="${enrollmentInstance.sections}" var="s">
						<span class="property-value" aria-labelledby="sections-label"><g:link controller="section" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.totalFee}">
				<li class="fieldcontain">
					<span id="totalFee-label" class="property-label"><g:message code="enrollment.totalFee.label" default="Total Fee" /></span>
					
						<span class="property-value" aria-labelledby="totalFee-label"><g:fieldValue bean="${enrollmentInstance}" field="totalFee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.yearLevel}">
				<li class="fieldcontain">
					<span id="yearLevel-label" class="property-label"><g:message code="enrollment.yearLevel.label" default="Year Level" /></span>
					
						<span class="property-value" aria-labelledby="yearLevel-label"><g:fieldValue bean="${enrollmentInstance}" field="yearLevel"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${enrollmentInstance?.id}" />
					<g:link class="edit" action="edit" id="${enrollmentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
