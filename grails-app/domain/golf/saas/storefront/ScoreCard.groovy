package golf.saas.storefront

import org.bson.types.ObjectId

class ScoreCard {
	
	ObjectId id
	String identifier

	static belongsTo = [golfCourse: GolfCourse]

	String name	
	String teeColor
	Integer par
	Integer courseLengthYards
	byte[] courseMap
	Date dateCreated
	GolfCourseHole hole1
	GolfCourseHole hole2
	GolfCourseHole hole3
	GolfCourseHole hole4
	GolfCourseHole hole5
	GolfCourseHole hole6
	GolfCourseHole hole7
	GolfCourseHole hole8
	GolfCourseHole hole9
	GolfCourseHole hole10
	GolfCourseHole hole11
	GolfCourseHole hole12
	GolfCourseHole hole13
	GolfCourseHole hole14
	GolfCourseHole hole15
	GolfCourseHole hole16
	GolfCourseHole hole17
	GolfCourseHole hole18
	
	@Override
	public String toString() {
		return "$name - par:$par - $teeColor"
	}
	
    static constraints = {
		golfCourse(nullable:true)
		courseMap(nullable:true)
		name(blank:false)
		par(nullable:false)
		par(range:69..74)
		courseLengthYards(nullable:false)
		teeColor(inList:["White", "Blue", "Yellow", "Red", "Black"])
		hole1(nullable:true)
		hole2(nullable:true)
		hole3(nullable:true)
		hole4(nullable:true)
		hole5(nullable:true)
		hole6(nullable:true)
		hole7(nullable:true)
		hole8(nullable:true)
		hole9(nullable:true)
		hole10(nullable:true)
		hole11(nullable:true)
		hole12(nullable:true)
		hole13(nullable:true)
		hole14(nullable:true)
		hole15(nullable:true)
		hole16(nullable:true)
		hole17(nullable:true)
		hole18(nullable:true)
    }
}
