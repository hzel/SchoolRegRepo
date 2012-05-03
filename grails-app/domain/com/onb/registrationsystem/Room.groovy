package com.onb.registrationsystem

class Room {

	static belongsTo = Section
	//TODO not sure :)
	static hasMany = [section: Section]
	
	String roomNbr
	String building
	
    static constraints = {
		roomNbr nullable:false, blank:false
		building nullable:false, blank:false
    }

	@Override
	public String toString() {
		return "Room [roomNbr=" + roomNbr + ", building=" + building + "]";
	}	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((building == null) ? 0 : building.hashCode());
		result = prime * result + ((roomNbr == null) ? 0 : roomNbr.hashCode());
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
		Room other = (Room) obj;
		if (building == null) {
			if (other.building != null)
				return false;
		} else if (!building.equals(other.building))
			return false;
		if (roomNbr == null) {
			if (other.roomNbr != null)
				return false;
		} else if (!roomNbr.equals(other.roomNbr))
			return false;
		return true;
	}
	
}
