<%@ page import="com.onb.registrationsystem.Subject" %>



<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'subjectID', 'error')} required">
	<label for="subjectID">
		<g:message code="subject.subjectID.label" default="Subject ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subjectID" maxlength="7" required="" value="${subjectInstance?.subjectID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="subject.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${subjectInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'fee', 'error')} required">
	<label for="fee">
		<g:message code="subject.fee.label" default="Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="fee" required="" value="${fieldValue(bean: subjectInstance, field: 'fee')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'courses', 'error')} ">
	<label for="courses">
		<g:message code="subject.courses.label" default="Courses" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'sections', 'error')} ">
	<label for="sections">
		<g:message code="subject.sections.label" default="Sections" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${subjectInstance?.sections?}" var="s">
    <li><g:link controller="section" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="section" action="create" params="['subject.id': subjectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'section.label', default: 'Section')])}</g:link>
</li>
</ul>

</div>

