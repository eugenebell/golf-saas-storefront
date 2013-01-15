package golf.saas.security

import org.bson.types.ObjectId

class SecurityRole {

	ObjectId id

	String authority

	static mapping = { cache true }

	static constraints = {
		authority blank: false, unique: true
	}
}
