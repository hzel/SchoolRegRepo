package com.onb.registrationsystem

class Room {

	static belongsTo = Section
	//TODO not sure :)
	static hasMany = [section: Section]
	
	String roomNbr
	String building
	
    static constraints = {
    }
}
