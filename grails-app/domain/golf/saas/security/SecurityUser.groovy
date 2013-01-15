package golf.saas.security

import org.bson.types.ObjectId

class SecurityUser {

	ObjectId id

	transient springSecurityService

	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static constraints = {
		username blank: false, unique: true
		password blank: false
	}

	static mapping = { password column: '`password`' }

	Set<SecurityRole> getAuthorities() {
		SecurityUserSecurityRole.findAllBySecurityUser(this).collect { it.securityRole } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
