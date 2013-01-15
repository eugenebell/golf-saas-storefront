package golf.saas.storefront

import org.bson.types.ObjectId

class GolfSociety {

	ObjectId id

	static belongsTo = [account:Account]
	static hasMany = [competitions:Competition, players:Player]

	String societyName

	static constraints = {
	}
}
