<%@ page import="com.onb.registrationsystem.Room" %>



<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'roomNbr', 'error')} required">
	<label for="roomNbr">
		<g:message code="room.roomNbr.label" default="Room Nbr" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roomNbr" required="" value="${roomInstance?.roomNbr}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'building', 'error')} required">
	<label for="building">
		<g:message code="room.building.label" default="Building" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="building" required="" value="${roomInstance?.building}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'section', 'error')} ">
	<label for="section">
		<g:message code="room.section.label" default="Section" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${roomInstance?.section?}" var="s">
    <li><g:link controller="section" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="section" action="create" params="['room.id': roomInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'section.label', default: 'Section')])}</g:link>
</li>
</ul>

</div>

