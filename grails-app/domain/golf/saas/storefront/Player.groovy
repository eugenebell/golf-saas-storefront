package golf.saas.storefront

import org.bson.types.ObjectId


class Player {

	ObjectId id

	static belongsTo = [golfer:Golfer, golfClub:GolfClub, golfSociety:GolfSociety]
	static hasMany = [golfRounds:GolfRound]

	String playerName
	Double handicap
	Date dateCreated = new Date()

	static constraints = { 
		playerName(blank:false)
		 }
}
