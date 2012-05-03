<%@ page import="com.onb.registrationsystem.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="course.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${courseInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="course.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${courseInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'studentList', 'error')} ">
	<label for="studentList">
		<g:message code="course.studentList.label" default="Student List" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.studentList?}" var="s">
    <li><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="student" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'student.label', default: 'Student')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'subjectList', 'error')} ">
	<label for="subjectList">
		<g:message code="course.subjectList.label" default="Subject List" />
		
	</label>
	<g:select name="subjectList" from="${com.onb.registrationsystem.Subject.list()}" multiple="multiple" optionKey="id" size="5" value="${courseInstance?.subjectList*.id}" class="many-to-many"/>
</div>

