package golf.saas.storefront

import org.bson.types.ObjectId

class GolfRound {

	ObjectId id

	static belongsTo = [player:Player]

	Boolean inProgress
	ScoreCard scoreCard
	Date dateCreated = new Date()
	Integer shotsHole1
	Integer shotsHole2
	Integer shotsHole3
	Integer shotsHole4
	Integer shotsHole5
	Integer shotsHole6
	Integer shotsHole7
	Integer shotsHole8
	Integer shotsHole9
	Integer shotsHole10
	Integer shotsHole11
	Integer shotsHole12
	Integer shotsHole13
	Integer shotsHole14
	Integer shotsHole15
	Integer shotsHole16
	Integer shotsHole17
	Integer shotsHole18

	static constraints = {
		shotsHole1(min:1)
		shotsHole2(min:1)
		shotsHole3(min:1)
		shotsHole4(min:1)
		shotsHole5(min:1)
		shotsHole6(min:1)
		shotsHole7(min:1)
		shotsHole8(min:1)
		shotsHole9(min:1)
		shotsHole10(min:1)
		shotsHole11(min:1)
		shotsHole12(min:1)
		shotsHole13(min:1)
		shotsHole14(min:1)
		shotsHole15(min:1)
		shotsHole16(min:1)
		shotsHole17(min:1)
		shotsHole18(min:1)
		player(nullable:true)
	}
}
