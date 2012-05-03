package com.onb.registrationsystem

class Course {

	static hasMany = [studentList: Student, subjectList: Subject]
   
	String name
	String description
	
	static constraints = {
    }
}
