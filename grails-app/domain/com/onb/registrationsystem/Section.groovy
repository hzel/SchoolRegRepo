package com.onb.registrationsystem

class Section {
	
	static belongsTo = Enrollment
	static hasMany = [enrollments: Enrollment]
	Teacher teacher
	Subject subject
	Timeslot timeslot
	Room room
	
	int maxStudents = 30
	String sectionID
	int schoolYear
	String semester
	
    static constraints = {
		sectionID nullable:false, blank:false, size:1..10, unique:true
		timeslot nullable:false, blank:false
		room nullable:false, blank:false
		schoolYear nullable:false, blank:false
		semester nullable:false, blank:false
		teacher nullable:false, blank:false
		subject nullable:false, blank:false
	}

	@Override
	public String toString() {
		return "Section [subject=" + subject + ", timeslot=" + timeslot
				+ ", sectionID=" + sectionID + "]";
	}
		
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((schoolYear == null) ? 0 : schoolYear.hashCode());
		result = prime * result
				+ ((sectionID == null) ? 0 : sectionID.hashCode());
		result = prime * result
				+ ((semester == null) ? 0 : semester.hashCode());
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (!(obj instanceof Section)) {
			return false;
		}
		Section other = (Section) obj;
		if (schoolYear == null) {
			if (other.schoolYear != null) {
				return false;
			}
		} else if (!schoolYear.equals(other.schoolYear)) {
			return false;
		}
		if (sectionID == null) {
			if (other.sectionID != null) {
				return false;
			}
		} else if (!sectionID.equals(other.sectionID)) {
			return false;
		}
		if (semester == null) {
			if (other.semester != null) {
				return false;
			}
		} else if (!semester.equals(other.semester)) {
			return false;
		}
		return true;
	}
	
	def isFull = {
		enrollments.size() == maxStudents
	}
	
	def getTimeslot = {
		timeslot
	}

	def getSubject = {
		subject
	}

	def getSemester = {
		semester
	}

	def getSchoolYear = {
		schoolYear
	}
	
	/**
	* Adds an enrollment to this section's list of enrollments
	*/
   def addEnrollee = {Enrollment enrollment ->
	   enrollments.add(enrollment)
   }

   /**
   * Checks if there is schedule conflict with another section.
   *
   * @param section
   * @return
   */
  def isConflictWith = {Section section ->
	  
	  (isSameSemester(section.getSemester()) && isSameSchoolYear(section.getSchoolYear()) && isSameTimeslot(section.getTimeslot()))
  }
  
  private def isSameTimeslot = { Timeslot ts ->
	  timeslot.equals(ts)
	  }
	
  private def isSameSemester = { def sem ->
	  semester.equals(sem)
	  }
  
  private def isSameSchoolYear = { def acadYear->
	  schoolYear.equals(acadYear)
	  }
}