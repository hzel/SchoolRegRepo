package com.onb.registrationsystem

class Enrollment {

	static belongsTo = Student
	static hasMany = [sections: Section]
	
	Date enrollmentDate
	int schoolYear
	String semester
	BigDecimal totalFee
	
	//TODO refactor this
	def scholarshipStatus
	def miscFees
	def studentType
	int yearLevel
	String enrollmentID
	
    static constraints = {
		enrollmentID nullable:false, blank:false, size:1..10, unique:true
		schoolYear nullable:false, blank:false
		semester nullable:false, blank:false
//		totalFee nullable:false, blank:false
    }

	@Override
	public String toString() {
		return "Enrollment [enrollmentID=" + enrollmentID + "]";
	}	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((enrollmentID == null) ? 0 : enrollmentID.hashCode());
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
		Enrollment other = (Enrollment) obj;
		if (enrollmentID == null) {
			if (other.enrollmentID != null)
				return false;
		} else if (!enrollmentID.equals(other.enrollmentID))
			return false;
		return true;
	}
	
	
}