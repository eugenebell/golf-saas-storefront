package golf.saas.storefront

import org.bson.types.ObjectId

class GolfCourseHole {
	
	ObjectId id
	
	static optional = ['scoreCard']
	
	static belongsTo = [scoreCard:ScoreCard]
	
	String name
	Integer holeNumber
	Integer par
	Integer yards
	Integer holeIndex
	
	@Override
	public String toString() {
		return "$name - par:$par - Index:$holeIndex"
	}
	
    static constraints = {
		par(range:1..5)
		holeIndex(range:1..18)	
		holeNumber(range:1..18)
		name(blank:false)
		scoreCard(nullable:true)
    }
}
