
<%@ page import="com.onb.registrationsystem.Section" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'section.label', default: 'Section')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-section" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-section" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list section">
			
				<g:if test="${sectionInstance?.sectionID}">
				<li class="fieldcontain">
					<span id="sectionID-label" class="property-label"><g:message code="section.sectionID.label" default="Section ID" /></span>
					
						<span class="property-value" aria-labelledby="sectionID-label"><g:fieldValue bean="${sectionInstance}" field="sectionID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.timeslot}">
				<li class="fieldcontain">
					<span id="timeslot-label" class="property-label"><g:message code="section.timeslot.label" default="Timeslot" /></span>
					
						<span class="property-value" aria-labelledby="timeslot-label"><g:link controller="timeslot" action="show" id="${sectionInstance?.timeslot?.id}">${sectionInstance?.timeslot?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.room}">
				<li class="fieldcontain">
					<span id="room-label" class="property-label"><g:message code="section.room.label" default="Room" /></span>
					
						<span class="property-value" aria-labelledby="room-label"><g:link controller="room" action="show" id="${sectionInstance?.room?.id}">${sectionInstance?.room?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.schoolYear}">
				<li class="fieldcontain">
					<span id="schoolYear-label" class="property-label"><g:message code="section.schoolYear.label" default="School Year" /></span>
					
						<span class="property-value" aria-labelledby="schoolYear-label"><g:fieldValue bean="${sectionInstance}" field="schoolYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.semester}">
				<li class="fieldcontain">
					<span id="semester-label" class="property-label"><g:message code="section.semester.label" default="Semester" /></span>
					
						<span class="property-value" aria-labelledby="semester-label"><g:fieldValue bean="${sectionInstance}" field="semester"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.teacher}">
				<li class="fieldcontain">
					<span id="teacher-label" class="property-label"><g:message code="section.teacher.label" default="Teacher" /></span>
					
						<span class="property-value" aria-labelledby="teacher-label"><g:link controller="teacher" action="show" id="${sectionInstance?.teacher?.id}">${sectionInstance?.teacher?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="section.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:link controller="subject" action="show" id="${sectionInstance?.subject?.id}">${sectionInstance?.subject?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.enrollments}">
				<li class="fieldcontain">
					<span id="enrollments-label" class="property-label"><g:message code="section.enrollments.label" default="Enrollments" /></span>
					
						<g:each in="${sectionInstance.enrollments}" var="e">
						<span class="property-value" aria-labelledby="enrollments-label"><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.maxStudents}">
				<li class="fieldcontain">
					<span id="maxStudents-label" class="property-label"><g:message code="section.maxStudents.label" default="Max Students" /></span>
					
						<span class="property-value" aria-labelledby="maxStudents-label"><g:fieldValue bean="${sectionInstance}" field="maxStudents"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${sectionInstance?.id}" />
					<g:link class="edit" action="edit" id="${sectionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
