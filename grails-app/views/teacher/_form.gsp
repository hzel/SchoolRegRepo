<%@ page import="com.onb.registrationsystem.Teacher" %>



<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="teacher.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${teacherInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="teacher.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${teacherInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'teacherID', 'error')} required">
	<label for="teacherID">
		<g:message code="teacher.teacherID.label" default="Teacher ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="teacherID" maxlength="7" required="" value="${teacherInstance?.teacherID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="teacher.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${teacherInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="teacher.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${teacherInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="teacher.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${teacherInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="teacher.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${teacherInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="teacher.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${teacherInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="teacher.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${teacherInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'sections', 'error')} ">
	<label for="sections">
		<g:message code="teacher.sections.label" default="Sections" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${teacherInstance?.sections?}" var="s">
    <li><g:link controller="section" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="section" action="create" params="['teacher.id': teacherInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'section.label', default: 'Section')])}</g:link>
</li>
</ul>

</div>

