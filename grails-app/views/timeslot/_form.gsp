<%@ page import="com.onb.registrationsystem.Timeslot" %>



<div class="fieldcontain ${hasErrors(bean: timeslotInstance, field: 'days', 'error')} required">
	<label for="days">
		<g:message code="timeslot.days.label" default="Days" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="days" required="" value="${timeslotInstance?.days}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: timeslotInstance, field: 'start', 'error')} required">
	<label for="start">
		<g:message code="timeslot.start.label" default="Start" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="start" required="" value="${fieldValue(bean: timeslotInstance, field: 'start')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: timeslotInstance, field: 'end', 'error')} required">
	<label for="end">
		<g:message code="timeslot.end.label" default="End" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="end" required="" value="${fieldValue(bean: timeslotInstance, field: 'end')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: timeslotInstance, field: 'section', 'error')} ">
	<label for="section">
		<g:message code="timeslot.section.label" default="Section" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${timeslotInstance?.section?}" var="s">
    <li><g:link controller="section" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="section" action="create" params="['timeslot.id': timeslotInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'section.label', default: 'Section')])}</g:link>
</li>
</ul>

</div>

