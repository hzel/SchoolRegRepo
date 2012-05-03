package com.onb.registrationsystem

class Timeslot {

	// enum days, start/end
	String days
	int start
	int end
	static belongsTo = Section
	//TODO not sure :)
	static hasMany = [section: Section]
	
    static constraints = {
		days nullable:false, blank:false
		start nullable:false, blank:false
		end nullable:false, blank:false
    }

	@Override
	public String toString() {
		return "Timeslot [days=" + days + ", start=" + start + ", end=" + end
				+ "]";
	}	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((days == null) ? 0 : days.hashCode());
		result = prime * result + end;
		result = prime * result + start;
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
		Timeslot other = (Timeslot) obj;
		if (days == null) {
			if (other.days != null)
				return false;
		} else if (!days.equals(other.days))
			return false;
		if (end != other.end)
			return false;
		if (start != other.start)
			return false;
		return true;
	}
	
}
