package golf.saas.storefront

import org.bson.types.ObjectId

class GolfClub {

	ObjectId id

	static belongsTo = [account:Account]
	static hasMany = [competitions:Competition, players:Player]

	String golfClubName
	GolfCourse golfCourse

	static constraints = { golfClubName(blank:false) }
}
