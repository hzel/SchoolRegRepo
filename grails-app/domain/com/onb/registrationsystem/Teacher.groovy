package com.onb.registrationsystem

class Teacher extends User {
    
	String teacherID
	String firstName
    String lastName
	
	static belongsTo = Section
	static hasMany = [sections : Section]

    static constraints = {
		teacherID nullable:false, blank:false, size:1..7, unique:true
        firstName nullable:false, blank:false
        lastName nullable:false, blank:false
    }

	@Override
	public String toString() {
		return "Teacher [teacherID=" + teacherID + ", firstName=" + firstName
				+ ", lastName=" + lastName + "]";
	}	
	
}