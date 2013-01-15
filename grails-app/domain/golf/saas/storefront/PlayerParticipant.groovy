package golf.saas.storefront

import org.bson.types.ObjectId

class PlayerParticipant {

	ObjectId id

	static belongsTo = Competition

	Competition competition
	ScoreCard scoreCard
	Player player

	static constraints = {
		competition(nullable:false)
		scoreCard(nullable:false)
		player(nullable:false)
	}
}
