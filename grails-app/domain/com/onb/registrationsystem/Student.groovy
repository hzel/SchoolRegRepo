package com.onb.registrationsystem

import java.util.Date;

class Student extends User {
    
	// equals and hashcode - di maoverride kasi extends User
	
	String studentNumber
    String firstName
    String lastName
    int level
    Date registrationDate
	Course course

	static hasMany = [enrollments: Enrollment]

    static constraints = {
        studentNumber nullable:false, blank:false, size:1..7, unique:true
        firstName nullable:false, blank:false
        lastName nullable:false, blank:false
		level nullable:false, blank:false
		registrationDate nullable:false, blank:false
		course nullable:false, blank:false
    }

	@Override
	public String toString() {
		return "Student [studentNumber=" + studentNumber + ", firstName="
				+ firstName + ", lastName=" + lastName + "]";
	}	
	
	
	
}
