package edu.asu.bmi.greenes.users

class Role {

	String authority

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
	
	@Override
	public String toString() { authority }
}
