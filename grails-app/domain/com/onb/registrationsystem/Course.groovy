package com.onb.registrationsystem

class Course {

	static hasMany = [studentList: Student, subjectList: Subject]
//	static belongsTo = Student
   
	String name
	String description
	
	static constraints = {
		name nullable:false, blank:false
    }

	@Override
	public String toString() {
		return "Course [name=" + name + "]";
	}	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Course other = (Course) obj;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}
	
	
}
