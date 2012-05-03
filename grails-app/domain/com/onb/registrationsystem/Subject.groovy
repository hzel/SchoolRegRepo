package com.onb.registrationsystem

class Subject {
	
	String subjectID
	String name
	BigDecimal fee
	
	static belongsTo = [Section, Course]
	static hasMany = [sections : Section, courses : Course]
	
    static constraints = {
		subjectID nullable:false, blank:false, size:1..7, unique:true
		name nullable:false, blank:false
		fee nullable:false, blank:false
    }
}
