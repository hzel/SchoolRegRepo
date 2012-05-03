<%@ page import="com.onb.registrationsystem.Section" %>



<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'sectionID', 'error')} required">
	<label for="sectionID">
		<g:message code="section.sectionID.label" default="Section ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sectionID" maxlength="10" required="" value="${sectionInstance?.sectionID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'timeslot', 'error')} required">
	<label for="timeslot">
		<g:message code="section.timeslot.label" default="Timeslot" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="timeslot" name="timeslot.id" from="${com.onb.registrationsystem.Timeslot.list()}" optionKey="id" required="" value="${sectionInstance?.timeslot?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'room', 'error')} required">
	<label for="room">
		<g:message code="section.room.label" default="Room" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="room" name="room.id" from="${com.onb.registrationsystem.Room.list()}" optionKey="id" required="" value="${sectionInstance?.room?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'schoolYear', 'error')} required">
	<label for="schoolYear">
		<g:message code="section.schoolYear.label" default="School Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="schoolYear" required="" value="${fieldValue(bean: sectionInstance, field: 'schoolYear')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'semester', 'error')} required">
	<label for="semester">
		<g:message code="section.semester.label" default="Semester" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="semester" required="" value="${sectionInstance?.semester}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'teacher', 'error')} required">
	<label for="teacher">
		<g:message code="section.teacher.label" default="Teacher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teacher" name="teacher.id" from="${com.onb.registrationsystem.Teacher.list()}" optionKey="id" required="" value="${sectionInstance?.teacher?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="section.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subject" name="subject.id" from="${com.onb.registrationsystem.Subject.list()}" optionKey="id" required="" value="${sectionInstance?.subject?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'enrollments', 'error')} ">
	<label for="enrollments">
		<g:message code="section.enrollments.label" default="Enrollments" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'maxStudents', 'error')} required">
	<label for="maxStudents">
		<g:message code="section.maxStudents.label" default="Max Students" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="maxStudents" required="" value="${fieldValue(bean: sectionInstance, field: 'maxStudents')}"/>
</div>

