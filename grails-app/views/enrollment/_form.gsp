<%@ page import="com.onb.registrationsystem.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'enrollmentID', 'error')} required">
	<label for="enrollmentID">
		<g:message code="enrollment.enrollmentID.label" default="Enrollment ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="enrollmentID" maxlength="10" required="" value="${enrollmentInstance?.enrollmentID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'schoolYear', 'error')} required">
	<label for="schoolYear">
		<g:message code="enrollment.schoolYear.label" default="School Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="schoolYear" required="" value="${fieldValue(bean: enrollmentInstance, field: 'schoolYear')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'semester', 'error')} required">
	<label for="semester">
		<g:message code="enrollment.semester.label" default="Semester" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="semester" required="" value="${enrollmentInstance?.semester}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'enrollmentDate', 'error')} required">
	<label for="enrollmentDate">
		<g:message code="enrollment.enrollmentDate.label" default="Enrollment Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="enrollmentDate" precision="day"  value="${enrollmentInstance?.enrollmentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'sections', 'error')} ">
	<label for="sections">
		<g:message code="enrollment.sections.label" default="Sections" />
		
	</label>
	<g:select name="sections" from="${com.onb.registrationsystem.Section.list()}" multiple="multiple" optionKey="id" size="5" value="${enrollmentInstance?.sections*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'totalFee', 'error')} required">
	<label for="totalFee">
		<g:message code="enrollment.totalFee.label" default="Total Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="totalFee" required="" value="${fieldValue(bean: enrollmentInstance, field: 'totalFee')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'yearLevel', 'error')} required">
	<label for="yearLevel">
		<g:message code="enrollment.yearLevel.label" default="Year Level" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="yearLevel" required="" value="${fieldValue(bean: enrollmentInstance, field: 'yearLevel')}"/>
</div>

